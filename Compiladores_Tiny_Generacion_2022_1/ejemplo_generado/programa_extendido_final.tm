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
* for: punto de continue
57:     LD        0,11(5)       for: cargar variable para incremento
58:     ST        0,0(6)        for: guardar variable en pila temp
* -> constante
59:     LDC       0,1(0)        cargar constante: 1
* <- constante
60:     LD        1,0(6)        for: cargar variable de pila temp
61:     ADD       0,1,0         for: incrementar variable
62:     ST        0,11(5)       for: guardar variable incrementada
63:     LDA       7,-28(7)      for: salto al inicio
* for: fin del bucle
41:     JGT       0,22(7)       for: saltar si variable > final
* <- for
* -> if
* -> Operacion: and
* -> Operacion: mayorigual
* -> identificador
64:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
65:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
66:     LDC       0,0(0)        cargar constante: 0
* <- constante
67:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
68:     SUB       0,1,0         op: >=
69:     JGE       0,2(7)        saltar si AC>=0
70:     LDC       0,0(0)        caso falso
71:     LDA       7,1(7)        saltar caso verdadero
72:     LDC       0,1(0)        caso verdadero
* <- Operacion: mayorigual
73:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menorigual
* -> identificador
74:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
75:     ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
76:     LDC       0,10(0)       cargar constante: 10
* <- constante
77:     LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
78:     SUB       0,1,0         op: <=
79:     JLE       0,2(7)        saltar si AC<=0
80:     LDC       0,0(0)        caso falso
81:     LDA       7,1(7)        saltar caso verdadero
82:     LDC       0,1(0)        caso verdadero
* <- Operacion: menorigual
83:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
84:     JEQ       1,3(7)        and: si izquierdo es falso, resultado es falso
85:     JEQ       0,2(7)        and: si derecho es falso, resultado es falso
86:     LDC       0,1(0)        and: ambos verdaderos
87:     LDA       7,1(7)        and: saltar caso falso
88:     LDC       0,0(0)        and: resultado falso
* <- Operacion: and
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> identificador
90:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
91:     OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: igual
* -> Operacion: modulo
* -> identificador
92:     LD        0,12(5)       cargar valor de identificador: num
* <- identificador
93:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
94:     LDC       0,2(0)        cargar constante: 2
* <- constante
95:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
96:     ST        0,0(6)        mod: guardar b
97:     ST        1,-1(6)       mod: guardar a
98:     DIV       0,1,0         mod: a/b
99:     LD        1,-1(6)       mod: recuperar a
100:    LD        2,0(6)        mod: recuperar b en r2
101:    MUL       0,0,2         mod: (a/b)*b
102:    SUB       0,1,0         mod: a - (a/b)*b
* <- Operacion: modulo
103:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
104:    LDC       0,0(0)        cargar constante: 0
* <- constante
105:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
106:    SUB       0,1,0         op: ==
107:    JEQ       0,2(7)        voy dos instrucciones mas alla if verdadero (AC==0)
108:    LDC       0,0(0)        caso de falso (AC=0)
109:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
110:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: igual
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
112:    LDC       0,1(0)        cargar constante: 1
* <- constante
113:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
111:    JEQ       0,3(7)        if: jmp hacia else
* -> escribir
* -> constante
115:    LDC       0,0(0)        cargar constante: 0
* <- constante
116:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
114:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> Operacion: potencia
* -> identificador
117:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
118:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
119:    LDC       0,2(0)        cargar constante: 2
* <- constante
120:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
* potencia: implementación de a^b
121:    ST        1,0(6)        potencia: guardar base
122:    MUL       0,1,1         potencia: a * a
* <- Operacion: potencia
123:    ST        0,0(5)        asignacion: almaceno el valor para el id x
* <- asignacion
* -> escribir
* -> identificador
124:    LD        0,0(5)        cargar valor de identificador: x
* <- identificador
125:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
89:     JEQ       0,37(7)       if: jmp hacia else
* -> escribir
* -> constante
127:    LDC       0,999(0)      cargar constante: 999
* <- constante
128:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
126:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> llamada funcion: suma_vector
129:    ST        7,-1(6)       call: guardar direccion de retorno
* Procesando argumentos de la llamada
* -> identificador
130:    LD        0,1(5)        cargar valor de identificador: arr
* <- identificador
* -> constante
131:    LDC       0,10(0)       cargar constante: 10
* <- constante
132:    ST        0,-2(6)       call: guardar argumento
* -> constante
133:    LDC       0,10(0)       cargar constante: 10
* <- constante
134:    ST        0,-3(6)       call: guardar argumento
* Llamada a funcion suma_vector (implementación simplificada)
* <- llamada funcion
135:    ST        0,13(5)       asignacion: almaceno el valor para el id resultado
* <- asignacion
* -> escribir
* -> identificador
136:    LD        0,13(5)       cargar valor de identificador: resultado
* <- identificador
137:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: or
* -> Operacion: mayor
* -> identificador
138:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
139:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
140:    LDC       0,5(0)        cargar constante: 5
* <- constante
141:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
142:    SUB       0,1,0         op: >
143:    JGT       0,2(7)        saltar si AC>0
144:    LDC       0,0(0)        caso falso
145:    LDA       7,1(7)        saltar caso verdadero
146:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
147:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menor
* -> identificador
148:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
149:    ST        0,-5(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
150:    LDC       0,0(0)        cargar constante: 0
* <- constante
151:    LD        1,-5(6)       op: pop o cargo de la pila el valor izquierdo en AC1
152:    SUB       0,1,0         op: <
153:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
154:    LDC       0,0(0)        caso de falso (AC=0)
155:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
156:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
157:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
158:    JNE       1,3(7)        or: si izquierdo es verdadero, resultado es verdadero
159:    JNE       0,2(7)        or: si derecho es verdadero, resultado es verdadero
160:    LDC       0,0(0)        or: ambos falsos
161:    LDA       7,1(7)        or: saltar caso verdadero
162:    LDC       0,1(0)        or: resultado verdadero
* <- Operacion: or
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
164:    LDC       0,1(0)        cargar constante: 1
* <- constante
165:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
163:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: not
* -> Operacion: diferente
* -> identificador
167:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
168:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
169:    LDC       0,5(0)        cargar constante: 5
* <- constante
170:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
171:    SUB       0,1,0         op: !=
172:    JNE       0,2(7)        saltar si AC!=0
173:    LDC       0,0(0)        caso falso
174:    LDA       7,1(7)        saltar caso verdadero
175:    LDC       0,1(0)        caso verdadero
* <- Operacion: diferente
176:    JEQ       0,2(7)        not: saltar si es cero (falso)
177:    LDC       0,0(0)        not: resultado falso
178:    LDA       7,1(7)        not: saltar carga de verdadero
179:    LDC       0,1(0)        not: resultado verdadero
* <- Operacion: not
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
181:    LDC       0,5(0)        cargar constante: 5
* <- constante
182:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
180:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* -> declaracion: i
* Declaracion de variable: i (local)
184:    LDC       0,0(0)        local: inicializar variable i a cero
185:    ST        0,11(5)       local: almacenar en direccion 11
* <- declaracion
* -> declaracion: total
* Declaracion de variable: total (local)
186:    LDC       0,0(0)        local: inicializar variable total a cero
187:    ST        0,14(5)       local: almacenar en direccion 14
* <- declaracion
* -> asignacion
* -> constante
188:    LDC       0,0(0)        cargar constante: 0
* <- constante
189:    ST        0,14(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> for
* -> constante
190:    LDC       0,0(0)        cargar constante: 0
* <- constante
191:    ST        0,11(5)       for: inicializar variable i
* for: inicio del bucle
192:    LD        0,11(5)       for: cargar variable de control
193:    ST        0,-4(6)       for: guardar variable en pila temp
* -> Operacion: menos
* -> identificador
194:    LD        0,15(5)       cargar valor de identificador: size
* <- identificador
195:    ST        0,-5(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
196:    LDC       0,1(0)        cargar constante: 1
* <- constante
197:    LD        1,-5(6)       op: pop o cargo de la pila el valor izquierdo en AC1
198:    SUB       0,1,0         op: -
* <- Operacion: menos
199:    LD        1,-4(6)       for: cargar variable de pila temp
200:    SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> identificador
202:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
203:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> identificador
* -> identificador
204:    LD        0,11(5)       cargar valor de identificador: i
* <- identificador
205:    LDC       1,16(0)       identificador array: cargar direccion base
206:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
207:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
208:    ADD       0,1,0         op: +
* <- Operacion: mas
209:    ST        0,14(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> if
* -> Operacion: menor
* -> identificador
* -> identificador
210:    LD        0,11(5)       cargar valor de identificador: i
* <- identificador
211:    LDC       1,16(0)       identificador array: cargar direccion base
212:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
213:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
214:    LDC       0,0(0)        cargar constante: 0
* <- constante
215:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
216:    SUB       0,1,0         op: <
217:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
218:    LDC       0,0(0)        caso de falso (AC=0)
219:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
220:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
* If: el salto hacia el else debe estar aqui
* -> continue
* continue: salto al incremento del bucle
* <- continue
* If: el salto hacia el final debe estar aqui
221:    JEQ       0,1(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: mayor
* -> identificador
223:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
224:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
225:    LDC       0,200(0)      cargar constante: 200
* <- constante
226:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
227:    SUB       0,1,0         op: >
228:    JGT       0,2(7)        saltar si AC>0
229:    LDC       0,0(0)        caso falso
230:    LDA       7,1(7)        saltar caso verdadero
231:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
* If: el salto hacia el else debe estar aqui
* -> break
* break: salto al final del bucle
* <- break
* If: el salto hacia el final debe estar aqui
232:    JEQ       0,1(7)        if: jmp hacia else
* <- if
* for: punto de continue
234:    LD        0,11(5)       for: cargar variable para incremento
235:    ST        0,-4(6)       for: guardar variable en pila temp
* -> constante
236:    LDC       0,1(0)        cargar constante: 1
* <- constante
237:    LD        1,-4(6)       for: cargar variable de pila temp
238:    ADD       0,1,0         for: incrementar variable
239:    ST        0,11(5)       for: guardar variable incrementada
240:    LDA       7,-49(7)      for: salto al inicio
* for: fin del bucle
201:    JGT       0,39(7)       for: saltar si variable > final
* <- for
* -> return
* -> identificador
241:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
242:    LD        1,-3(6)       return: restaurar frame
243:    LD        7,0(1)        return: salto a direccion de retorno
* <- return
* <- programa
* Fin de la ejecucion.
244:    HALT      0,0,0         


