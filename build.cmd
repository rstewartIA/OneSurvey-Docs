@echo off
setlocal
set PYTHONUTF8=1

if not exist ".venv\Scripts\python.exe" (
  echo Virtual environment not found.
  echo Run: py -m venv .venv ^&^& .\.venv\Scripts\python -m pip install -r requirements.txt
  exit /b 1
)

".venv\Scripts\python.exe" -m mkdocs build --strict
