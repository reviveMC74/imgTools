@echo off

set BAT_DIR=%~dp0
cd /D "%BAT_DIR%"

set DEST_BASE=%~dpn1
set DEST_CLASS=%DEST_BASE%.class
set DEST_DEX=%DEST_BASE%.dex
set DEST_SMALI=%DEST_BASE%.smali

set JAVA_VER=1.6

set SRC_DIR=%~dp1
set SRC_PATH=%1

rem Compile to *.class
javac -cp %3 -target "%JAVA_VER%" -source "%JAVA_VER%" "%SRC_PATH%"
if not exist "%DEST_CLASS%" goto :finish

rem Assemble to *.dex
cd /d "%SRC_DIR%"
for %%A in ("%DEST_CLASS%") do (
    java -Djava.ext.dirs="%BAT_DIR%dx" -jar "%BAT_DIR%dx.jar" --dex --output="%DEST_DEX%" "%%~nxA"
)
if not exist "%DEST_DEX%" goto :finish

rem Dis-assemble to *.smali
java -jar "%BAT_DIR%baksmali.jar" d "%DEST_DEX%" -o "%2"
if not exist "%DEST_SMALI%" goto :finish

:finish
if exist "%DEST_CLASS%" del /F "%DEST_CLASS%" >nul 2>&1
if exist "%DEST_DEX%" del /F "%DEST_DEX%" >nul 2>&1
