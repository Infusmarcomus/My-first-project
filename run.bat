@echo off
echo EventRadar - Запуск приложения
echo.

REM Проверяем наличие Java
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ОШИБКА: Java не установлена!
    echo Установите Java 17+ с https://adoptium.net/
    pause
    exit /b 1
)

echo Java найдена. Проверяем версию...
java -version

echo.
echo Сборка проекта...
echo Если у вас установлен Maven, используйте: mvn spring-boot:run
echo Или запустите через IDE: EventRadarApplication.java
echo.

echo Для запуска через IDE:
echo 1. Откройте проект в IntelliJ IDEA
echo 2. Найдите файл src/main/java/com/eventradar/EventRadarApplication.java
echo 3. Нажмите зеленую кнопку "Run" рядом с методом main()
echo.

echo После запуска приложение будет доступно по адресу:
echo http://localhost:8080
echo.

pause



