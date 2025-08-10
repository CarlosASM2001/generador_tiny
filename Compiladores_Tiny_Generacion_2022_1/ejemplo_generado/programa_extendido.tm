* Compilacion TINY EXTENDIDO para el codigo objeto TM
* Archivo: programa_extendido.tiny
* Preludio estandar:
0: LD 6,0(0)
* cargar la maxima direccion desde la localidad 0
1: ST 0,0(0)
* limpio el registro de la localidad 0
2: LDC 5,0(0)
* GP apunta al inicio de variables globales (direccion 0)
* Total de memoria reservada para variables: 1 posiciones
* -> programa
* -> declaracion: x
* Declaracion de variable: x (global)
3: LDC 0,0(0)
* global: inicializar variable x a cero
4: ST 0,0(5)
* global: almacenar en direccion 0
* <- declaracion
* -> asignacion
* -> constante
5: LDC 0,42(0)
* cargar constante: 42
* <- constante
6: ST 0,0(5)
* asignacion: almaceno el valor para el id x
* <- asignacion
* -> escribir
* -> identificador
7: LD 0,0(5)
* cargar valor de identificador: x
* <- identificador
8: OUT 0,0,0
* escribir: genero la salida de la expresion
* <- escribir
* -> escribir
* -> string
* String: "Hola"
9: LDC 0,72(0)
* string: cargar caracter 'H'
10: OUT 0,0,0
* string: escribir caracter
11: LDC 0,111(0)
* string: cargar caracter 'o'
12: OUT 0,0,0
* string: escribir caracter
13: LDC 0,108(0)
* string: cargar caracter 'l'
14: OUT 0,0,0
* string: escribir caracter
15: LDC 0,97(0)
* string: cargar caracter 'a'
16: OUT 0,0,0
* string: escribir caracter
* <- string
17: OUT 0,0,0
* escribir: genero la salida de la expresion
* <- escribir
* <- programa
* Fin de la ejecucion.
18: HALT 0,0,0
