@echo off
setlocal enabledelayedexpansion

:: Menentukan direktori output
set targetdir=bin

:: Menjalankan simulasi DTN dengan classpath yang benar
java -Xmx512M -cp "%targetdir%;lib/*" core.DTNSim %*

pause
