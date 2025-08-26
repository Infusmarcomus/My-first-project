@echo off
echo Установка Maven...
echo.

REM Создаем папку для Maven
if not exist "C:\Program Files\Apache" mkdir "C:\Program Files\Apache"

REM Скачиваем Maven
echo Скачиваем Maven...
powershell -Command "& {Invoke-WebRequest -Uri 'https://archive.apache.org/dist/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.zip' -OutFile 'maven.zip'}"

REM Распаковываем
echo Распаковываем Maven...
powershell -Command "& {Expand-Archive -Path 'maven.zip' -DestinationPath 'C:\Program Files\Apache' -Force}"

REM Переименовываем папку
if exist "C:\Program Files\Apache\apache-maven-3.9.11" (
    move "C:\Program Files\Apache\apache-maven-3.9.11" "C:\Program Files\Apache\maven"
)

REM Добавляем в PATH
echo Добавляем Maven в PATH...
setx PATH "%PATH%;C:\Program Files\Apache\maven\bin"

REM Удаляем временный файл
del maven.zip

echo.
echo Maven установлен в C:\Program Files\Apache\maven
echo Перезапустите командную строку для применения изменений PATH
echo.
pause


