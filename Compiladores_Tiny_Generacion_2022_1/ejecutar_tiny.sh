#!/bin/bash

# Script para compilar y ejecutar programas Tiny
# Uso: ./ejecutar_tiny.sh programa.tiny

if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo.tiny>"
    echo "Ejemplo: $0 ejemplo_fuente/programa_simple.tiny"
    exit 1
fi

ARCHIVO_TINY="$1"
NOMBRE_BASE=$(basename "$ARCHIVO_TINY" .tiny)

echo "=== Compilando y Ejecutando: $ARCHIVO_TINY ==="
echo

# Verificar que el archivo existe
if [ ! -f "$ARCHIVO_TINY" ]; then
    echo "Error: Archivo no encontrado: $ARCHIVO_TINY"
    exit 1
fi

echo "1. Compilando programa Tiny..."
java -cp "src:lib/java-cup-11b-runtime.jar" ve.edu.unet.parser "$ARCHIVO_TINY" > /tmp/compilacion.log 2>&1

# Verificar si la compilación fue exitosa
if [ $? -eq 0 ]; then
    echo "   ✓ Compilación exitosa"
    
    # Verificar que se generó el archivo .tm
    if [ -f "ejemplo_generado/programa_extendido.tm" ]; then
        echo "   ✓ Archivo TM generado: ejemplo_generado/programa_extendido.tm"
        
        echo
        echo "2. Ejecutando en simulador TM..."
        echo "   Salida del programa:"
        echo "   ===================="
        python3 tm_simulator.py ejemplo_generado/programa_extendido.tm
        
    else
        echo "   ✗ Error: No se generó el archivo .tm"
        echo "Detalles de la compilación:"
        cat /tmp/compilacion.log
    fi
else
    echo "   ✗ Error en la compilación"
    echo "Detalles del error:"
    cat /tmp/compilacion.log
fi

echo
echo "=== Proceso completado ==="