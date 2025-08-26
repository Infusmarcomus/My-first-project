@echo off
echo Исправление зависимостей Spring Boot...
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
echo Очищаем кэш Maven...
if exist "%USERPROFILE%\.m2\repository" (
    echo Удаляем старый кэш...
    rmdir /s /q "%USERPROFILE%\.m2\repository"
)

echo.
echo Загружаем зависимости заново...
mvn dependency:resolve

echo.
echo Собираем проект...
mvn clean compile

echo.
echo Если сборка успешна, запускаем приложение...
mvn spring-boot:run

echo.
echo Готово! Откройте http://localhost:8080 в браузере
pause






