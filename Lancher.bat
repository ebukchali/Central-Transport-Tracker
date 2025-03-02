@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Uruchamianie jako administrator...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
    exit /b
)

::Wpisz w win + r shell:startup i kliknij enter, po czym skopiuj ścieżke do folderu auto start
cd "Ścieżka do autostartu"

start "" "Central Transport Tracker.exe"