@echo off
title Library Installation

where python >nul 2>nul
if %errorlevel% neq 0 (
    echo [EN] Python is not installed or not added to PATH
    echo.
    echo [EN] Please install Python and make sure to check "Add Python to PATH" during installation.
    echo.
    echo [EN/RU] Download here: https://www.python.org/downloads/release/python-3120/
    echo.
    pause
    exit /b
)

where pip >nul 2>nul
if %errorlevel% neq 0 (
    echo [EN] Python is not installed or not added to PATH..
    echo.
    echo [EN/RU] Try reinstalling Python and make sure "Add Python to PATH" is selected.
    echo.
    pause
    exit /b
)

echo [EN] Installing required libraries...
echo.
pip install -r requirements.txt
echo.

echo [EN] Installation done
echo.

echo [EN] Now open config.py in Notepad and configure it for your needs.
echo.
echo.

pause
