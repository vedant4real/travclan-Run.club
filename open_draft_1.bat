@echo off
cd /d "%~dp0"
echo Opening Draft 1 (Apple Frame Scrub) in your browser...
start chrome "%~dp0draft1_frame_scrub.html" 2>nul || start msedge "%~dp0draft1_frame_scrub.html" 2>nul || explorer "%~dp0draft1_frame_scrub.html"
