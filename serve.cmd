@echo off
setlocal
set PYTHONUTF8=1
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
  echo [ERROR] Virtual environment not found in %cd%\.venv
  echo [FIX] Run: py -m venv .venv ^&^& .\.venv\Scripts\python -m pip install -r requirements.txt
  exit /b 1
)

set PORT=8000
netstat -ano | findstr /C:":%PORT%" >nul
if %errorlevel%==0 (
  set PORT=8001
  netstat -ano | findstr /C:":%PORT%" >nul
  if %errorlevel%==0 (
    echo [ERROR] Ports 8000 and 8001 are both in use.
    echo [FIX] Stop one of those processes and run this command again.
    exit /b 1
  )
  echo [WARN] Port 8000 is in use. Falling back to %PORT%.
)

set MKDOCS_SITE_URL=http://127.0.0.1:%PORT%/
echo [INFO] Starting docs server from %cd%
echo [INFO] URL: http://127.0.0.1:%PORT%/
echo [INFO] Press Ctrl+C to stop.
".venv\Scripts\python.exe" -m mkdocs serve --dev-addr 127.0.0.1:%PORT%
