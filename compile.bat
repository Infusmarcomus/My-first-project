@echo off
echo Setting up Java environment...

set JAVA_HOME=C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2025.1.3\jbr
set PATH=%JAVA_HOME%\bin;%PATH%

echo Java version:
java -version

echo.
echo Compiling project...
echo.

REM Try to use Maven if available
where mvn >nul 2>&1
if %errorlevel% == 0 (
    echo Using Maven...
    mvn clean compile
) else (
    echo Maven not found, trying to use Maven wrapper...
    if exist "mvnw.cmd" (
        mvnw.cmd clean compile
    ) else (
        echo No Maven found. Please install Maven or use IDE to compile.
        pause
    )
)

echo.
echo Compilation finished.
pause





