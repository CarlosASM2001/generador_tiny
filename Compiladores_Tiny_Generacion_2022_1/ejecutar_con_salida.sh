#!/bin/bash

echo "=== Compilando y Generando Código Objeto TM ==="

# Cambiar al directorio del script si no estamos ya ahí
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Crear directorios necesarios si no existen
mkdir -p salida
mkdir -p ejemplo_generado

echo "Compilando el compilador..."
# Detectar el separador de classpath según el OS
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "win32" ]]; then
    CLASSPATH_SEP=";"
else
    CLASSPATH_SEP=":"
fi

# Compilar las clases Java si es necesario
echo "Verificando si las clases están compiladas..."
if [ ! -f "src/ve/edu/unet/parser.class" ] || [ "src/ve/edu/unet/parser.java" -nt "src/ve/edu/unet/parser.class" ]; then
    echo "Compilando clases Java..."
    javac -cp "src${CLASSPATH_SEP}lib/java-cup-11b-runtime.jar" src/ve/edu/unet/*.java
    if [ $? -ne 0 ]; then
        echo "Error al compilar las clases Java"
        exit 1
    fi
fi

echo "Ejecutando compilador para generar código TM..."
# Ejecutar el compilador que ahora generará el archivo .tm automáticamente
java -cp "src${CLASSPATH_SEP}lib/java-cup-11b-runtime.jar" ve.edu.unet.parser ejemplo_fuente/programa_extendido.tiny > salida/resultado_compilacion.txt 2>&1

# Verificar si la compilación fue exitosa
if [ $? -eq 0 ]; then
    echo "Compilación exitosa!"
    echo ""
    
    # Buscar el archivo .tm generado
    TM_FILE=$(find ejemplo_generado -name "*.tm" -type f | head -1)
    
    if [ -n "$TM_FILE" ]; then
        echo "Archivo TM generado: $TM_FILE"
        echo ""
        echo "Contenido del archivo TM:"
        echo "========================="
        cat "$TM_FILE"
        echo ""
        echo "========================="
        echo ""
        echo "Para ejecutar con tiny64.exe en Windows:"
        echo "tiny64.exe $(basename "$TM_FILE")"
        echo ""
        echo "Asegúrate de copiar el archivo $(basename "$TM_FILE") al directorio donde tienes tiny64.exe"
    else
        echo "Advertencia: No se encontró archivo .tm generado"
    fi
else
    echo "Error durante la compilación"
fi

echo ""
echo "Resultados de la compilación guardados en: salida/resultado_compilacion.txt"
echo ""
echo "Contenido del log de compilación:"
echo "================================"
cat salida/resultado_compilacion.txt

echo ""
echo "=== Proceso completado ==="