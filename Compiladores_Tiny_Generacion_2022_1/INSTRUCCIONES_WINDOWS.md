# Instrucciones para usar el Compilador TINY con tiny64.exe en Windows

## Descripción
Este compilador TINY extendido genera código objeto con extensión `.tm` compatible con `tiny64.exe` para su ejecución en Windows.

## Archivos generados
- Los archivos `.tm` se guardan automáticamente en la carpeta `ejemplo_generado/`
- El formato del código objeto es compatible con la Tiny Machine (TM)

## Cómo usar

### 1. Compilar código fuente TINY
```bash
# En Linux/WSL (desde la carpeta del proyecto)
./ejecutar_con_salida.sh
```

Este script:
- Compila las clases Java necesarias
- Ejecuta el compilador con el archivo `ejemplo_fuente/programa_extendido.tiny`
- Genera el archivo `programa_extendido.tm` en `ejemplo_generado/`

### 2. Ejecutar el código objeto en Windows

#### Opción A: Usar el script mejorado
```batch
# Desde la carpeta ejemplo_generado en Windows
ejecutar.bat programa_extendido.tm
```

#### Opción B: Ejecutar directamente
```batch
# Desde la carpeta donde está tiny64.exe
tiny64.exe programa_extendido.tm
```

## Archivos importantes

### En `ejemplo_generado/`:
- `*.tm` - Archivos de código objeto para tiny64.exe
- `ejecutar.bat` - Script mejorado para ejecutar archivos .tm
- `tiny64.exe` - Ejecutor de la Tiny Machine

### Scripts del proyecto:
- `ejecutar_con_salida.sh` - Compila y genera archivos .tm
- `INSTRUCCIONES_WINDOWS.md` - Este archivo

## Formato del código objeto

El código generado sigue el formato estándar de la Tiny Machine:
```
LINEA:    INSTRUCCION    R,D(S)    // COMENTARIO
```

Ejemplo:
```
0:        LD       6,0(0)      cargar la maxima direccion desde la localidad 0
1:        ST       0,0(0)      limpio el registro de la localidad 0
2:        LDC      0,10(0)     cargar constante: 10
```

## Verificación de sintaxis

El código generado ha sido validado para:
- ✅ Sintaxis correcta de instrucciones TM
- ✅ Formato de línea compatible con tiny64.exe
- ✅ Terminación correcta con instrucción HALT
- ✅ Comentarios descriptivos para depuración

## Ejemplos de uso

1. **Compilar y ejecutar programa principal:**
   ```bash
   ./ejecutar_con_salida.sh
   ```
   Luego en Windows:
   ```batch
   ejecutar.bat programa_extendido.tm
   ```

2. **Ver archivos .tm disponibles:**
   ```batch
   ejecutar.bat
   ```
   (sin parámetros muestra la lista de archivos disponibles)

## Solución de problemas

### Error: "No se encontró el archivo .tm"
- Verifica que el archivo existe en `ejemplo_generado/`
- Asegúrate de estar en el directorio correcto

### Error de sintaxis en tiny64.exe
- El código generado sigue el formato estándar TM
- Verifica que tienes la versión correcta de tiny64.exe

### Problemas de compilación
- Asegúrate de tener Java instalado
- Verifica que las clases se compilen correctamente con el script

## Archivos de prueba incluidos

En `ejemplo_generado/` encontrarás varios archivos `.tm` de ejemplo:
- `programa_extendido.tm` - Programa completo con todas las características
- `operaciones.tm` - Operaciones básicas
- `ciclos.tm` - Estructuras de control
- `facto.tm` - Cálculo de factorial
- Y otros ejemplos