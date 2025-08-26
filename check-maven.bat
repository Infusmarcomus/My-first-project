@echo off
echo Проверка установки Maven...
echo.

echo Проверяем Java...
java -version
if %errorlevel% neq 0 (
    echo ОШИБКА: Java не установлена!
    echo Установите Java 17+ с https://adoptium.net/
    pause
    exit /b 1
)

echo.
echo Проверяем Maven...
mvn -version
if %errorlevel% neq 0 (
    echo ОШИБКА: Maven не найден!
    echo Установите Maven или добавьте в PATH
    pause
    exit /b 1
)

echo.
echo Все готово! Теперь можно запускать проект:
echo mvn spring-boot:run
echo.
pause






