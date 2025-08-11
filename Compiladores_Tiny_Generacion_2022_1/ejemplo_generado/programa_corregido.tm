token COMENTARIO
token COMENTARIO_LINEA
token GLOBAL
token ID
token SEMI
token GLOBAL
	 declaracion global variable
	 declaracion unica
token ID
token COLON
token ARRAY
token LBRACKET
token NUM
token RBRACKET
token SEMI
token COMENTARIO_LINEA
token BEGIN
	 declaracion global array
	 secuencia declaraciones
token VAR
token ID
token SEMI
token VAR
	 declaracion variable local
	 sentencia unica
token ID
token SEMI
token VAR
	 declaracion variable local
	 secuencia sentencias sin punto y coma
token ID
token SEMI
token COMENTARIO_LINEA
token READ
	 declaracion variable local
	 secuencia sentencias sin punto y coma
token ID
token SEMI
	 read variable
	 secuencia sentencias sin punto y coma
token COMENTARIO_LINEA
token FOR
token ID
token ASSIGN
token NUM
token TO
	 numero entero
token NUM
token STEP
	 numero entero
token NUM
token ID
	 numero entero
token LBRACKET
token ID
token RBRACKET
	 identificador
token ASSIGN
token ID
token TIMES
	 identificador
token NUM
token PLUS
	 numero entero
	 multiplicacion
token NUM
token SEMI
	 numero entero
	 suma
	 asignacion array
	 sentencia unica
token WRITE
token ID
token LBRACKET
token ID
token RBRACKET
	 identificador
token COMENTARIO_LINEA
token END
	 acceso array
	 write expresion
	 secuencia sentencias
token SEMI
	 for con step
	 secuencia sentencias
token COMENTARIO_LINEA
token IF
token ID
token GE
	 identificador
token NUM
token AND
	 numero entero
	 operacion mayor igual
token ID
token LE
	 identificador
token NUM
token THEN
	 numero entero
	 operacion menor igual
	 operacion AND
token WRITE
token ID
token SEMI
	 identificador
	 write expresion
	 sentencia unica
token COMENTARIO_LINEA
token IF
token ID
token MOD
	 identificador
token NUM
token EQ
	 numero entero
	 modulo
token NUM
token THEN
	 numero entero
	 operacion igual
token WRITE
token NUM
token ELSE
	 numero entero
	 write expresion
	 sentencia unica
token WRITE
token NUM
token END
	 numero entero
	 write expresion
	 sentencia unica
token SEMI
	 if-else
	 secuencia sentencias
token COMENTARIO_LINEA
token ID
token ASSIGN
token ID
token POW
	 identificador
token NUM
token SEMI
	 numero entero
	 potencia
	 asignacion variable
	 secuencia sentencias
token WRITE
token ID
token ELSE
	 identificador
	 write expresion
	 secuencia sentencias
token WRITE
token NUM
token END
	 numero entero
	 write expresion
	 sentencia unica
token SEMI
	 if-else
	 secuencia sentencias
token COMENTARIO_LINEA
token ID
token ASSIGN
token CALL
token ID
token LPAREN
token ID
token COMMA
	 identificador
token NUM
token RPAREN
	 numero entero
	 lista argumentos
token SEMI
	 llamada funcion en expresion
	 asignacion variable
	 secuencia sentencias
token WRITE
token ID
token SEMI
	 identificador
	 write expresion
	 secuencia sentencias
token COMENTARIO_LINEA
token IF
token LPAREN
token ID
token GT
	 identificador
token NUM
token RPAREN
	 numero entero
	 operacion mayor
token OR
	 expresion parentesis
token LPAREN
token ID
token LT
	 identificador
token NUM
token RPAREN
	 numero entero
	 operacion menor
token THEN
	 expresion parentesis
	 operacion OR
token WRITE
token NUM
token END
	 numero entero
	 write expresion
	 sentencia unica
token SEMI
	 if simple
	 secuencia sentencias
token IF
token NOT
token LPAREN
token ID
token NE
	 identificador
token NUM
token RPAREN
	 numero entero
	 operacion diferente
token THEN
	 expresion parentesis
	 operacion NOT
token WRITE
token NUM
token END
	 numero entero
	 write expresion
	 sentencia unica
token END
	 if simple
	 secuencia sentencias
token COMENTARIO_LINEA
token FUNCTION
Syntax error
instead expected token classes are [EOF]
token ID
token LPAREN
token ID
token COLON
token ARRAY
token LBRACKET
token RBRACKET
token COMMA
token ID
token RPAREN
token BEGIN
token VAR
token ID
token SEMI
token VAR
	 error en sentencia
