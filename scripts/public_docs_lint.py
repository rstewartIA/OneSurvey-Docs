#!/usr/bin/env python3
"""
Public docs linter.

Checks:
1) End-user boundary terms in docs/**/*.md
2) Required metadata for nav article pages (non-index docs pages)
"""

from __future__ import annotations

import re
from datetime import datetime
from pathlib import Path

import yaml


ROOT = Path(__file__).resolve().parents[1]
DOCS_DIR = ROOT / "docs"
MKDOCS_FILE = ROOT / "mkdocs.yml"

DOC_ID_PATTERN = re.compile(r"^HC-(START|SITES|SURV|MOB|ORG|HELP)-\d{3}$")
DATE_PATTERN = re.compile(r"^\d{4}-\d{2}-\d{2}$")
FRONTMATTER_PATTERN = re.compile(r"^---\r?\n(.*?)\r?\n---\r?\n", re.DOTALL)

# Keep this list focused on clearly internal/super-admin/implementation terms.
PATTERNS: list[tuple[re.Pattern[str], str]] = [
    (re.compile(r"\bai-center\b", re.IGNORECASE), "super-admin route: ai-center"),
    (re.compile(r"\borganization-list\b", re.IGNORECASE), "super-admin route: organization-list"),
    (re.compile(r"\bmass-upload\b", re.IGNORECASE), "super-admin route: mass-upload"),
    (re.compile(r"/api/", re.IGNORECASE), "backend endpoint reference"),
    (re.compile(r"\bviewset\b", re.IGNORECASE), "backend implementation term: viewset"),
    (re.compile(r"\bserializer\b", re.IGNORECASE), "backend implementation term: serializer"),
    (re.compile(r"\bjwt\b", re.IGNORECASE), "authentication implementation detail: JWT"),
    (re.compile(r"\btoken\s+refresh\b", re.IGNORECASE), "authentication implementation detail: token refresh"),
    (re.compile(r"\bsoc\s*2\s*control\b", re.IGNORECASE), "internal compliance control language"),
    (re.compile(r"\brunbook\b", re.IGNORECASE), "internal operations term: runbook"),
]


class MkDocsLoader(yaml.SafeLoader):
    """Allows parsing mkdocs.yml !ENV tags in lint context."""


def _construct_env(loader: yaml.Loader, node: yaml.Node) -> str:
    sequence = loader.construct_sequence(node)
    if isinstance(sequence, list) and len(sequence) >= 2:
        return str(sequence[1])
    return ""


MkDocsLoader.add_constructor("!ENV", _construct_env)


def lint_internal_terms(path: Path) -> list[str]:
    issues: list[str] = []
    lines = path.read_text(encoding="utf-8-sig").splitlines()
    rel = path.relative_to(ROOT)

    for line_no, line in enumerate(lines, start=1):
        for pattern, reason in PATTERNS:
            if pattern.search(line):
                issues.append(f"{rel}:{line_no}: {reason} -> {line.strip()}")

    return issues


def _collect_nav_entries(node: object, section: str | None = None) -> list[tuple[str | None, str]]:
    entries: list[tuple[str | None, str]] = []
    if isinstance(node, list):
        for item in node:
            entries.extend(_collect_nav_entries(item, section))
    elif isinstance(node, dict):
        for key, value in node.items():
            if isinstance(value, str):
                entries.append((section, value))
            else:
                entries.extend(_collect_nav_entries(value, key))
    return entries


def load_article_nav_entries() -> list[tuple[str, Path]]:
    if not MKDOCS_FILE.exists():
        return []

    config = yaml.load(MKDOCS_FILE.read_text(encoding="utf-8"), Loader=MkDocsLoader) or {}
    raw_entries = _collect_nav_entries(config.get("nav", []))
    article_entries: list[tuple[str, Path]] = []

    for section, rel_path in raw_entries:
        if not section:
            continue
        if rel_path == "index.md" or rel_path.endswith("/index.md"):
            continue
        article_entries.append((section, DOCS_DIR / rel_path))

    return article_entries


def parse_frontmatter(md_path: Path) -> dict[str, object] | None:
    text = md_path.read_text(encoding="utf-8-sig")
    match = FRONTMATTER_PATTERN.match(text)
    if not match:
        return None
    data = yaml.safe_load(match.group(1))
    return data if isinstance(data, dict) else {}


def is_valid_date(value: str) -> bool:
    if not DATE_PATTERN.match(value):
        return False
    try:
        datetime.strptime(value, "%Y-%m-%d")
        return True
    except ValueError:
        return False


def lint_article_metadata(article_entries: list[tuple[str, Path]]) -> list[str]:
    issues: list[str] = []
    seen_doc_ids: dict[str, Path] = {}

    for _, md_path in article_entries:
        rel = md_path.relative_to(ROOT)
        if not md_path.exists():
            issues.append(f"{rel}: nav references a missing article file")
            continue

        meta = parse_frontmatter(md_path)
        if meta is None:
            issues.append(f"{rel}: missing frontmatter with required keys: doc_id, doc_owner")
            continue

        doc_id = str(meta.get("doc_id", "")).strip()
        doc_owner = str(meta.get("doc_owner", "")).strip()
        last_reviewed = meta.get("last_reviewed")

        if not doc_id:
            issues.append(f"{rel}: missing required metadata key: doc_id")
        elif not DOC_ID_PATTERN.match(doc_id):
            issues.append(f"{rel}: invalid doc_id '{doc_id}' (expected HC-(START|SITES|SURV|MOB|ORG|HELP)-###)")
        else:
            prev = seen_doc_ids.get(doc_id)
            if prev:
                prev_rel = prev.relative_to(ROOT)
                issues.append(f"{rel}: duplicate doc_id '{doc_id}' (already used in {prev_rel})")
            else:
                seen_doc_ids[doc_id] = md_path

        if not doc_owner:
            issues.append(f"{rel}: missing required metadata key: doc_owner")

        if last_reviewed is not None:
            last_reviewed_value = str(last_reviewed).strip()
            if not is_valid_date(last_reviewed_value):
                issues.append(f"{rel}: invalid last_reviewed '{last_reviewed_value}' (expected YYYY-MM-DD)")

    return issues


def main() -> int:
    if not DOCS_DIR.exists():
        print(f"ERROR: docs directory not found at {DOCS_DIR}")
        return 2

    all_issues: list[str] = []
    for md_path in sorted(DOCS_DIR.rglob("*.md")):
        all_issues.extend(lint_internal_terms(md_path))

    article_entries = load_article_nav_entries()
    if not article_entries:
        all_issues.append("mkdocs.yml: unable to load article nav entries for metadata lint")
    else:
        all_issues.extend(lint_article_metadata(article_entries))

    if all_issues:
        print("Public docs lint failed:")
        for issue in all_issues:
            print(f"  - {issue}")
        return 1

    print("Public docs lint passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
