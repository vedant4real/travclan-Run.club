@echo off
title Run Club - Master Preview Server (Port 8095)
cd /d "%~dp0"

echo ========================================================
echo   Run Club Delhi (CP) - Master Landing Page
echo ========================================================
echo.
echo Launching local server at http://localhost:8095/index.html ...
echo (The real runner track animation is wired on the right!)
echo.

:: Try Python server on port 8095 (fastest & most reliable)
python --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Python detected. Starting local server...
    start http://localhost:8095/index.html
    echo Server running at http://localhost:8095
    echo Press Ctrl+C in this window whenever you want to stop.
    python -m http.server 8095
    goto :end
)

:: Try npx serve on port 8095
npx --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Node detected. Starting local server...
    start http://localhost:8095/index.html
    echo Server running at http://localhost:8095
    echo Press Ctrl+C in this window whenever you want to stop.
    npx -y serve -l 8095 .
    goto :end
)

:: Direct fallback
echo [Notice] Opening directly in browser...
start chrome "%~dp0index.html" 2>nul || start msedge "%~dp0index.html" 2>nul || explorer "%~dp0index.html"

:end
pause
