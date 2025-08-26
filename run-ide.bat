@echo off
echo EventRadar - Запуск через IDE
echo.

echo Для запуска приложения:
echo.
echo 1. Откройте проект в IntelliJ IDEA
echo 2. Найдите файл: src/main/java/com/eventradar/EventRadarApplication.java
echo 3. Нажмите зеленую кнопку "Run" рядом с методом main()
echo.
echo Или используйте сочетание клавиш: Shift + F10
echo.

echo После запуска приложение будет доступно по адресу:
echo http://localhost:8080
echo.

echo Нажмите любую клавишу для открытия проекта в IDEA...
pause >nul

REM Открываем проект в IDEA
start "" "C:\Users\%USERNAME%\IdeaProjects\EventRadar"

echo.
echo Проект открыт в IntelliJ IDEA!
echo Теперь запустите EventRadarApplication.java
echo.

echo Если у вас нет Java 17+, установите её с:
echo https://adoptium.net/temurin/releases/?version=17
echo.

pause






