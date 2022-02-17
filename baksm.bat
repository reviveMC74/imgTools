@echo off
set PATH=%CD%;%PATH%;
if %1==baksmali (
java -Xmx1024m -jar "%~dp0\baksmali.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==dx (
java -Xmx1024m -jar "%~dp0\dx-1.14.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==oat2dex (
java -Xmx1024m -jar "%~dp0\oat2dex.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==smali (
java -Xmx1024m -jar "%~dp0\smali.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==sign (
java -Xmx512m -jar "%~dp0\sign.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==signapk (
java -Xmx512m -jar "%~dp0\signapk.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==antilvl (
java -Xmx512m -jar "%~dp0\antilvl.jar" -f %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==cfr (
java -Xmx512m -jar "%~dp0\cfr.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==dexpatcher (
java -Xmx512m -jar "%~dp0\dexpatcher.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==bootsigner (
java -Xmx512m -jar "%~dp0\BootSignature.jar" %2 %3 %4 %5 %6 %7 %8 %9
goto end
)
if %1==renameapk (
"%~dp0fart.exe" "%2" ">%3</string>" ">%4</string>"
rem "%~dp0fart.exe" "%2" "%3" "%4"
goto end
)
:end
