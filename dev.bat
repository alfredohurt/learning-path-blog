@echo off
REM Build Tailwind CSS
echo Building Tailwind CSS...
call rails tailwindcss:build

REM Start the Rails server
echo Starting Rails server...
call rails server

pause