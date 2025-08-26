@echo off
echo Установка Maven через Chocolatey...
echo.

REM Проверяем наличие Chocolatey
choco -v >nul 2>&1
if %errorlevel% neq 0 (
    echo Chocolatey не установлен!
    echo Установите Chocolatey с https://chocolatey.org/install
    echo Или используйте install-maven.bat для ручной установки
    pause
    exit /b 1
)

echo Устанавливаем Maven...
choco install maven -y

echo.
echo Maven установлен!
echo Перезапустите командную строку для применения изменений
echo.
pause






