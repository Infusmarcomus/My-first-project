@echo off
echo Starting EventFlow application...

set JAVA_HOME=C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2025.1.3\jbr
set PATH=%JAVA_HOME%\bin;%PATH%

echo Java version:
java -version

echo.
echo Starting application...
echo.

REM Try to run the main class directly
java -cp "target/classes;target/dependency/*" com.eventradar.EventRadarApplication

echo.
echo Application finished.
pause

