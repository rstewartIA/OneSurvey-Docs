#!/usr/bin/env python3
"""
Public docs boundary linter.

Scans docs/**/*.md for internal-only terms and implementation details that
should not appear in end-user facing documentation.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DOCS_DIR = ROOT / "docs"

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


def lint_file(path: Path) -> list[str]:
    issues: list[str] = []
    # Use utf-8-sig so BOM-prefixed files don't inject U+FEFF into line text.
    lines = path.read_text(encoding="utf-8-sig").splitlines()
    rel = path.relative_to(ROOT)

    for line_no, line in enumerate(lines, start=1):
        for pattern, reason in PATTERNS:
            if pattern.search(line):
                issues.append(f"{rel}:{line_no}: {reason} -> {line.strip()}")

    return issues


def main() -> int:
    if not DOCS_DIR.exists():
        print(f"ERROR: docs directory not found at {DOCS_DIR}")
        return 2

    all_issues: list[str] = []
    for md_path in sorted(DOCS_DIR.rglob("*.md")):
        all_issues.extend(lint_file(md_path))

    if all_issues:
        print("Public docs boundary lint failed:")
        for issue in all_issues:
            print(f"  - {issue}")
        return 1

    print("Public docs boundary lint passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
