@echo off
echo Запуск EventRadar через IntelliJ IDEA...
echo.

echo Открываем проект в IDEA...
start "" "C:\Users\%USERNAME%\IdeaProjects\EventRadar"

echo.
echo Инструкция:
echo 1. В IntelliJ IDEA найдите файл: src/main/java/com/eventradar/EventRadarApplication.java
echo 2. Нажмите зеленую кнопку "Run" рядом с методом main()
echo 3. Или используйте Shift + F10
echo.
echo После запуска откройте: http://localhost:8080
echo.

pause
