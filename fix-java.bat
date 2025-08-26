@echo off
echo Исправление проблем с Java...
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
echo Очищаем проект...
mvn clean

echo.
echo Загружаем зависимости заново...
mvn dependency:resolve

echo.
echo Собираем проект...
mvn compile

echo.
echo Если сборка успешна, запускаем приложение...
mvn spring-boot:run

echo.
echo Готово! Откройте http://localhost:8080 в браузере
pause
