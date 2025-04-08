@echo off
setlocal enabledelayedexpansion

:: Menentukan direktori output
set targetdir=bin

:: Membuat folder bin jika belum ada
IF NOT EXIST "%targetdir%" mkdir "%targetdir%"

:: Compile semua file Java dengan classpath ke lib/*
javac -sourcepath . -d "%targetdir%" -cp "lib/*" core/*.java movement/*.java report/*.java routing/*.java gui/*.java input/*.java applications/*.java interfaces/*.java

:: Selesai
echo Compilation completed!
pause
