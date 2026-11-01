@echo off
cd /d "%~dp0"
echo Opening Draft 2 (Kinetic Neon Route) in your browser...
start chrome "%~dp0draft2_kinetic_route.html" 2>nul || start msedge "%~dp0draft2_kinetic_route.html" 2>nul || explorer "%~dp0draft2_kinetic_route.html"
