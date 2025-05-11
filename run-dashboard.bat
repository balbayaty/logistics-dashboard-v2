@echo off
echo Starting Logistics Dashboard...
echo.
echo Please wait while we check for Python...

where python >nul 2>nul
if %errorlevel% equ 0 (
  echo Python found! Starting server...
  echo.
  echo Dashboard will be available at: http://localhost:8000
  echo.
  echo Press Ctrl+C to stop the server when finished.
  echo.
  python -m http.server
) else (
  echo Python not found. Opening dashboard directly in browser...
  start index.html
)

pause 