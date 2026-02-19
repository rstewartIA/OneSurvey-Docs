@echo off
setlocal
set PYTHONUTF8=1

if not exist ".venv\Scripts\python.exe" (
  echo Virtual environment not found.
  echo Run: py -m venv .venv ^&^& .\.venv\Scripts\python -m pip install -r requirements.txt
  exit /b 1
)

for /f %%i in ('git rev-parse --abbrev-ref HEAD') do set CURRENT_BRANCH=%%i
if /I not "%CURRENT_BRANCH%"=="main" (
  echo Deploy from main branch only. Current branch: %CURRENT_BRANCH%
  exit /b 1
)

".venv\Scripts\python.exe" -m mkdocs gh-deploy --clean --remote-name origin --remote-branch gh-pages
