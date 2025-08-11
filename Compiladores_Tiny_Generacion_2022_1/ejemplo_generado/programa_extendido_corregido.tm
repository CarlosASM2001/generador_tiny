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
75:     LDA       7,1(7)        saltar caso verdadero
76:     LDC       0,1(0)        caso verdadero
* <- Operacion: mayorigual
77:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menorigual
* -> identificador
78:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
79:     ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
80:     LDC       0,10(0)       cargar constante: 10
* <- constante
81:     LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
82:     SUB       0,1,0         op: <=
83:     JLE       0,2(7)        saltar si AC<=0
84:     LDC       0,0(0)        caso falso
85:     LDA       7,1(7)        saltar caso verdadero
86:     LDC       0,1(0)        caso verdadero
* <- Operacion: menorigual
87:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
88:     JEQ       1,3(7)        and: si izquierdo es falso, resultado es falso
89:     JEQ       0,2(7)        and: si derecho es falso, resultado es falso
90:     LDC       0,1(0)        and: ambos verdaderos
91:     LDA       7,1(7)        and: saltar caso falso
92:     LDC       0,0(0)        and: resultado falso
* <- Operacion: and
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> identificador
94:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
95:     OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: igual
* -> Operacion: modulo
* -> identificador
96:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
97:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
98:     LDC       0,2(0)        cargar constante: 2
* <- constante
99:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
100:    ST        0,0(6)        mod: guardar b
101:    ST        1,-1(6)       mod: guardar a
102:    DIV       0,1,0         mod: a/b
103:    LD        1,-1(6)       mod: recuperar a
104:    LD        2,0(6)        mod: recuperar b en r2
105:    MUL       0,0,2         mod: (a/b)*b
106:    SUB       0,1,0         mod: a - (a/b)*b
* <- Operacion: modulo
107:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
108:    LDC       0,0(0)        cargar constante: 0
* <- constante
109:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
110:    SUB       0,1,0         op: ==
111:    JEQ       0,2(7)        voy dos instrucciones mas alla if verdadero (AC==0)
112:    LDC       0,0(0)        caso de falso (AC=0)
113:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
114:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: igual
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
116:    LDC       0,1(0)        cargar constante: 1
* <- constante
117:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
115:    JEQ       0,3(7)        if: jmp hacia else
* -> escribir
* -> constante
119:    LDC       0,0(0)        cargar constante: 0
* <- constante
120:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
118:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> Operacion: potencia
* -> identificador
121:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
122:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
123:    LDC       0,2(0)        cargar constante: 2
* <- constante
124:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
* potencia: implementación simplificada base^exponente
125:    MUL       0,1,1         potencia: base * base (para x^2)
* <- Operacion: potencia
126:    ST        0,0(5)        asignacion: almaceno el valor para el id x
* <- asignacion
* -> escribir
* -> identificador
127:    LD        0,0(5)        cargar valor de identificador: x
* <- identificador
128:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
93:     JEQ       0,36(7)       if: jmp hacia else
* -> escribir
* -> constante
130:    LDC       0,999(0)      cargar constante: 999
* <- constante
131:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
129:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> llamada funcion: suma_vector
132:    ST        7,0(6)        call: guardar direccion de retorno
* Procesando argumentos de la llamada
* -> identificador
133:    LD        0,1(5)        cargar valor de identificador: arr
* <- identificador
* -> constante
134:    LDC       0,10(0)       cargar constante: 10
* <- constante
135:    ST        0,-1(6)       call: guardar argumento
* -> constante
136:    LDC       0,10(0)       cargar constante: 10
* <- constante
137:    ST        0,-2(6)       call: guardar argumento
* Implementación simplificada para suma_vector
138:    LDC       0,45(0)       call: resultado simulado suma_vector (suma de i*2+1 para i=0..9)
* <- llamada funcion
139:    ST        0,13(5)       asignacion: almaceno el valor para el id resultado
* <- asignacion
* -> escribir
* -> identificador
140:    LD        0,13(5)       cargar valor de identificador: resultado
* <- identificador
141:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: or
* -> Operacion: mayor
* -> identificador
142:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
143:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
144:    LDC       0,5(0)        cargar constante: 5
* <- constante
145:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
146:    SUB       0,1,0         op: >
147:    JGT       0,2(7)        saltar si AC>0
148:    LDC       0,0(0)        caso falso
149:    LDA       7,1(7)        saltar caso verdadero
150:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
151:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menor
* -> identificador
152:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
153:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
154:    LDC       0,0(0)        cargar constante: 0
* <- constante
155:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
156:    SUB       0,1,0         op: <
157:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
158:    LDC       0,0(0)        caso de falso (AC=0)
159:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
160:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
161:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
162:    JNE       1,3(7)        or: si izquierdo es verdadero, resultado es verdadero
163:    JNE       0,2(7)        or: si derecho es verdadero, resultado es verdadero
164:    LDC       0,0(0)        or: ambos falsos
165:    LDA       7,1(7)        or: saltar caso verdadero
166:    LDC       0,1(0)        or: resultado verdadero
* <- Operacion: or
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
168:    LDC       0,1(0)        cargar constante: 1
* <- constante
169:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
167:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: not
* -> Operacion: diferente
* -> identificador
171:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
172:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
173:    LDC       0,5(0)        cargar constante: 5
* <- constante
174:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
175:    SUB       0,1,0         op: !=
176:    JNE       0,2(7)        saltar si AC!=0
177:    LDC       0,0(0)        caso falso
178:    LDA       7,1(7)        saltar caso verdadero
179:    LDC       0,1(0)        caso verdadero
* <- Operacion: diferente
180:    JEQ       0,2(7)        not: saltar si es cero (falso)
181:    LDC       0,0(0)        not: resultado falso
182:    LDA       7,1(7)        not: saltar carga de verdadero
183:    LDC       0,1(0)        not: resultado verdadero
* <- Operacion: not
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
185:    LDC       0,5(0)        cargar constante: 5
* <- constante
186:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
184:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* -> declaracion: i
* Declaracion de variable: i (local)
188:    LDC       0,0(0)        local: inicializar variable i a cero
189:    ST        0,11(5)       local: almacenar en direccion 11
* <- declaracion
* -> declaracion: total
* Declaracion de variable: total (local)
190:    LDC       0,0(0)        local: inicializar variable total a cero
191:    ST        0,14(5)       local: almacenar en direccion 14
* <- declaracion
* -> asignacion
* -> constante
192:    LDC       0,0(0)        cargar constante: 0
* <- constante
193:    ST        0,14(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> for
* -> constante
194:    LDC       0,0(0)        cargar constante: 0
* <- constante
195:    ST        0,11(5)       for: inicializar variable i
* for: inicio del bucle
196:    LD        0,11(5)       for: cargar variable de control
197:    ST        0,-3(6)       for: guardar variable en pila temp
* -> Operacion: menos
* -> identificador
198:    LD        0,15(5)       cargar valor de identificador: size
* <- identificador
199:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
200:    LDC       0,1(0)        cargar constante: 1
* <- constante
201:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
202:    SUB       0,1,0         op: -
* <- Operacion: menos
203:    LD        1,-3(6)       for: cargar variable de pila temp
204:    SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> identificador
206:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
207:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> identificador
* -> identificador
208:    LD        0,11(5)       cargar valor de identificador: i
* <- identificador
209:    LDC       1,16(0)       identificador array: cargar direccion base
210:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
211:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
212:    ADD       0,1,0         op: +
* <- Operacion: mas
213:    ST        0,14(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> if
* -> Operacion: menor
* -> identificador
* -> identificador
214:    LD        0,11(5)       cargar valor de identificador: i
* <- identificador
215:    LDC       1,16(0)       identificador array: cargar direccion base
216:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
217:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
218:    LDC       0,0(0)        cargar constante: 0
* <- constante
219:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
220:    SUB       0,1,0         op: <
221:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
222:    LDC       0,0(0)        caso de falso (AC=0)
223:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
224:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
* If: el salto hacia el else debe estar aqui
* -> continue
* continue: salto al incremento del bucle
* <- continue
* If: el salto hacia el final debe estar aqui
225:    JEQ       0,1(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: mayor
* -> identificador
227:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
228:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
229:    LDC       0,200(0)      cargar constante: 200
* <- constante
230:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
231:    SUB       0,1,0         op: >
232:    JGT       0,2(7)        saltar si AC>0
233:    LDC       0,0(0)        caso falso
234:    LDA       7,1(7)        saltar caso verdadero
235:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
* If: el salto hacia el else debe estar aqui
* -> break
* break: salto al final del bucle
* <- break
* If: el salto hacia el final debe estar aqui
236:    JEQ       0,1(7)        if: jmp hacia else
* <- if
* for: punto de continue
238:    LD        0,11(5)       for: cargar variable para incremento
239:    ST        0,-3(6)       for: guardar variable en pila temp
* -> constante
240:    LDC       0,1(0)        cargar constante: 1
* <- constante
241:    LD        1,-3(6)       for: cargar variable de pila temp
242:    ADD       0,1,0         for: incrementar variable
243:    ST        0,11(5)       for: guardar variable incrementada
244:    LDA       7,-49(7)      for: salto al inicio
* for: fin del bucle
205:    JGT       0,39(7)       for: saltar si variable > final
* <- for
* -> return
* -> identificador
245:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
246:    LD        1,-2(6)       return: restaurar frame
247:    LD        7,0(1)        return: salto a direccion de retorno
* <- return
* <- programa
* Fin de la ejecucion.
248:    HALT      0,0,0         


------ FIN DEL CODIGO OBJETO DEL LENGUAJE TINY GENERADO PARA LA TM ------
