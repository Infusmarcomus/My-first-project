@echo off
echo Opening EventFlow project in IntelliJ IDEA...

REM Try to find IntelliJ IDEA
set IDEA_PATH="C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2025.1.3\bin\idea64.exe"

if exist %IDEA_PATH% (
    echo Found IntelliJ IDEA at: %IDEA_PATH%
    echo Opening project...
    %IDEA_PATH% .
) else (
    echo IntelliJ IDEA not found at expected location.
    echo Please open the project manually in your IDE.
    echo.
    echo Instructions:
    echo 1. Open IntelliJ IDEA
    echo 2. Open project: C:\Users\niopo\IdeaProjects\EventRadar
    echo 3. Wait for Maven to download dependencies
    echo 4. Run EventRadarApplication.java
)

echo.
echo Press any key to continue...
pause >nul


