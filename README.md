# OneSurvey Docs Local Setup

## Branch model

- `main`: source of truth (Markdown + `mkdocs.yml`)
- `gh-pages`: generated static site for GitHub Pages deploys

You should do all editing and local preview work on `main`.

## First-time setup (Windows PowerShell)

```powershell
py -m venv .venv
.\.venv\Scripts\python -m pip install --upgrade pip
.\.venv\Scripts\python -m pip install -r requirements.txt
```

## Run locally

```powershell
.\serve.cmd
```

Open `http://127.0.0.1:8000`.

If you want a different port:

```powershell
.\serve.cmd 8001
```

## Build locally

```powershell
.\build.cmd
```

## Deploy to GitHub Pages (updates `gh-pages`)

```powershell
.\deploy-gh-pages.cmd
```

This deploy command runs from `main` and publishes generated output to `gh-pages`, so you do not need to manually switch branches for normal work.

## Auto-deploy on push

This repo includes `.github/workflows/deploy-docs.yml`, which deploys to `gh-pages` automatically whenever `main` is pushed.
