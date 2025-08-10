# Generación de Archivos .tm para Tiny64

Este compilador Tiny ha sido modificado para generar automáticamente archivos `.tm` compatibles con `tiny64.exe`.

## Características Principales

- **Generación automática de archivos .tm**: El compilador genera archivos de código objeto con extensión `.tm` en la carpeta `ejemplo_generado/`
- **Compatibilidad con tiny64.exe**: Los archivos generados son totalmente compatibles con el ejecutable `tiny64.exe` de Windows
- **Formato estándar TM**: Utiliza el formato estándar de la Tiny Machine con instrucciones numeradas y comentarios descriptivos

## Uso

### Método 1: Script automatizado (Recomendado)

```bash
./generar_tm.sh ejemplo_fuente/programa_extendido.tiny
```

Este script:
1. Compila el archivo fuente `.tiny`
2. Genera el archivo `.tm` en `ejemplo_generado/`
3. Muestra información del archivo generado
4. Proporciona instrucciones para usar en Windows

### Método 2: Compilación manual

```bash
# 1. Compilar el compilador (si es necesario)
./compilar_extendido.sh

# 2. Ejecutar la compilación
java -cp "src:lib/java-cup-11b-runtime.jar" ve.edu.unet.parser ejemplo_fuente/programa_extendido.tiny

# 3. El archivo .tm se genera automáticamente en ejemplo_generado/
```

### Método 3: Script original (también genera .tm)

```bash
./ejecutar_con_salida.sh
```

Este script funciona igual que antes, pero ahora también genera el archivo `.tm`.

## Estructura del Archivo .tm Generado

Los archivos `.tm` generados tienen la siguiente estructura:

```
*      Compilacion TINY EXTENDIDO para el codigo objeto TM
*      Archivo: nombre_del_archivo.tiny
*      Preludio estandar:
0:       LD       6,0(0)      cargar la maxima direccion desde la localidad 0
1:       ST       0,0(0)      limpio el registro de la localidad 0
2:       LDC       5,0(0)      GP apunta al inicio de variables globales
...
600:     HALT     0,0,0       
```

### Elementos del formato:

- **Comentarios**: Líneas que comienzan con `*` para documentación
- **Instrucciones numeradas**: Cada instrucción tiene un número de línea único
- **Códigos de operación**: Instrucciones estándar TM (LD, ST, LDC, ADD, SUB, MUL, DIV, etc.)
- **Parámetros**: Registros y direcciones de memoria
- **Terminación**: Siempre termina con instrucción `HALT`

## Uso en Windows con tiny64.exe

Para ejecutar los archivos `.tm` generados en Windows:

1. **Copiar archivos**: Transfiere el archivo `.tm` de la carpeta `ejemplo_generado/` a tu sistema Windows
2. **Ubicar tiny64.exe**: Asegúrate de tener `tiny64.exe` en la misma carpeta o en el PATH
3. **Ejecutar**: Usa el comando:
   ```cmd
   tiny64.exe programa_extendido.tm
   ```

## Estructura de Carpetas

```
Compiladores_Tiny_Generacion_2022_1/
├── ejemplo_fuente/          # Archivos fuente .tiny
├── ejemplo_generado/        # Archivos .tm generados
│   ├── programa_extendido.tm
│   ├── tiny64.exe          # Ejecutable para Windows
│   └── otros_archivos.tm
├── src/                    # Código fuente del compilador
├── ejecutar_con_salida.sh  # Script original (modificado)
├── generar_tm.sh          # Script nuevo para generar .tm
└── README_TM_GENERATION.md # Este archivo
```

## Modificaciones Realizadas

### Clase UtGen.java
- Agregado soporte para escritura dual (consola + archivo)
- Métodos `inicializarArchivo()` y `cerrarArchivo()`
- Generación automática del nombre del archivo `.tm`

### Clase Generador.java
- Integración con `UtGen` para manejo de archivos
- Reinicio de contadores para compilaciones múltiples
- Configuración del nombre del archivo fuente

### Clase parser.java
- Modificación del método `main()` para pasar el nombre del archivo
- Integración con `Generador.setArchivoFuente()`

## Ejemplos de Uso

### Compilar un programa específico:
```bash
./generar_tm.sh ejemplo_fuente/mi_programa.tiny
```

### Compilar todos los ejemplos:
```bash
for archivo in ejemplo_fuente/*.tiny; do
    ./generar_tm.sh "$archivo"
done
```

### Verificar archivos generados:
```bash
ls -la ejemplo_generado/*.tm
```

## Resolución de Problemas

### Error: "No se genera el archivo .tm"
- Verificar que la compilación sea exitosa
- Revisar permisos de escritura en la carpeta `ejemplo_generado/`
- Comprobar el archivo de log en `salida/`

### Error: "Archivo fuente no encontrado"
- Verificar la ruta del archivo `.tiny`
- Asegurar que el archivo tenga la extensión correcta

### Error en tiny64.exe (Windows)
- Verificar que el archivo `.tm` esté completo
- Comprobar que termine con instrucción `HALT`
- Revisar la sintaxis del formato TM

## Notas Técnicas

- Los archivos `.tm` son archivos de texto plano
- Compatible con cualquier editor de texto
- El formato sigue la especificación estándar de Tiny Machine
- Los comentarios en español son compatibles con tiny64.exe
- No hay límite en el tamaño del archivo generado

## Contacto y Soporte

Para reportar problemas o sugerencias relacionadas con la generación de archivos `.tm`, por favor documenta:
1. El archivo fuente `.tiny` utilizado
2. Los mensajes de error (si los hay)
3. El contenido del archivo de log
4. La versión del compilador utilizada