@echo off
title Runner 24fps Scroll Preview Server
cd /d "%~dp0"

echo ========================================================
echo   Runner 24fps Scroll Animation (Standalone Preview)
echo ========================================================
echo.

:: Try Python server on port 8088 (separate from any other port)
python --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Python detected. Starting local server at http://localhost:8088
    echo Opening Chrome / default browser to http://localhost:8088/runner_scroll.html ...
    start http://localhost:8088/runner_scroll.html
    echo.
    echo Press Ctrl+C in this window whenever you want to stop the server.
    python -m http.server 8088
    goto :end
)

:: Try npx serve on port 8088
npx --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Node detected. Starting local server at http://localhost:8088
    echo Opening Chrome / default browser to http://localhost:8088/runner_scroll.html ...
    start http://localhost:8088/runner_scroll.html
    echo.
    echo Press Ctrl+C in this window whenever you want to stop the server.
    npx -y serve -l 8088 .
    goto :end
)

:: Direct fallback
echo [Notice] Opening runner_scroll.html directly in Chrome...
start chrome "%~dp0runner_scroll.html" 2>nul || start msedge "%~dp0runner_scroll.html" 2>nul || explorer "%~dp0runner_scroll.html"

:end
pause
