@echo off
title Extracted 130-Frame Scroll Preview Server
cd /d "%~dp0"

echo ========================================================
echo   Extracted 130-Frame Scroll Preview (Start Running)
echo ========================================================
echo.

:: Try Python server on port 8095
python --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Python detected. Starting local server at http://localhost:8095
    echo Opening Chrome to http://localhost:8095/extracted_scroll.html ...
    start http://localhost:8095/extracted_scroll.html
    echo.
    echo Press Ctrl+C in this window whenever you want to stop the server.
    python -m http.server 8095
    goto :end
)

:: Try npx serve on port 8095
npx --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Node detected. Starting local server at http://localhost:8095
    echo Opening Chrome to http://localhost:8095/extracted_scroll.html ...
    start http://localhost:8095/extracted_scroll.html
    echo.
    echo Press Ctrl+C in this window whenever you want to stop the server.
    npx -y serve -l 8095 .
    goto :end
)

:: Direct browser fallback
echo [Notice] Opening extracted_scroll.html directly in Chrome...
start chrome "%~dp0extracted_scroll.html" 2>nul || start msedge "%~dp0extracted_scroll.html" 2>nul || explorer "%~dp0extracted_scroll.html"

:end
pause
