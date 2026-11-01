@echo off
title Run Club - Master Landing Page Server (Port 8095)
cd /d "%~dp0"

echo ========================================================
echo   Run Club Delhi (CP) - Master Landing Page Server
echo ========================================================
echo.

:: Try Python server on port 8095
python --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Python detected. Starting local server at http://localhost:8095 ...
    start http://localhost:8095/index.html
    echo.
    echo Press Ctrl+C in this window whenever you want to stop the server.
    python -m http.server 8095
    goto :end
)

:: Try npx serve on port 8095
npx --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Node detected. Starting local server at http://localhost:8095 ...
    start http://localhost:8095/index.html
    echo.
    echo Press Ctrl+C in this window whenever you want to stop the server.
    npx -y serve -l 8095 .
    goto :end
)

:: Direct browser fallback
echo [Notice] Opening index.html directly in browser...
start chrome "%~dp0index.html" 2>nul || start msedge "%~dp0index.html" 2>nul || explorer "%~dp0index.html"

:end
pause
