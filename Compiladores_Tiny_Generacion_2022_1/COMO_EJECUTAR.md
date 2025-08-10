# Cómo Ejecutar Programas Tiny en la TM

## Resumen

Ya tienes todo listo para ejecutar código TM generado desde programas Tiny. El compilador genera archivos `.tm` que pueden ejecutarse en la máquina virtual.

## Métodos de Ejecución

### 🎯 **Método 1: Script Automático (Recomendado)**

```bash
./ejecutar_tiny.sh ejemplo_fuente/programa_simple.tiny
```

**Ventajas:**
- ✅ Compilación y ejecución automática
- ✅ Verificación de errores
- ✅ Salida organizada y clara
- ✅ No necesita pasos manuales

### 🔧 **Método 2: Paso a Paso**

#### 1. Compilar el programa Tiny
```bash
java -cp "src:lib/java-cup-11b-runtime.jar" ve.edu.unet.parser programa.tiny
```

#### 2. Ejecutar el archivo .tm generado
```bash
python3 tm_simulator.py ejemplo_generado/programa_extendido.tm
```

### 🖥️ **Método 3: Máquina Virtual Original (Windows)**

Si tienes acceso a un entorno Windows:
```cmd
tiny64.exe programa_extendido.tm
```

## Ejemplos de Programas

### **Programa Simple**
```tiny
{Programa de prueba}
global x;

begin
    x := 42;
    write x;
    write "Hola"
end
```

**Ejecutar:**
```bash
./ejecutar_tiny.sh ejemplo_fuente/programa_simple.tiny
```

**Salida esperada:**
```
42
72  (H)
111 (o)
108 (l)
97  (a)
```

### **Programa Completo**
```tiny
{Programa con todas las características}
global x;
global arr : array[10];

function suma_vector(v : array[], size)
begin
    var total;
    total := 0;
    // ... resto de la función
    return total
end

begin
    // Programa principal
    read x;
    write x;
    // ... resto del programa
end
```

**Ejecutar:**
```bash
./ejecutar_tiny.sh ejemplo_fuente/programa_extendido.tiny
```

## Estructura de Archivos Generados

### **Archivo .tm**
```
ejemplo_generado/programa_extendido.tm
```

**Formato:**
```asm
0: LD 6,0(0)         ; Configuración inicial
1: ST 0,0(0)         ; Limpieza
2: LDC 5,0(0)        ; GP = 0
3: LDC 0,42(0)       ; Cargar constante 42
4: ST 0,0(5)         ; Almacenar en variable x
5: LD 0,0(5)         ; Cargar variable x
6: OUT 0,0,0         ; Imprimir x
7: HALT 0,0,0        ; Terminar
```

## Características Soportadas

### ✅ **Funcionando Correctamente**

#### **Variables y Arrays**
- Variables globales: `global x;`
- Arrays: `global arr : array[10];`
- Variables locales: `var i;`

#### **Operaciones Aritméticas**
- Básicas: `+`, `-`, `*`, `/`
- Extendidas: `%`, `**`
- Asignación: `:=`

#### **Operadores Relacionales**
- `<`, `<=`, `>`, `>=`, `==`, `!=`

#### **Operadores Lógicos**
- `&&`, `||`, `!`
- Evaluación de cortocircuito

#### **Estructuras de Control**
- IF-ELSE: `if condicion then ... else ... end`
- FOR: `for i := 0 to 10 step 1 ... end`
- REPEAT: `repeat ... until condicion`

#### **Funciones**
- Declaración: `function nombre(parametros) begin ... end`
- Llamada: `call nombre(argumentos)`
- Retorno: `return valor`

#### **Entrada/Salida**
- Lectura: `read variable`
- Escritura: `write expresion`
- Strings: `write "texto"`

## Gestión de Memoria

### **Distribución en TM**
```
Dirección | Contenido
----------|----------
0         | Variable global x
1-10      | Array global arr[10]
11+       | Variables locales/temporales
1023      | Tope de memoria (MP)
```

### **Registros TM**
- **r0 (AC)**: Acumulador principal
- **r1 (AC1)**: Acumulador secundario
- **r5 (GP)**: Global Pointer (variables globales)
- **r6 (MP)**: Memory Pointer (tope de memoria)
- **r7 (PC)**: Program Counter

## Debugging y Análisis

### **Información de Compilación**
Durante la compilación se muestra:
```
*** Tabla de Simbolos ***
Total de posiciones de memoria utilizadas: 18
Variable: x -> Direccion: 0
Variable: arr -> Direccion: 1
...
```

### **Información de Ejecución**
Durante la ejecución se muestra:
```
Programa cargado: 19 instrucciones
Iniciando ejecución...
==================================================
[salida del programa]
==================================================
Ejecución finalizada después de 19 pasos
Estado final de registros: [...]
```

## Solución de Problemas

### **Error: "Archivo no encontrado"**
```bash
# Verificar que el archivo existe
ls -la ejemplo_fuente/programa.tiny

# Usar ruta completa
./ejecutar_tiny.sh ejemplo_fuente/programa.tiny
```

### **Error: "Permission denied"**
```bash
# Dar permisos de ejecución
chmod +x ejecutar_tiny.sh
chmod +x tm_simulator.py
```

### **Error: "Java classpath"**
```bash
# Verificar que están las librerías
ls -la lib/java-cup-11b-runtime.jar
ls -la src/ve/edu/unet/*.class
```

### **Programa no termina**
- El simulador tiene límite de 10,000 pasos
- Verificar bucles infinitos
- Revisar condiciones de terminación

## Archivos de Ejemplo Incluidos

```
ejemplo_fuente/
├── programa_extendido.tiny    # Programa completo con todas las características
├── programa_simple.tiny       # Programa básico para pruebas
└── [otros ejemplos]

ejemplo_generado/
├── programa_extendido.tm      # Código TM generado
├── primero.tm                # Ejemplos predefinidos
├── facto.tm
└── [otros .tm]
```

## Comandos Útiles

### **Compilar sin ejecutar**
```bash
java -cp "src:lib/java-cup-11b-runtime.jar" ve.edu.unet.parser programa.tiny
```

### **Solo ejecutar archivo .tm existente**
```bash
python3 tm_simulator.py ejemplo_generado/programa.tm
```

### **Ver código TM generado**
```bash
cat ejemplo_generado/programa_extendido.tm | head -20
```

### **Recompilar compilador**
```bash
./compilar_extendido.sh
```

## Resumen

¡Tu compilador Tiny está **completamente funcional**! Puedes:

1. ✅ **Escribir programas** en lenguaje Tiny extendido
2. ✅ **Compilar** a código TM 
3. ✅ **Ejecutar** en la máquina virtual
4. ✅ **Ver resultados** en tiempo real
5. ✅ **Depurar** con información detallada

**Comando principal:**
```bash
./ejecutar_tiny.sh tu_programa.tiny
```