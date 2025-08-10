# Instrucciones de Compilación y Ejecución - Compilador TINY Extendido

## Nueva Funcionalidad Implementada

El compilador TINY extendido ahora puede:
1. **Generar archivos de código objeto (.tm)** automáticamente
2. **Intentar ejecutar el código objeto** con tiny64.exe
3. **Proporcionar instrucciones claras** cuando la ejecución automática no es posible

## Uso del Compilador

### Método 1: Script de Compilación y Ejecución (Recomendado)

```bash
./compilar_y_ejecutar.sh <archivo_fuente.tiny>
```

**Ejemplo:**
```bash
./compilar_y_ejecutar.sh ejemplo_fuente/programa_extendido.tiny
./compilar_y_ejecutar.sh test_simple.tiny
```

### Método 2: Comando Java Directo

```bash
java -cp "src:lib/java-cup-11b-runtime.jar" ve.edu.unet.parser <archivo_fuente.tiny>
```

**En Windows:**
```cmd
java -cp "src;lib/java-cup-11b-runtime.jar" ve.edu.unet.parser <archivo_fuente.tiny>
```

## Resultados de la Compilación

### Archivos Generados

Cuando compilas un archivo `programa.tiny`, el compilador genera:

1. **Salida en consola:** Análisis léxico, sintáctico, tabla de símbolos y código objeto
2. **Archivo .tm:** `programa.tm` - Código objeto ejecutable para la máquina virtual TM

### Ejemplo de Salida

```
Generando código objeto en archivo: programa.tm
Archivo de código objeto generado: programa.tm

==== EJECUTANDO CODIGO OBJETO CON TINY64 ====
Archivo: programa.tm

INSTRUCCIONES PARA EJECUTAR MANUALMENTE:
========================================
1. En Windows:
   tools\tiny64.exe programa.tm

2. En Linux con Wine:
   wine tools/tiny64.exe programa.tm

3. Copiar el archivo programa.tm a un sistema Windows
   y ejecutar: tiny64.exe programa.tm
```

## Ejecución del Código Objeto

### Ejecución Automática

El compilador intentará ejecutar automáticamente el archivo .tm generado si:
- Estás en Windows y tiny64.exe tiene permisos de ejecución
- Tienes Wine instalado en Linux

### Ejecución Manual

Si la ejecución automática falla, puedes ejecutar manualmente:

#### En Windows:
```cmd
cd tools
tiny64.exe ..\programa.tm
```

#### En Linux con Wine:
```bash
wine tools/tiny64.exe programa.tm
```

#### Transferir a Windows:
1. Copiar el archivo `.tm` a un sistema Windows
2. Ejecutar: `tiny64.exe programa.tm`

## Ejemplos de Programas

### Programa Simple

**Archivo: `test_simple.tiny`**
```tiny
{ Programa TINY simple para prueba }
global x;
begin
    write "Ingrese un numero: ";
    read x;
    write "El numero ingresado es: ";
    write x
end
```

**Compilación:**
```bash
./compilar_y_ejecutar.sh test_simple.tiny
```

### Programa Complejo

**Archivo: `ejemplo_fuente/programa_extendido.tiny`**
- Incluye funciones, arrays, ciclos for, operadores extendidos
- Demuestra todas las características del compilador extendido

**Compilación:**
```bash
./compilar_y_ejecutar.sh ejemplo_fuente/programa_extendido.tiny
```

## Estructura de Archivos .tm

Los archivos `.tm` generados contienen:

```
*      Compilacion TINY EXTENDIDO para el codigo objeto TM
*      Archivo: programa.tiny
*      Preludio estandar:
0:       LD       6,0(0)      cargar la maxima direccion desde la localidad 0
1:       ST       0,0(0)      limpio el registro de la localidad 0
2:       LDC       5,0(0)      GP apunta al inicio de variables globales
...
97:      HALT     0,0,0
```

## Solución de Problemas

### Error: "Permission denied" al ejecutar tiny64.exe

**En Linux:**
- Instalar Wine: `sudo apt install wine`
- O transferir el archivo .tm a Windows

### Error: "No se encontró el archivo"

- Verificar que el archivo fuente existe
- Usar rutas correctas (relativas o absolutas)

### Error de sintaxis en el programa fuente

- Verificar que usas `global` en lugar de `var` para variables globales
- El compilador extendido tiene sintaxis específica diferente al TINY básico

## Scripts Disponibles

- `./compilar_extendido.sh` - Compila el compilador desde las fuentes
- `./compilar_y_ejecutar.sh` - Compila y ejecuta un programa TINY
- `./ejecutar_con_salida.sh` - Script original (solo muestra en consola)
- `./limpiar_proyecto.sh` - Limpia archivos temporales

## Notas Importantes

1. Los archivos `.tm` son compatibles con la máquina virtual TM estándar
2. El compilador mantiene compatibilidad con el modo original (solo consola)
3. Los comentarios y metadatos en los archivos `.tm` facilitan la depuración
4. La funcionalidad es retrocompatible con el compilador original