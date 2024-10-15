@echo off
REM Change to the directory containing this batch file
cd /d %~dp0

REM Start Python HTTP server without showing a window
start /B "" pythonw -m http.server 8000 >nul 2>&1

REM Wait for a moment to ensure the server has started
timeout /t 2 > nul

REM Open the default browser to localhost:8000
start http://localhost:8000

REM Exit the batch file
exit