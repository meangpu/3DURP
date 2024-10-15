@echo off
cd /d %~dp0
start /B "" pythonw -m http.server 8000 >nul 0>&1
timeout /t 0 > nul
start http://localhost:8000
exit