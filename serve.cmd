@echo off
setlocal
set PYTHONUTF8=1
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
  echo [ERROR] Virtual environment not found in %cd%\.venv
  echo [FIX] Run: py -m venv .venv ^&^& .\.venv\Scripts\python -m pip install -r requirements.txt
  exit /b 1
)

set "PORT=%~1"
if "%PORT%"=="" set "PORT=8000"

for /f %%C in ('powershell -NoProfile -Command "$procs = Get-CimInstance Win32_Process | Where-Object { $_.Name -eq 'python.exe' -and $_.CommandLine -match 'mkdocs\\s+serve' -and $_.CommandLine -match ('127\\.0\\.0\\.1:' + '%PORT%') }; $count = @($procs).Count; if ($count -gt 0) { $procs | ForEach-Object { Stop-Process -Id $_.ProcessId -Force } }; Write-Output $count"') do set "STOPPED=%%C"
if not "%STOPPED%"=="" if not "%STOPPED%"=="0" (
  echo [INFO] Stopped %STOPPED% stale MkDocs process^(es^) on port %PORT%.
)

set "PORT_PID="
for /f %%P in ('powershell -NoProfile -Command "$ownerPid = Get-NetTCPConnection -State Listen -LocalPort %PORT% -ErrorAction SilentlyContinue | Select-Object -First 1 -ExpandProperty OwningProcess; if ($ownerPid) { Write-Output $ownerPid }"') do set "PORT_PID=%%P"

if not "%PORT_PID%"=="" (
  set "PORT_CMD="
  for /f "usebackq delims=" %%L in (`powershell -NoProfile -Command "(Get-CimInstance Win32_Process | Where-Object { $_.ProcessId -eq %PORT_PID% } | Select-Object -ExpandProperty CommandLine)"`) do set "PORT_CMD=%%L"
  echo [ERROR] Port %PORT% is already in use by PID %PORT_PID%.
  if not "%PORT_CMD%"=="" echo [INFO] Process: %PORT_CMD%
  echo [FIX] Stop that process or run: %~nx0 8001
  exit /b 1
)

set "MKDOCS_SITE_URL=http://127.0.0.1:%PORT%/"
echo [INFO] Starting docs server from %cd%
echo [INFO] URL: http://127.0.0.1:%PORT%/
echo [INFO] Press Ctrl+C to stop.
".venv\Scripts\python.exe" -m mkdocs serve --dev-addr 127.0.0.1:%PORT%