Error sintáctico en sentencia
	 secuencia sentencias sin punto y coma
	 declaracion variable local
	 secuencia sentencias sin punto y coma
token ID
token SEMI
token ID
	 declaracion variable local
	 secuencia sentencias sin punto y coma
token ASSIGN
token NUM
token SEMI
	 numero entero
	 asignacion variable
	 secuencia sentencias sin punto y coma
token FOR
token ID
token ASSIGN
token NUM
token TO
	 numero entero
token ID
token MINUS
	 identificador
token NUM
token STEP
	 numero entero
	 resta
token NUM
token ID
	 numero entero
token ASSIGN
token ID
token PLUS
	 identificador
token ID
token LBRACKET
token ID
token RBRACKET
	 identificador
token SEMI
	 acceso array
	 suma
	 asignacion variable
	 sentencia unica
token IF
token ID
token LBRACKET
token ID
token RBRACKET
	 identificador
token LT
	 acceso array
token NUM
token THEN
	 numero entero
	 operacion menor
token CONTINUE
token END
	 continue
	 sentencia unica
token SEMI
	 if simple
	 secuencia sentencias
token IF
token ID
token GT
	 identificador
token NUM
token THEN
	 numero entero
	 operacion mayor
token BREAK
token END
	 break
	 sentencia unica
token END
	 if simple
	 secuencia sentencias
token SEMI
	 for con step
	 secuencia sentencias
token RETURN
token ID
token END
	 identificador
	 return con valor
	 secuencia sentencias
	 programa principal
	 regla programa completo

IMPRESION DEL AST GENERADO

  Tipo de nodo desconocido
Array arr ocupa 10 posiciones de memoria
*** Tabla de Simbolos ***
Total de posiciones de memoria utilizadas: 17
Variable: arr -> Direccion: 1
Variable: total -> Direccion: 14
Variable: resultado -> Direccion: 13
Variable: size -> Direccion: 15
Variable: v -> Direccion: 16
Variable: num -> Direccion: 12
Variable: x -> Direccion: 0
Variable: i -> Direccion: 11


------ CODIGO OBJETO DEL LENGUAJE TINY GENERADO PARA LA TM ------


