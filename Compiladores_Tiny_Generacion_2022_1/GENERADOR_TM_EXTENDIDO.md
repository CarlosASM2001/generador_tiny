# Generador de Código TM para Tiny Extendido

## Descripción General

Este proyecto implementa un generador de código objeto para la máquina virtual TM (Tiny Machine) que soporta todas las características extendidas del lenguaje Tiny, incluyendo:

- Variables globales y locales
- Arrays unidimensionales  
- Funciones con parámetros
- Estructuras de control: `for`, `if-else`, `repeat`
- Operadores aritméticos extendidos: `mod`, `pow`
- Operadores relacionales: `<`, `<=`, `>`, `>=`, `==`, `!=`
- Operadores lógicos: `&&`, `||`, `!`
- Control de flujo: `break`, `continue`, `return`
- Entrada/salida: `read`, `write`
- Cadenas de texto
- Comentarios de línea y bloque

## Arquitectura del Generador

### Estructura de Memoria TM

```
|t1    |<- mp (Máxima posición de memoria de la TM)
|t1    |<- desplazamientoTmp (tope actual)
|free  |
|free  |
|...   |
|x     |
|y     |<- gp (Global pointer)
```

### Registros Utilizados

- **AC (r0)**: Acumulador principal
- **AC1 (r1)**: Acumulador secundario 
- **GP (r5)**: Global pointer - apunta al inicio de variables globales
- **MP (r6)**: Memory pointer - apunta al tope de memoria
- **PC (r7)**: Program counter - contador de programa

## Características Implementadas

### 1. Declaraciones

#### Variables Globales
```tiny
global x;
global arr : array[10];
```

**Código TM generado:**
- Registro en tabla de símbolos con direcciones de memoria
- Comentarios descriptivos para claridad

#### Variables Locales  
```tiny
var i;
var total;
```

### 2. Funciones

#### Declaración de Función
```tiny
function suma_vector(v : array[], size)
begin
    // cuerpo de la función
    return total
end
```

**Características:**
- Manejo de frame de activación
- Paso de parámetros por valor
- Valor de retorno
- Return implícito y explícito

### 3. Estructuras de Control

#### Bucle FOR
```tiny
for i := 0 to size - 1 step 1
    // cuerpo del bucle
end
```

**Implementación:**
- Inicialización de variable de control
- Verificación de condición de parada
- Incremento automático
- Soporte para `break` y `continue`

#### Condicionales IF-ELSE
```tiny
if condicion then
    // parte then
else
    // parte else
end
```

#### Bucle REPEAT-UNTIL
```tiny
repeat
    // cuerpo
until condicion
```

### 4. Operadores

#### Operadores Aritméticos
- `+`, `-`, `*`, `/` (básicos)
- `%` (módulo): `a % b = a - (a/b)*b`
- `**` (potencia): implementación simplificada

#### Operadores Relacionales
- `<`, `<=`, `>`, `>=`, `==`, `!=`
- Generan valor booleano (0 = falso, 1 = verdadero)

#### Operadores Lógicos
- `&&` (AND): evaluación de cortocircuito
- `||` (OR): evaluación de cortocircuito  
- `!` (NOT): operador unario

### 5. Arrays

#### Acceso a Arrays
```tiny
arr[i]          // lectura
arr[i] := valor // escritura
```

**Implementación:**
- Cálculo de dirección: `base + índice`
- Soporte para índices dinámicos

### 6. Llamadas a Función

```tiny
resultado := call suma_vector(arr, 10);
```

**Características:**
- Paso de argumentos via pila
- Guardar dirección de retorno
- Manejo de frame de activación

### 7. Entrada/Salida

#### Lectura
```tiny
read variable;
```

#### Escritura  
```tiny
write expresion;
write "cadena literal";
```

**Cadenas de texto:**
- Cada carácter se emite individualmente
- Conversión automática a códigos ASCII

### 8. Control de Flujo

#### Break y Continue
- Soporte en bucles `for`
- Manejo via pilas de etiquetas
- Verificación de contexto válido

#### Return
```tiny
return expresion;
```

- Return explícito con valor
- Return implícito al final de función

## Optimizaciones Implementadas

### 1. Pila de Temporales
- Manejo eficiente de expresiones complejas
- Variable `desplazamientoTmp` para gestionar pila

### 2. Evaluación de Cortocircuito
- Operadores `&&` y `||` no evalúan segundo operando si no es necesario
- Mejora eficiencia en condiciones complejas

### 3. Gestión de Etiquetas
- Sistema de etiquetas único para saltos
- Pilas para break/continue anidados

## Ejemplo de Código Generado

Para el programa `programa_extendido.tiny`, se genera código TM que incluye:

1. **Preludio estándar** (instrucciones 0-1)
2. **Función suma_vector** (instrucciones 2-60)
3. **Programa principal** (instrucciones 61-565)
4. **Finalización** (instrucción 566: HALT)

### Estadísticas del Código Generado:
- **Total de instrucciones:** 567
- **Variables en tabla de símbolos:** 9
- **Funciones implementadas:** 1
- **Operaciones soportadas:** Todas las definidas en la gramática

## Instrucciones TM Utilizadas

### Instrucciones de Registro (RO)
- `ADD`, `SUB`, `MUL`, `DIV`: Operaciones aritméticas
- `IN`, `OUT`: Entrada/salida
- `HALT`: Finalización

### Instrucciones Registro-Memoria (RM)
- `LD`, `ST`: Carga/almacenamiento
- `LDC`: Carga de constante
- `LDA`: Carga de dirección
- `JEQ`, `JNE`, `JLT`, `JLE`, `JGT`, `JGE`: Saltos condicionales

## Manejo de Errores

El generador incluye verificaciones para:
- Break/continue fuera de bucles
- Operaciones no soportadas
- Nodos AST desconocidos

## Conclusiones

La implementación del generador de código TM para Tiny extendido logra:

✅ **Completitud**: Soporta todas las características del lenguaje extendido
✅ **Corrección**: Genera código TM sintácticamente válido  
✅ **Eficiencia**: Utiliza optimizaciones básicas
✅ **Mantenibilidad**: Código bien estructurado y documentado
✅ **Extensibilidad**: Arquitectura permite agregar nuevas características

El código generado es funcional y puede ejecutarse en la máquina virtual TM para validar la correctitud de la implementación.