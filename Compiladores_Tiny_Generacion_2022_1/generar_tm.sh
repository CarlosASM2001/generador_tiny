#!/bin/bash

echo "=== Generador de Archivos .tm para Tiny64 ==="
echo ""

# Cambiar al directorio del script si no estamos ya ahí
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Verificar si se proporcionó un archivo de entrada
if [ "$1" = "" ]; then
    echo "Uso: $0 <archivo.tiny>"
    echo ""
    echo "Ejemplo:"
    echo "  $0 ejemplo_fuente/programa_extendido.tiny"
    echo ""
    echo "Este script:"
    echo "  1. Compila el archivo .tiny"
    echo "  2. Genera un archivo .tm en la carpeta ejemplo_generado/"
    echo "  3. El archivo .tm puede ejecutarse con tiny64.exe en Windows"
    echo ""
    exit 1
fi

# Verificar que el archivo de entrada existe
if [ ! -f "$1" ]; then
    echo "Error: El archivo '$1' no existe."
    exit 1
fi

# Extraer el nombre base del archivo
NOMBRE_BASE=$(basename "$1" .tiny)
ARCHIVO_TM="ejemplo_generado/${NOMBRE_BASE}.tm"

echo "Archivo de entrada: $1"
echo "Archivo de salida:  $ARCHIVO_TM"
echo ""

# Crear directorio de salida si no existe
mkdir -p ejemplo_generado

echo "Compilando archivo..."

# Detectar el separador de classpath según el OS
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "win32" ]]; then
    CLASSPATH_SEP=";"
else
    CLASSPATH_SEP=":"
fi

# Ejecutar el compilador
java -cp "src${CLASSPATH_SEP}lib/java-cup-11b-runtime.jar" ve.edu.unet.parser "$1" > salida/compilacion_completa.txt 2>&1

if [ $? -eq 0 ]; then
    echo "✓ Compilación exitosa"
    
    if [ -f "$ARCHIVO_TM" ]; then
        echo "✓ Archivo .tm generado: $ARCHIVO_TM"
        echo ""
        echo "Información del archivo:"
        ls -lh "$ARCHIVO_TM"
        echo ""
        echo "Primeras líneas del archivo .tm:"
        head -10 "$ARCHIVO_TM"
        echo ""
        echo "Últimas líneas del archivo .tm:"
        tail -5 "$ARCHIVO_TM"
        echo ""
        echo "=== INSTRUCCIONES PARA USAR EN WINDOWS ==="
        echo ""
        echo "1. Copia el archivo $ARCHIVO_TM a tu sistema Windows"
        echo "2. Asegúrate de tener tiny64.exe en la misma carpeta"
        echo "3. Ejecuta: tiny64.exe ${NOMBRE_BASE}.tm"
        echo ""
        echo "=== FORMATO DEL ARCHIVO .tm ==="
        echo ""
        echo "El archivo generado está en formato TM (Tiny Machine) y contiene:"
        echo "  - Comentarios marcados con *"
        echo "  - Instrucciones numeradas secuencialmente"
        echo "  - Códigos de operación estándar TM (LD, ST, LDC, ADD, etc.)"
        echo "  - Terminación con instrucción HALT"
        echo ""
    else
        echo "✗ Error: No se generó el archivo .tm"
        exit 1
    fi
else
    echo "✗ Error en la compilación"
    echo "Revisa el archivo salida/compilacion_completa.txt para más detalles"
    exit 1
fi

echo "=== Proceso completado ==="