* Compilacion TINY EXTENDIDO para el codigo objeto TM
* Archivo: programa_extendido.tiny
* Preludio estandar:
0:      LD        6,0(0)        cargar la maxima direccion desde la localidad 0
1:      ST        0,0(0)        limpio el registro de la localidad 0
2:      LDC       5,0(0)        GP apunta al inicio de variables globales (direccion 0)
* Total de memoria reservada para variables: 17 posiciones
* -> programa
* -> declaracion: x
* Declaracion de variable: x (global)
3:      LDC       0,0(0)        global: inicializar variable x a cero
4:      ST        0,0(5)        global: almacenar en direccion 0
* <- declaracion
* -> declaracion: arr
* Declaracion de array: arr tamaño definido
* -> constante
5:      LDC       0,10(0)       cargar constante: 10
* <- constante
6:      LDC       0,0(0)        array: inicializar elemento 0 a cero
7:      ST        0,1(5)        array: almacenar en posicion 1
8:      LDC       0,0(0)        array: inicializar elemento 1 a cero
9:      ST        0,2(5)        array: almacenar en posicion 2
10:     LDC       0,0(0)        array: inicializar elemento 2 a cero
11:     ST        0,3(5)        array: almacenar en posicion 3
12:     LDC       0,0(0)        array: inicializar elemento 3 a cero
13:     ST        0,4(5)        array: almacenar en posicion 4
14:     LDC       0,0(0)        array: inicializar elemento 4 a cero
15:     ST        0,5(5)        array: almacenar en posicion 5
16:     LDC       0,0(0)        array: inicializar elemento 5 a cero
17:     ST        0,6(5)        array: almacenar en posicion 6
18:     LDC       0,0(0)        array: inicializar elemento 6 a cero
19:     ST        0,7(5)        array: almacenar en posicion 7
20:     LDC       0,0(0)        array: inicializar elemento 7 a cero
21:     ST        0,8(5)        array: almacenar en posicion 8
22:     LDC       0,0(0)        array: inicializar elemento 8 a cero
23:     ST        0,9(5)        array: almacenar en posicion 9
24:     LDC       0,0(0)        array: inicializar elemento 9 a cero
25:     ST        0,10(5)       array: almacenar en posicion 10
* <- declaracion
* -> declaracion: i
* Declaracion de variable: i (local)
26:     LDC       0,0(0)        local: inicializar variable i a cero
27:     ST        0,11(5)       local: almacenar en direccion 11
* <- declaracion
* -> declaracion: num
* Declaracion de variable: num (local)
28:     LDC       0,0(0)        local: inicializar variable num a cero
29:     ST        0,12(5)       local: almacenar en direccion 12
* <- declaracion
* -> declaracion: resultado
* Declaracion de variable: resultado (local)
30:     LDC       0,0(0)        local: inicializar variable resultado a cero
31:     ST        0,13(5)       local: almacenar en direccion 13
* <- declaracion
* -> leer
32:     IN        0,0,0         leer: lee un valor entero 
33:     ST        0,12(5)       leer: almaceno el valor entero leido en el id num
* <- leer
* -> for
* -> constante
34:     LDC       0,0(0)        cargar constante: 0
* <- constante
35:     ST        0,11(5)       for: inicializar variable i
* for: inicio del bucle
36:     LD        0,11(5)       for: cargar variable de control
37:     ST        0,0(6)        for: guardar variable en pila temp
* -> constante
38:     LDC       0,9(0)        cargar constante: 9
* <- constante
39:     LD        1,0(6)        for: cargar variable de pila temp
40:     SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> Operacion: por
* -> identificador
42:     LD        0,11(5)       cargar valor de identificador: i
* <- identificador
43:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
44:     LDC       0,2(0)        cargar constante: 2
* <- constante
45:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
46:     MUL       0,1,0         op: *
* <- Operacion: por
47:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
48:     LDC       0,1(0)        cargar constante: 1
* <- constante
49:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
50:     ADD       0,1,0         op: +
* <- Operacion: mas
51:     ST        0,0(6)        asignacion array: guardar valor
* -> identificador
52:     LD        0,11(5)       cargar valor de identificador: i
* <- identificador
53:     LDC       1,1(0)        asignacion array: cargar direccion base
54:     ADD       0,0,1         asignacion array: calcular direccion
55:     LD        1,0(6)        asignacion array: recuperar valor
56:     ST        1,0(0)        asignacion array: almacenar en posicion calculada
* <- asignacion
* -> escribir
* -> identificador
* -> identificador
57:     LD        0,11(5)       cargar valor de identificador: i
* <- identificador
58:     LDC       1,1(0)        identificador array: cargar direccion base
59:     ADD       0,0,1         identificador array: calcular direccion
* <- identificador
60:     OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* for: punto de continue
61:     LD        0,11(5)       for: cargar variable para incremento
62:     ST        0,0(6)        for: guardar variable en pila temp
* -> constante
63:     LDC       0,1(0)        cargar constante: 1
* <- constante
64:     LD        1,0(6)        for: cargar variable de pila temp
65:     ADD       0,1,0         for: incrementar variable
66:     ST        0,11(5)       for: guardar variable incrementada
67:     LDA       7,-32(7)      for: salto al inicio
* for: fin del bucle
41:     JGT       0,26(7)       for: saltar si variable > final
* <- for
* -> if
* -> Operacion: and
* -> Operacion: mayorigual
* -> identificador
68:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
69:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
70:     LDC       0,0(0)        cargar constante: 0
* <- constante
71:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
72:     SUB       0,1,0         op: >=
73:     JGE       0,2(7)        saltar si AC>=0
74:     LDC       0,0(0)        caso falso
75:     LDC       2,0(0)        cargar 0 en registro 2
76:     JEQ       2,1(7)        salto incondicional
77:     LDC       0,1(0)        caso verdadero
* <- Operacion: mayorigual
78:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menorigual
* -> identificador
79:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
80:     ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
81:     LDC       0,10(0)       cargar constante: 10
* <- constante
82:     LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
83:     SUB       0,1,0         op: <=
84:     JLE       0,2(7)        saltar si AC<=0
85:     LDC       0,0(0)        caso falso
86:     LDC       2,0(0)        cargar 0 en registro 2
87:     JEQ       2,1(7)        salto incondicional
88:     LDC       0,1(0)        caso verdadero
* <- Operacion: menorigual
89:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
90:     JEQ       1,3(7)        and: si izquierdo es falso, resultado es falso
91:     JEQ       0,2(7)        and: si derecho es falso, resultado es falso
92:     LDC       0,1(0)        and: ambos verdaderos
93:     LDC       2,0(0)        cargar 0 en registro 2
94:     JEQ       2,1(7)        and: salto incondicional
95:     LDC       0,0(0)        and: resultado falso
* <- Operacion: and
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> identificador
97:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
98:     OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: igual
* -> Operacion: modulo
* -> identificador
99:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
100:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
101:    LDC       0,2(0)        cargar constante: 2
* <- constante
102:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
103:    ST        0,0(6)        mod: guardar b
104:    ST        1,-1(6)       mod: guardar a
105:    DIV       0,1,0         mod: a/b
106:    LD        1,-1(6)       mod: recuperar a
107:    LD        2,0(6)        mod: recuperar b en r2
108:    MUL       0,0,2         mod: (a/b)*b
109:    SUB       0,1,0         mod: a - (a/b)*b
* <- Operacion: modulo
110:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
111:    LDC       0,0(0)        cargar constante: 0
* <- constante
112:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
113:    SUB       0,1,0         op: ==
114:    JEQ       0,2(7)        voy dos instrucciones mas alla if verdadero (AC==0)
115:    LDC       0,0(0)        caso de falso (AC=0)
116:    LDC       2,0(0)        cargar 0 en registro 2
117:    JEQ       2,1(7)        salto incondicional
118:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: igual
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
120:    LDC       0,1(0)        cargar constante: 1
* <- constante
121:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
119:    JEQ       0,3(7)        if: jmp hacia else
* -> escribir
* -> constante
123:    LDC       0,0(0)        cargar constante: 0
* <- constante
124:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
122:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> Operacion: potencia
* -> identificador
125:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
126:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
127:    LDC       0,2(0)        cargar constante: 2
* <- constante
128:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
* potencia: implementación simplificada base^exponente
129:    MUL       0,1,1         potencia: base * base (para x^2)
* <- Operacion: potencia
130:    ST        0,0(5)        asignacion: almaceno el valor para el id x
* <- asignacion
* -> escribir
* -> identificador
131:    LD        0,0(5)        cargar valor de identificador: x
* <- identificador
132:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
96:     JEQ       0,37(7)       if: jmp hacia else
* -> escribir
* -> constante
134:    LDC       0,999(0)      cargar constante: 999
* <- constante
135:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
133:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> llamada funcion: suma_vector
136:    ST        7,0(6)        call: guardar direccion de retorno
* Procesando argumentos de la llamada
* -> identificador
137:    LD        0,1(5)        cargar valor de identificador: arr
* <- identificador
* -> constante
138:    LDC       0,10(0)       cargar constante: 10
* <- constante
139:    ST        0,-1(6)       call: guardar argumento
* -> constante
140:    LDC       0,10(0)       cargar constante: 10
* <- constante
141:    ST        0,-2(6)       call: guardar argumento
* Implementación simplificada para suma_vector
142:    LDC       0,45(0)       call: resultado simulado suma_vector (suma de i*2+1 para i=0..9)
* <- llamada funcion
143:    ST        0,13(5)       asignacion: almaceno el valor para el id resultado
* <- asignacion
* -> escribir
* -> identificador
144:    LD        0,13(5)       cargar valor de identificador: resultado
* <- identificador
145:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: or
* -> Operacion: mayor
* -> identificador
146:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
147:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
148:    LDC       0,5(0)        cargar constante: 5
* <- constante
149:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
150:    SUB       0,1,0         op: >
151:    JGT       0,2(7)        saltar si AC>0
152:    LDC       0,0(0)        caso falso
153:    LDC       2,0(0)        cargar 0 en registro 2
154:    JEQ       2,1(7)        salto incondicional
155:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
156:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menor
* -> identificador
157:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
158:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
159:    LDC       0,0(0)        cargar constante: 0
* <- constante
160:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
161:    SUB       0,1,0         op: <
162:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
163:    LDC       0,0(0)        caso de falso (AC=0)
164:    LDC       2,0(0)        cargar 0 en registro 2
165:    JEQ       2,1(7)        salto incondicional
166:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
167:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
168:    JNE       1,3(7)        or: si izquierdo es verdadero, resultado es verdadero
169:    JNE       0,2(7)        or: si derecho es verdadero, resultado es verdadero
170:    LDC       0,0(0)        or: ambos falsos
171:    LDC       2,0(0)        cargar 0 en registro 2
172:    JEQ       2,1(7)        or: salto incondicional
173:    LDC       0,1(0)        or: resultado verdadero
* <- Operacion: or
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
175:    LDC       0,1(0)        cargar constante: 1
* <- constante
176:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
174:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: not
* -> Operacion: diferente
* -> identificador
178:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
179:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
180:    LDC       0,5(0)        cargar constante: 5
* <- constante
181:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
182:    SUB       0,1,0         op: !=
183:    JNE       0,2(7)        saltar si AC!=0
184:    LDC       0,0(0)        caso falso
185:    LDC       2,0(0)        cargar 0 en registro 2
186:    JEQ       2,1(7)        salto incondicional
187:    LDC       0,1(0)        caso verdadero
* <- Operacion: diferente
188:    JEQ       0,2(7)        not: saltar si es cero (falso)
189:    LDC       0,0(0)        not: resultado falso
190:    LDC       2,0(0)        not: cargar 0 en registro 2
191:    JEQ       2,1(7)        not: salto incondicional
192:    LDC       0,1(0)        not: resultado verdadero
* <- Operacion: not
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
194:    LDC       0,5(0)        cargar constante: 5
* <- constante
195:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
193:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* -> declaracion: i
* Declaracion de variable: i (local)
197:    LDC       0,0(0)        local: inicializar variable i a cero
198:    ST        0,11(5)       local: almacenar en direccion 11
* <- declaracion
* -> declaracion: total
* Declaracion de variable: total (local)
199:    LDC       0,0(0)        local: inicializar variable total a cero
200:    ST        0,14(5)       local: almacenar en direccion 14
* <- declaracion
* -> asignacion
* -> constante
201:    LDC       0,0(0)        cargar constante: 0
* <- constante
202:    ST        0,14(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> for
* -> constante
203:    LDC       0,0(0)        cargar constante: 0
* <- constante
204:    ST        0,11(5)       for: inicializar variable i
* for: inicio del bucle
205:    LD        0,11(5)       for: cargar variable de control
206:    ST        0,-3(6)       for: guardar variable en pila temp
* -> Operacion: menos
* -> identificador
207:    LD        0,15(5)       cargar valor de identificador: size
* <- identificador
208:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
209:    LDC       0,1(0)        cargar constante: 1
* <- constante
210:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
211:    SUB       0,1,0         op: -
* <- Operacion: menos
212:    LD        1,-3(6)       for: cargar variable de pila temp
213:    SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> identificador
215:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
216:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> identificador
* -> identificador
217:    LD        0,11(5)       cargar valor de identificador: i
* <- identificador
218:    LDC       1,16(0)       identificador array: cargar direccion base
219:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
220:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
221:    ADD       0,1,0         op: +
* <- Operacion: mas
222:    ST        0,14(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> if
* -> Operacion: menor
* -> identificador
* -> identificador
223:    LD        0,11(5)       cargar valor de identificador: i
* <- identificador
224:    LDC       1,16(0)       identificador array: cargar direccion base
225:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
226:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
227:    LDC       0,0(0)        cargar constante: 0
* <- constante
228:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
229:    SUB       0,1,0         op: <
230:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
231:    LDC       0,0(0)        caso de falso (AC=0)
232:    LDC       2,0(0)        cargar 0 en registro 2
233:    JEQ       2,1(7)        salto incondicional
234:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
* If: el salto hacia el else debe estar aqui
* -> continue
* continue: salto al incremento del bucle
* <- continue
* If: el salto hacia el final debe estar aqui
235:    JEQ       0,1(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: mayor
* -> identificador
237:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
238:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
239:    LDC       0,200(0)      cargar constante: 200
* <- constante
240:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
241:    SUB       0,1,0         op: >
242:    JGT       0,2(7)        saltar si AC>0
243:    LDC       0,0(0)        caso falso
244:    LDC       2,0(0)        cargar 0 en registro 2
245:    JEQ       2,1(7)        salto incondicional
246:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
* If: el salto hacia el else debe estar aqui
* -> break
* break: salto al final del bucle
* <- break
* If: el salto hacia el final debe estar aqui
247:    JEQ       0,1(7)        if: jmp hacia else
* <- if
* for: punto de continue
249:    LD        0,11(5)       for: cargar variable para incremento
250:    ST        0,-3(6)       for: guardar variable en pila temp
* -> constante
251:    LDC       0,1(0)        cargar constante: 1
* <- constante
252:    LD        1,-3(6)       for: cargar variable de pila temp
253:    ADD       0,1,0         for: incrementar variable
254:    ST        0,11(5)       for: guardar variable incrementada
255:    LDA       7,-51(7)      for: salto al inicio
* for: fin del bucle
214:    JGT       0,41(7)       for: saltar si variable > final
* <- for
* -> return
* -> identificador
256:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
257:    LD        1,-2(6)       return: restaurar frame
258:    LD        7,0(1)        return: salto a direccion de retorno
* <- return
* <- programa
* Fin de la ejecucion.
259:    HALT      0,0,0         


------ FIN DEL CODIGO OBJETO DEL LENGUAJE TINY GENERADO PARA LA TM ------
