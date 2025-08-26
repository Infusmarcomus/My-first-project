@echo off
echo Установка Java и настройка Maven...
echo.

echo 1. Установите Java 17+ с https://adoptium.net/temurin/releases/?version=17
echo 2. После установки Java перезагрузите компьютер
echo 3. Затем запустите этот скрипт снова
echo.

echo Проверяем Java...
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ОШИБКА: Java не установлена!
    echo.
    echo Установите Java 17+ с https://adoptium.net/temurin/releases/?version=17
    echo Выберите версию для Windows x64
    echo.
    echo После установки перезагрузите компьютер и запустите скрипт снова
    pause
    exit /b 1
)

echo Java найдена!
java -version

echo.
echo Проверяем Maven...
mvn -version >nul 2>&1
if %errorlevel% neq 0 (
    echo Maven не найден в PATH, но у нас есть Maven wrapper
    echo.
    echo Попробуем запустить проект через Maven wrapper...
    echo.
    echo Сборка проекта...
    .\mvnw.cmd clean compile
    if %errorlevel% neq 0 (
        echo Ошибка сборки. Проверьте, что Java установлена правильно.
        pause
        exit /b 1
    )
    
    echo.
    echo Сборка успешна! Запускаем приложение...
    .\mvnw.cmd spring-boot:run
) else (
    echo Maven найден!
    mvn -version
    echo.
    echo Сборка проекта...
    mvn clean compile
    if %errorlevel% neq 0 (
        echo Ошибка сборки. Проверьте, что Java установлена правильно.
        pause
        exit /b 1
    )
    
    echo.
    echo Сборка успешна! Запускаем приложение...
    mvn spring-boot:run
)

echo.
echo Приложение запущено! Откройте http://localhost:8080 в браузере
pause






