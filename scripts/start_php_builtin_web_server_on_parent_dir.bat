@echo off
SET SCRIPT_DIR=%~dp0
if exist "%~1" (
	echo Argomento:  %~1
	php -S localhost:8888 -t "%~1"
) else (
	echo Percorso corrente: %SCRIPT_DIR%
	echo Attivo il webserver sul parent folder
	php -S localhost:8888 -t "%SCRIPT_DIR%.."
)
