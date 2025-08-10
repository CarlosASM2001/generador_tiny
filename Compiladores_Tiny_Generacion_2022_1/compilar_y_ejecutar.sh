#!/bin/bash

echo "=== COMPILADOR TINY EXTENDIDO CON EJECUCION ==="
echo ""

# Verificar argumentos
if [ $# -eq 0 ]; then
    echo "Uso: $0 <archivo_fuente.tiny>"
    echo "Ejemplo: $0 ejemplo_fuente/programa_extendido.tiny"
    exit 1
fi

ARCHIVO_FUENTE="$1"

# Verificar que el archivo existe
if [ ! -f "$ARCHIVO_FUENTE" ]; then
    echo "Error: No se encontró el archivo $ARCHIVO_FUENTE"
    exit 1
fi

echo "Compilando archivo: $ARCHIVO_FUENTE"
echo ""

# Detectar el separador de classpath según el OS
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "win32" ]]; then
    CLASSPATH_SEP=";"
else
    CLASSPATH_SEP=":"
fi

# Ejecutar el compilador
java -cp "src${CLASSPATH_SEP}lib/java-cup-11b-runtime.jar" ve.edu.unet.parser "$ARCHIVO_FUENTE"

echo ""
echo "=== COMPILACION Y EJECUCION COMPLETADA ==="