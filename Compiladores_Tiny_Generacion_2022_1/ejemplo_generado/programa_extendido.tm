* Compilacion TINY EXTENDIDO para el codigo objeto TM
* Archivo: programa_extendido.tiny
* Preludio estandar:
0:      LD        6,0(0)        cargar la maxima direccion desde la localidad 0
1:      ST        0,0(0)        limpio el registro de la localidad 0
2:      LDC       5,0(0)        GP apunta al inicio de variables globales (direccion 0)
* Total de memoria reservada para variables: 18 posiciones
* -> programa
* -> declaracion: x
* Declaracion de variable: x (global)
3:      LDC       0,0(0)        global: inicializar variable x a cero
4:      ST        0,0(5)        global: almacenar en direccion 0
* <- declaracion
* -> declaracion: arr
* Declaracion de array: arr tama�o definido
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
* -> funcion: suma_vector
* === INICIO FUNCION suma_vector ===
26:     ST        0,0(6)        funci�n: guardar frame anterior
* Procesamiento de parametros
* -> declaracion: i
* Declaracion de variable: i (local)
27:     LDC       0,0(0)        local: inicializar variable i a cero
28:     ST        0,14(5)       local: almacenar en direccion 14
* <- declaracion
* -> declaracion: total
* Declaracion de variable: total (local)
29:     LDC       0,0(0)        local: inicializar variable total a cero
30:     ST        0,15(5)       local: almacenar en direccion 15
* <- declaracion
* -> asignacion
* -> constante
31:     LDC       0,0(0)        cargar constante: 0
* <- constante
32:     ST        0,15(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> for
* -> constante
33:     LDC       0,0(0)        cargar constante: 0
* <- constante
34:     ST        0,14(5)       for: inicializar variable i
* for: inicio del bucle
35:     LD        0,14(5)       for: cargar variable de control
36:     ST        0,-1(6)       for: guardar variable en pila temp
* -> Operacion: menos
* -> identificador
37:     LD        0,13(5)       cargar valor de identificador: size
* <- identificador
38:     ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
39:     LDC       0,1(0)        cargar constante: 1
* <- constante
40:     LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
41:     SUB       0,1,0         op: -
* <- Operacion: menos
42:     LD        1,-1(6)       for: cargar variable de pila temp
43:     SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> identificador
45:     LD        0,15(5)       cargar valor de identificador: total
* <- identificador
46:     ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
* -> identificador
* -> identificador
47:     LD        0,14(5)       cargar valor de identificador: i
* <- identificador
48:     LDC       1,12(0)       identificador array: cargar direccion base
49:     ADD       0,0,1         identificador array: calcular direccion
* <- identificador
50:     LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
51:     ADD       0,1,0         op: +
* <- Operacion: mas
52:     ST        0,15(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> if
* -> Operacion: menor
* -> identificador
* -> identificador
53:     LD        0,14(5)       cargar valor de identificador: i
* <- identificador
54:     LDC       1,12(0)       identificador array: cargar direccion base
55:     ADD       0,0,1         identificador array: calcular direccion
* <- identificador
56:     ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
57:     LDC       0,0(0)        cargar constante: 0
* <- constante
58:     LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
59:     SUB       0,1,0         op: <
60:     JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
61:     LDC       0,0(0)        caso de falso (AC=0)
62:     LDC       2,0(0)        cargar 0 en registro 2
63:     JEQ       2,1(7)        salto incondicional
64:     LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
* If: el salto hacia el else debe estar aqui
* -> continue
* continue: salto al incremento del bucle
* <- continue
* If: el salto hacia el final debe estar aqui
65:     JEQ       0,1(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: mayor
* -> identificador
67:     LD        0,15(5)       cargar valor de identificador: total
* <- identificador
68:     ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
69:     LDC       0,200(0)      cargar constante: 200
* <- constante
70:     LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
71:     SUB       0,1,0         op: >
72:     JGT       0,2(7)        saltar si AC>0
73:     LDC       0,0(0)        caso falso
74:     LDC       2,0(0)        cargar 0 en registro 2
75:     JEQ       2,1(7)        salto incondicional
76:     LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
* If: el salto hacia el else debe estar aqui
* -> break
* break: salto al final del bucle
* <- break
* If: el salto hacia el final debe estar aqui
77:     JEQ       0,1(7)        if: jmp hacia else
* <- if
* for: punto de continue
79:     LD        0,14(5)       for: cargar variable para incremento
80:     ST        0,-1(6)       for: guardar variable en pila temp
* -> constante
81:     LDC       0,1(0)        cargar constante: 1
* <- constante
82:     LD        1,-1(6)       for: cargar variable de pila temp
83:     ADD       0,1,0         for: incrementar variable
84:     ST        0,14(5)       for: guardar variable incrementada
85:     LDA       7,-51(7)      for: salto al inicio
* for: fin del bucle
44:     JGT       0,41(7)       for: saltar si variable > final
* <- for
* -> return
* -> identificador
86:     LD        0,15(5)       cargar valor de identificador: total
* <- identificador
87:     LD        1,0(6)        return: restaurar frame
88:     LD        7,0(1)        return: salto a direccion de retorno
* <- return
* Return implicito de funcion
89:     LD        0,1(6)        funci�n: restaurar frame anterior
90:     LD        7,0(0)        funci�n: retorno
* === FIN FUNCION suma_vector ===
* <- funcion
* -> declaracion: i
* Declaracion de variable: i (local)
91:     LDC       0,0(0)        local: inicializar variable i a cero
92:     ST        0,14(5)       local: almacenar en direccion 14
* <- declaracion
* -> declaracion: num
* Declaracion de variable: num (local)
93:     LDC       0,0(0)        local: inicializar variable num a cero
94:     ST        0,16(5)       local: almacenar en direccion 16
* <- declaracion
* -> declaracion: resultado
* Declaracion de variable: resultado (local)
95:     LDC       0,0(0)        local: inicializar variable resultado a cero
96:     ST        0,17(5)       local: almacenar en direccion 17
* <- declaracion
* -> leer
97:     IN        0,0,0         leer: lee un valor entero 
98:     ST        0,16(5)       leer: almaceno el valor entero leido en el id num
* <- leer
* -> for
* -> constante
99:     LDC       0,0(0)        cargar constante: 0
* <- constante
100:    ST        0,14(5)       for: inicializar variable i
* for: inicio del bucle
101:    LD        0,14(5)       for: cargar variable de control
102:    ST        0,1(6)        for: guardar variable en pila temp
* -> constante
103:    LDC       0,9(0)        cargar constante: 9
* <- constante
104:    LD        1,1(6)        for: cargar variable de pila temp
105:    SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> Operacion: por
* -> identificador
107:    LD        0,14(5)       cargar valor de identificador: i
* <- identificador
108:    ST        0,1(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
109:    LDC       0,2(0)        cargar constante: 2
* <- constante
110:    LD        1,1(6)        op: pop o cargo de la pila el valor izquierdo en AC1
111:    MUL       0,1,0         op: *
* <- Operacion: por
112:    ST        0,1(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
113:    LDC       0,1(0)        cargar constante: 1
* <- constante
114:    LD        1,1(6)        op: pop o cargo de la pila el valor izquierdo en AC1
115:    ADD       0,1,0         op: +
* <- Operacion: mas
116:    ST        0,1(6)        asignacion array: guardar valor
* -> identificador
117:    LD        0,14(5)       cargar valor de identificador: i
* <- identificador
118:    LDC       1,1(0)        asignacion array: cargar direccion base
119:    ADD       0,0,1         asignacion array: calcular direccion
120:    LD        1,1(6)        asignacion array: recuperar valor
121:    ST        1,0(0)        asignacion array: almacenar en posicion calculada
* <- asignacion
* -> escribir
* -> identificador
* -> identificador
122:    LD        0,14(5)       cargar valor de identificador: i
* <- identificador
123:    LDC       1,1(0)        identificador array: cargar direccion base
124:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
125:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* for: punto de continue
126:    LD        0,14(5)       for: cargar variable para incremento
127:    ST        0,1(6)        for: guardar variable en pila temp
* -> constante
128:    LDC       0,1(0)        cargar constante: 1
* <- constante
129:    LD        1,1(6)        for: cargar variable de pila temp
130:    ADD       0,1,0         for: incrementar variable
131:    ST        0,14(5)       for: guardar variable incrementada
132:    LDA       7,-32(7)      for: salto al inicio
* for: fin del bucle
106:    JGT       0,26(7)       for: saltar si variable > final
* <- for
* -> if
* -> Operacion: and
* -> Operacion: mayorigual
* -> identificador
133:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
134:    ST        0,1(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
135:    LDC       0,0(0)        cargar constante: 0
* <- constante
136:    LD        1,1(6)        op: pop o cargo de la pila el valor izquierdo en AC1
137:    SUB       0,1,0         op: >=
138:    JGE       0,2(7)        saltar si AC>=0
139:    LDC       0,0(0)        caso falso
140:    LDC       2,0(0)        cargar 0 en registro 2
141:    JEQ       2,1(7)        salto incondicional
142:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayorigual
143:    ST        0,1(6)        op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menorigual
* -> identificador
144:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
145:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
146:    LDC       0,10(0)       cargar constante: 10
* <- constante
147:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
148:    SUB       0,1,0         op: <=
149:    JLE       0,2(7)        saltar si AC<=0
150:    LDC       0,0(0)        caso falso
151:    LDC       2,0(0)        cargar 0 en registro 2
152:    JEQ       2,1(7)        salto incondicional
153:    LDC       0,1(0)        caso verdadero
* <- Operacion: menorigual
154:    LD        1,1(6)        op: pop o cargo de la pila el valor izquierdo en AC1
155:    JEQ       1,3(7)        and: si izquierdo es falso, resultado es falso
156:    JEQ       0,2(7)        and: si derecho es falso, resultado es falso
157:    LDC       0,1(0)        and: ambos verdaderos
158:    LDC       2,0(0)        cargar 0 en registro 2
159:    JEQ       2,1(7)        and: salto incondicional
160:    LDC       0,0(0)        and: resultado falso
* <- Operacion: and
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> identificador
162:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
163:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: igual
* -> Operacion: modulo
* -> identificador
164:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
165:    ST        0,1(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
166:    LDC       0,2(0)        cargar constante: 2
* <- constante
167:    LD        1,1(6)        op: pop o cargo de la pila el valor izquierdo en AC1
168:    ST        0,1(6)        mod: guardar b
169:    ST        1,0(6)        mod: guardar a
170:    DIV       0,1,0         mod: a/b
171:    LD        1,0(6)        mod: recuperar a
172:    LD        2,1(6)        mod: recuperar b en r2
173:    MUL       0,0,2         mod: (a/b)*b
174:    SUB       0,1,0         mod: a - (a/b)*b
* <- Operacion: modulo
175:    ST        0,1(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
176:    LDC       0,0(0)        cargar constante: 0
* <- constante
177:    LD        1,1(6)        op: pop o cargo de la pila el valor izquierdo en AC1
178:    SUB       0,1,0         op: ==
179:    JEQ       0,2(7)        voy dos instrucciones mas alla if verdadero (AC==0)
180:    LDC       0,0(0)        caso de falso (AC=0)
181:    LDC       2,0(0)        cargar 0 en registro 2
182:    JEQ       2,1(7)        salto incondicional
183:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: igual
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
185:    LDC       0,1(0)        cargar constante: 1
* <- constante
186:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
184:    JEQ       0,3(7)        if: jmp hacia else
* -> escribir
* -> constante
188:    LDC       0,0(0)        cargar constante: 0
* <- constante
189:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
187:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> Operacion: potencia
* -> identificador
190:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
191:    ST        0,1(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
192:    LDC       0,2(0)        cargar constante: 2
* <- constante
193:    LD        1,1(6)        op: pop o cargo de la pila el valor izquierdo en AC1
* potencia: implementaci�n simplificada base^exponente
194:    MUL       0,1,1         potencia: base * base (para x^2)
* <- Operacion: potencia
195:    ST        0,0(5)        asignacion: almaceno el valor para el id x
* <- asignacion
* -> escribir
* -> identificador
196:    LD        0,0(5)        cargar valor de identificador: x
* <- identificador
197:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
161:    JEQ       0,37(7)       if: jmp hacia else
* -> escribir
* -> constante
199:    LDC       0,999(0)      cargar constante: 999
* <- constante
200:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
198:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> llamada funcion: suma_vector
201:    ST        7,1(6)        call: guardar direccion de retorno
* Procesando argumentos de la llamada
* -> identificador
202:    LD        0,1(5)        cargar valor de identificador: arr
* <- identificador
* -> constante
203:    LDC       0,10(0)       cargar constante: 10
* <- constante
204:    ST        0,0(6)        call: guardar argumento
* -> constante
205:    LDC       0,10(0)       cargar constante: 10
* <- constante
206:    ST        0,-1(6)       call: guardar argumento
207:    LDA       7,-182(7)      call: saltar a la funcion suma_vector
* <- llamada funcion
208:    ST        0,17(5)       asignacion: almaceno el valor para el id resultado
* <- asignacion
* -> escribir
* -> identificador
209:    LD        0,17(5)       cargar valor de identificador: resultado
* <- identificador
210:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: or
* -> Operacion: mayor
* -> identificador
211:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
212:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
213:    LDC       0,5(0)        cargar constante: 5
* <- constante
214:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
215:    SUB       0,1,0         op: >
216:    JGT       0,2(7)        saltar si AC>0
217:    LDC       0,0(0)        caso falso
218:    LDC       2,0(0)        cargar 0 en registro 2
219:    JEQ       2,1(7)        salto incondicional
220:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
221:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menor
* -> identificador
222:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
223:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
224:    LDC       0,0(0)        cargar constante: 0
* <- constante
225:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
226:    SUB       0,1,0         op: <
227:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
228:    LDC       0,0(0)        caso de falso (AC=0)
229:    LDC       2,0(0)        cargar 0 en registro 2
230:    JEQ       2,1(7)        salto incondicional
231:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
232:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
233:    JNE       1,3(7)        or: si izquierdo es verdadero, resultado es verdadero
234:    JNE       0,2(7)        or: si derecho es verdadero, resultado es verdadero
235:    LDC       0,0(0)        or: ambos falsos
236:    LDC       2,0(0)        cargar 0 en registro 2
237:    JEQ       2,1(7)        or: salto incondicional
238:    LDC       0,1(0)        or: resultado verdadero
* <- Operacion: or
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
240:    LDC       0,1(0)        cargar constante: 1
* <- constante
241:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
239:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: not
* -> Operacion: diferente
* -> identificador
243:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
244:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
245:    LDC       0,5(0)        cargar constante: 5
* <- constante
246:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
247:    SUB       0,1,0         op: !=
248:    JNE       0,2(7)        saltar si AC!=0
249:    LDC       0,0(0)        caso falso
250:    LDC       2,0(0)        cargar 0 en registro 2
251:    JEQ       2,1(7)        salto incondicional
252:    LDC       0,1(0)        caso verdadero
* <- Operacion: diferente
253:    JEQ       0,2(7)        not: saltar si es cero (falso)
254:    LDC       0,0(0)        not: resultado falso
255:    LDC       2,0(0)        not: cargar 0 en registro 2
256:    JEQ       2,1(7)        not: salto incondicional
257:    LDC       0,1(0)        not: resultado verdadero
* <- Operacion: not
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
259:    LDC       0,5(0)        cargar constante: 5
* <- constante
260:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
258:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* <- programa
* Fin de la ejecucion.
262:    HALT      0,0,0      