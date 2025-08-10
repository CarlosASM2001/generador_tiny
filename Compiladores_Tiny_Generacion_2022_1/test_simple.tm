*      Compilacion TINY EXTENDIDO para el codigo objeto TM
*      Archivo: programa_extendido.tiny
*      Preludio estandar:
0:       LD       6,0(0)      cargar la maxima direccion desde la localidad 0
1:       ST       0,0(0)      limpio el registro de la localidad 0
2:       LDC       5,0(0)      GP apunta al inicio de variables globales (direccion 0)
*      Total de memoria reservada para variables: 1 posiciones
*      -> programa
*      -> declaracion: x
*      Declaracion de variable: x (global)
3:       LDC       0,0(0)      global: inicializar variable x a cero
4:       ST       0,0(5)      global: almacenar en direccion 0
*      <- declaracion
*      -> escribir
*      -> string
*      String: "Ingrese un numero: "
5:       LDC       0,73(0)      string: cargar caracter 'I'
6:       OUT       0,0,0      string: escribir caracter
7:       LDC       0,110(0)      string: cargar caracter 'n'
8:       OUT       0,0,0      string: escribir caracter
9:       LDC       0,103(0)      string: cargar caracter 'g'
10:       OUT       0,0,0      string: escribir caracter
11:       LDC       0,114(0)      string: cargar caracter 'r'
12:       OUT       0,0,0      string: escribir caracter
13:       LDC       0,101(0)      string: cargar caracter 'e'
14:       OUT       0,0,0      string: escribir caracter
15:       LDC       0,115(0)      string: cargar caracter 's'
16:       OUT       0,0,0      string: escribir caracter
17:       LDC       0,101(0)      string: cargar caracter 'e'
18:       OUT       0,0,0      string: escribir caracter
19:       LDC       0,32(0)      string: cargar caracter ' '
20:       OUT       0,0,0      string: escribir caracter
21:       LDC       0,117(0)      string: cargar caracter 'u'
22:       OUT       0,0,0      string: escribir caracter
23:       LDC       0,110(0)      string: cargar caracter 'n'
24:       OUT       0,0,0      string: escribir caracter
25:       LDC       0,32(0)      string: cargar caracter ' '
26:       OUT       0,0,0      string: escribir caracter
27:       LDC       0,110(0)      string: cargar caracter 'n'
28:       OUT       0,0,0      string: escribir caracter
29:       LDC       0,117(0)      string: cargar caracter 'u'
30:       OUT       0,0,0      string: escribir caracter
31:       LDC       0,109(0)      string: cargar caracter 'm'
32:       OUT       0,0,0      string: escribir caracter
33:       LDC       0,101(0)      string: cargar caracter 'e'
34:       OUT       0,0,0      string: escribir caracter
35:       LDC       0,114(0)      string: cargar caracter 'r'
36:       OUT       0,0,0      string: escribir caracter
37:       LDC       0,111(0)      string: cargar caracter 'o'
38:       OUT       0,0,0      string: escribir caracter
39:       LDC       0,58(0)      string: cargar caracter ':'
40:       OUT       0,0,0      string: escribir caracter
41:       LDC       0,32(0)      string: cargar caracter ' '
42:       OUT       0,0,0      string: escribir caracter
*      <- string
43:       OUT       0,0,0      escribir: genero la salida de la expresion
*      <- escribir
*      -> leer
44:       IN       0,0,0      leer: lee un valor entero 
45:       ST       0,0(5)      leer: almaceno el valor entero leido en el id x
*      <- leer
*      -> escribir
*      -> string
*      String: "El numero ingresado es: "
46:       LDC       0,69(0)      string: cargar caracter 'E'
47:       OUT       0,0,0      string: escribir caracter
48:       LDC       0,108(0)      string: cargar caracter 'l'
49:       OUT       0,0,0      string: escribir caracter
50:       LDC       0,32(0)      string: cargar caracter ' '
51:       OUT       0,0,0      string: escribir caracter
52:       LDC       0,110(0)      string: cargar caracter 'n'
53:       OUT       0,0,0      string: escribir caracter
54:       LDC       0,117(0)      string: cargar caracter 'u'
55:       OUT       0,0,0      string: escribir caracter
56:       LDC       0,109(0)      string: cargar caracter 'm'
57:       OUT       0,0,0      string: escribir caracter
58:       LDC       0,101(0)      string: cargar caracter 'e'
59:       OUT       0,0,0      string: escribir caracter
60:       LDC       0,114(0)      string: cargar caracter 'r'
61:       OUT       0,0,0      string: escribir caracter
62:       LDC       0,111(0)      string: cargar caracter 'o'
63:       OUT       0,0,0      string: escribir caracter
64:       LDC       0,32(0)      string: cargar caracter ' '
65:       OUT       0,0,0      string: escribir caracter
66:       LDC       0,105(0)      string: cargar caracter 'i'
67:       OUT       0,0,0      string: escribir caracter
68:       LDC       0,110(0)      string: cargar caracter 'n'
69:       OUT       0,0,0      string: escribir caracter
70:       LDC       0,103(0)      string: cargar caracter 'g'
71:       OUT       0,0,0      string: escribir caracter
72:       LDC       0,114(0)      string: cargar caracter 'r'
73:       OUT       0,0,0      string: escribir caracter
74:       LDC       0,101(0)      string: cargar caracter 'e'
75:       OUT       0,0,0      string: escribir caracter
76:       LDC       0,115(0)      string: cargar caracter 's'
77:       OUT       0,0,0      string: escribir caracter
78:       LDC       0,97(0)      string: cargar caracter 'a'
79:       OUT       0,0,0      string: escribir caracter
80:       LDC       0,100(0)      string: cargar caracter 'd'
81:       OUT       0,0,0      string: escribir caracter
82:       LDC       0,111(0)      string: cargar caracter 'o'
83:       OUT       0,0,0      string: escribir caracter
84:       LDC       0,32(0)      string: cargar caracter ' '
85:       OUT       0,0,0      string: escribir caracter
86:       LDC       0,101(0)      string: cargar caracter 'e'
87:       OUT       0,0,0      string: escribir caracter
88:       LDC       0,115(0)      string: cargar caracter 's'
89:       OUT       0,0,0      string: escribir caracter
90:       LDC       0,58(0)      string: cargar caracter ':'
91:       OUT       0,0,0      string: escribir caracter
92:       LDC       0,32(0)      string: cargar caracter ' '
93:       OUT       0,0,0      string: escribir caracter
*      <- string
94:       OUT       0,0,0      escribir: genero la salida de la expresion
*      <- escribir
*      -> escribir
*      -> identificador
95:       LD       0,0(5)      cargar valor de identificador: x
*      <- identificador
96:       OUT       0,0,0      escribir: genero la salida de la expresion
*      <- escribir
*      <- programa
*      Fin de la ejecucion.
97:       HALT       0,0,0      
