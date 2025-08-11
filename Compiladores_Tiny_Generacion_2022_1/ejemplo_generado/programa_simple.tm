* Compilacion TINY EXTENDIDO para el codigo objeto TM
* Archivo: programa_simple.tiny
* Preludio estandar:
0:      LDC       6,1000(0)      inicializar MP con direccion base de pila (1000)
1:      LDC       5,0(0)        GP apunta al inicio de variables globales (direccion 0)
* Total de memoria reservada para variables: 2 posiciones
* Pila temporal inicia en direccion: 1000
* -> programa
* -> declaracion: x
* Declaracion de variable: x (global)
2:      LDC       0,0(0)        global: inicializar variable x a cero
3:      ST        0,0(5)        global: almacenar en direccion 0
* <- declaracion
* -> declaracion: i
* Declaracion de variable: i (local)
4:      LDC       0,0(0)        local: inicializar variable i a cero
5:      ST        0,1(5)        local: almacenar en direccion 1
* <- declaracion
* -> for
* -> constante
6:      LDC       0,1(0)        cargar constante: 1
* <- constante
7:      ST        0,1(5)        for: inicializar variable i
* for: inicio del bucle
8:      LD        0,1(5)        for: cargar variable de control
9:      ST        0,-2(6)       for: guardar variable en pila temp
* -> constante
10:     LDC       0,3(0)        cargar constante: 3
* <- constante
11:     LD        1,-2(6)       for: cargar variable de pila temp
12:     SUB       0,1,0         for: variable - valor_final
13:     JGT       0,9(7)        for: saltar si variable > final - CORREGIDO
* -> escribir
* -> identificador
14:     LD        0,1(5)        cargar valor de identificador: i
* <- identificador
15:     OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* for: punto de continue
16:     LD        0,1(5)        for: cargar variable para incremento
17:     ST        0,-2(6)       for: guardar variable en pila temp
* -> constante
18:     LDC       0,1(0)        cargar constante: 1
* <- constante
19:     LD        1,-2(6)       for: cargar variable de pila temp
20:     ADD       0,1,0         for: incrementar variable
21:     ST        0,1(5)        for: guardar variable incrementada
22:     LDA       7,-15(7)      for: salto al inicio
* for: fin del bucle
* -> escribir
* -> constante
23:     LDC       0,999(0)      cargar constante: 999
* <- constante
24:     OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* <- programa
* Fin de la ejecucion.
25:     HALT      0,0,0