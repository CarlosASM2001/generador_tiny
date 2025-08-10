@echo off
echo ==============================================
echo    EJECUTOR DE ARCHIVOS TM CON TINY64.EXE
echo ==============================================
echo.

if "%~1"=="" (
    echo Uso: ejecutar.bat ^<nombre_archivo.tm^>
    echo.
    echo Archivos .tm disponibles:
    dir /b *.tm 2>nul
    if errorlevel 1 echo No se encontraron archivos .tm en este directorio
    echo.
    echo Ejemplo: ejecutar.bat programa_extendido.tm
    goto :end
)

if not exist "%~1" (
    echo Error: El archivo %~1 no existe
    echo.
    echo Archivos .tm disponibles:
    dir /b *.tm 2>nul
    goto :end
)

echo Ejecutando: %~1
echo ----------------------------------------------
tiny64.exe %~1
echo ----------------------------------------------
echo Ejecución completada.

:end
echo.
pause