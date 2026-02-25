@echo off
setlocal enabledelayedexpansion

set "PORT=%~1"
if "%PORT%"=="" set "PORT=4173"

set "HOST=%HOST%"
if "%HOST%"=="" set "HOST=127.0.0.1"

where python >nul 2>nul
if errorlevel 1 (
  where py >nul 2>nul
  if errorlevel 1 (
    echo Error: Python is required but was not found in PATH.
    exit /b 1
  ) else (
    set "PY_CMD=py"
  )
) else (
  set "PY_CMD=python"
)

echo Starting Dundas Valley Pools site...
echo URL: http://%HOST%:%PORT%
echo Press Ctrl+C to stop.

%PY_CMD% -m http.server %PORT% --bind %HOST%
