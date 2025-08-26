@echo off
echo Запуск EventRadar приложения...
echo.

REM Настраиваем переменные окружения
set JAVA_HOME=C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2025.1.3\jbr
set PATH=%JAVA_HOME%\bin;C:\Program Files\apache-maven-3.9.11\bin;%PATH%

echo Проверяем Java...
java -version
if %errorlevel% neq 0 (
    echo ОШИБКА: Java не найдена!
    pause
    exit /b 1
)

echo.
echo Проверяем Maven...
mvn -version
if %errorlevel% neq 0 (
    echo ОШИБКА: Maven не найден!
    pause
    exit /b 1
)

echo.
echo Загружаем зависимости...
mvn dependency:resolve

echo.
echo Собираем проект...
mvn clean compile

echo.
echo Запускаем приложение...
mvn spring-boot:run

echo.
echo Приложение запущено! Откройте http://localhost:8080 в браузере
pause






