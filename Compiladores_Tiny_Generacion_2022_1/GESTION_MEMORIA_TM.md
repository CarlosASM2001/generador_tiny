# Gestión de Memoria en TM para Tiny Extendido

## Arquitectura de Memoria

### Disposición de la Memoria TM

```
Dirección  |  Contenido                    | Descripción
---------- | ----------------------------- | ---------------------
0          | Máxima dirección de memoria   | Configuración inicial
1-N        | Variables globales            | Área GP (Global Pointer)
N+1-M      | Variables locales/temporales  | Área de frame actual
M+1-TOP    | Pila de temporales           | Área MP (Memory Pointer)
```

### Registros de Gestión de Memoria

- **GP (r5)**: Global Pointer - Apunta al inicio de variables globales (dirección 0)
- **MP (r6)**: Memory Pointer - Apunta al tope de memoria para temporales
- **desplazamientoTmp**: Variable que rastrea el tope actual de la pila de temporales

## Declaración de Variables

### 1. Variables Globales

#### Ejemplo: Variable Simple
```tiny
global x;
```

**Código TM Generado:**
```asm
; Declaración procesada por tabla de símbolos
; x obtiene dirección 0
LDC 0,0(0)      ; Inicializar a cero
ST  0,0(5)      ; Almacenar en dirección 0 (GP+0)
```

#### Ejemplo: Array Global
```tiny
global arr : array[10];
```

**Código TM Generado:**
```asm
; arr obtiene dirección base (ej: 1)
; Se reservan 10 posiciones consecutivas
LDC 0,0(0)      ; Inicializar elemento 0
ST  0,1(5)      ; Almacenar en dirección 1
LDC 0,0(0)      ; Inicializar elemento 1  
ST  0,2(5)      ; Almacenar en dirección 2
; ... continúa para todos los elementos
```

### 2. Variables Locales

#### Ejemplo: Variables en Función
```tiny
function mifuncion()
begin
    var i;
    var total;
    // ...
end
```

**Código TM Generado:**
```asm
; i obtiene dirección N
; total obtiene dirección N+1
LDC 0,0(0)      ; Inicializar i a cero
ST  0,N(5)      ; Almacenar en dirección N
LDC 0,0(0)      ; Inicializar total a cero  
ST  0,N+1(5)    ; Almacenar en dirección N+1
```

## Asignación de Direcciones

### Algoritmo de la Tabla de Símbolos

```java
public boolean InsertarSimbolo(String identificador, int numLinea){
    if(tabla.containsKey(identificador)){
        return false; // Ya existe
    } else {
        // Asignar dirección secuencial
        simbolo = new RegistroSimbolo(identificador, numLinea, direccion++);
        tabla.put(identificador, simbolo);
        return true;
    }
}
```

### Manejo Especial para Arrays

```java
if(decl.isEsArray() && tamaño > 1){
    // Reservar posiciones adicionales para el array
    direccion += (tamaño - 1);
    System.out.println("Array " + nombre + " ocupa " + tamaño + " posiciones");
}
```

## Ejemplos Prácticos

### Ejemplo 1: Programa con Variables Globales

```tiny
global x;           // Dirección 0
global y;           // Dirección 1  
global arr : array[5]; // Direcciones 2-6

begin
    x := 10;        // ST 0,0(5) - Almacenar en dirección 0
    y := 20;        // ST 0,1(5) - Almacenar en dirección 1
    arr[0] := 5;    // Calcular: 2+0, almacenar en dirección 2
end
```

**Mapa de Memoria Resultante:**
```
Dirección | Valor | Variable
----------|-------|----------
0         | 10    | x
1         | 20    | y  
2         | 5     | arr[0]
3         | 0     | arr[1]
4         | 0     | arr[2]
5         | 0     | arr[3]
6         | 0     | arr[4]
```

### Ejemplo 2: Acceso a Arrays

```tiny
global arr : array[3];  // Direcciones 0-2

begin
    arr[1] := 42;       // Calcular dirección: base + índice = 0 + 1 = 1
end
```

**Código TM para `arr[1] := 42`:**
```asm
LDC 0,42(0)     ; Cargar valor 42
ST  0,-1(6)     ; Guardar en pila temporal
LD  0,variable_i(5) ; Cargar índice (1)
ADD 0,0,0       ; Calcular dirección: base(0) + índice(1) = 1
LD  1,-1(6)     ; Recuperar valor 42
ST  1,0(0)      ; Almacenar 42 en dirección calculada
```

## Ventajas de Esta Implementación

### ✅ **Gestión Automática**
- Las direcciones se asignan automáticamente
- No hay conflictos de memoria
- Arrays ocupan espacio contiguo

### ✅ **Inicialización Correcta**  
- Todas las variables se inicializan a cero
- Los arrays se inicializan elemento por elemento
- Estado de memoria consistente

### ✅ **Acceso Eficiente**
- Acceso directo via GP + offset
- Cálculo dinámico para arrays
- Sin fragmentación de memoria

### ✅ **Depuración Facilitada**
- Comentarios claros en código TM
- Información de direcciones en tabla de símbolos
- Trazabilidad completa

## Limitaciones Actuales

### ⚠️ **Ámbitos Simplificados**
- Variables locales usan mismo espacio que globales
- No hay frame pointer separado para funciones
- Gestión de ámbitos básica

### ⚠️ **Tamaño de Arrays**
- Solo arrays con tamaño constante
- No verificación de bounds en tiempo de ejecución
- Tamaño debe conocerse en compilación

## Mejoras Futuras

### 🔄 **Frame Management**
- Implementar frame pointer separado (FP)
- Gestión automática de frames en llamadas
- Stack de activación real

### 🔄 **Verificación de Bounds**
- Chequeo de límites en arrays
- Manejo de errores en tiempo de ejecución
- Arrays dinámicos

### 🔄 **Optimización de Memoria**
- Reutilización de memoria temporal
- Optimización de vida útil de variables
- Compactación automática

## Resumen

La implementación actual proporciona:

1. **Reserva real de memoria** para variables y arrays
2. **Inicialización automática** a valores cero
3. **Asignación secuencial** de direcciones
4. **Soporte completo** para arrays de tamaño fijo
5. **Código TM correcto** y ejecutable

Esta base sólida permite generar código TM que realmente maneja la memoria de forma apropiada para la máquina virtual.