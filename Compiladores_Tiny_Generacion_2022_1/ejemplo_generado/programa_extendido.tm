* Compilacion TINY EXTENDIDO para el codigo objeto TM
* Archivo: programa_extendido.tiny
* Preludio estandar:
0:      LDC       6,1000(0)      inicializar MP con direccion base de pila (1000)
1:      LDC       5,0(0)        GP apunta al inicio de variables globales (direccion 0)
* Total de memoria reservada para variables: 18 posiciones
* Pila temporal inicia en direccion: 1000
* -> programa
* -> declaracion: x
* Declaracion de variable: x (global)
2:      LDC       0,0(0)        global: inicializar variable x a cero
3:      ST        0,0(5)        global: almacenar en direccion 0
* <- declaracion
* -> declaracion: arr
* Declaracion de array: arr tamaño definido
* -> constante
4:      LDC       0,10(0)       cargar constante: 10
* <- constante
5:      LDC       0,0(0)        array: inicializar elemento 0 a cero
6:      ST        0,1(5)        array: almacenar en posicion 1
7:      LDC       0,0(0)        array: inicializar elemento 1 a cero
8:      ST        0,2(5)        array: almacenar en posicion 2
9:      LDC       0,0(0)        array: inicializar elemento 2 a cero
10:     ST        0,3(5)        array: almacenar en posicion 3
11:     LDC       0,0(0)        array: inicializar elemento 3 a cero
12:     ST        0,4(5)        array: almacenar en posicion 4
13:     LDC       0,0(0)        array: inicializar elemento 4 a cero
14:     ST        0,5(5)        array: almacenar en posicion 5
15:     LDC       0,0(0)        array: inicializar elemento 5 a cero
16:     ST        0,6(5)        array: almacenar en posicion 6
17:     LDC       0,0(0)        array: inicializar elemento 6 a cero
18:     ST        0,7(5)        array: almacenar en posicion 7
19:     LDC       0,0(0)        array: inicializar elemento 7 a cero
20:     ST        0,8(5)        array: almacenar en posicion 8
21:     LDC       0,0(0)        array: inicializar elemento 8 a cero
22:     ST        0,9(5)        array: almacenar en posicion 9
23:     LDC       0,0(0)        array: inicializar elemento 9 a cero
24:     ST        0,10(5)       array: almacenar en posicion 10
* <- declaracion
* -> funcion: suma_vector
* === INICIO FUNCION suma_vector ===
25:     ST        0,-3(6)       función: guardar frame anterior
* Procesamiento de parametros
* -> declaracion: i
* Declaracion de variable: i (local)
26:     LDC       0,0(0)        local: inicializar variable i a cero
27:     ST        0,14(5)       local: almacenar en direccion 14
* <- declaracion
* -> declaracion: total
* Declaracion de variable: total (local)
28:     LDC       0,0(0)        local: inicializar variable total a cero
29:     ST        0,15(5)       local: almacenar en direccion 15
* <- declaracion
* -> asignacion
* -> constante
30:     LDC       0,0(0)        cargar constante: 0
* <- constante
31:     ST        0,15(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> for
* -> constante
32:     LDC       0,0(0)        cargar constante: 0
* <- constante
33:     ST        0,14(5)       for: inicializar variable i
* for: inicio del bucle
34:     LD        0,14(5)       for: cargar variable de control
35:     ST        0,-4(6)       for: guardar variable en pila temp
* -> Operacion: menos
* -> identificador
36:     LD        0,13(5)       cargar valor de identificador: size
* <- identificador
37:     ST        0,-5(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
38:     LDC       0,1(0)        cargar constante: 1
* <- constante
39:     LD        1,-5(6)       op: pop o cargo de la pila el valor izquierdo en AC1
40:     SUB       0,1,0         op: -
* <- Operacion: menos
41:     LD        1,-4(6)       for: cargar variable de pila temp
42:     SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> identificador
44:     LD        0,15(5)       cargar valor de identificador: total
* <- identificador
45:     ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> identificador
* -> identificador
46:     LD        0,14(5)       cargar valor de identificador: i
* <- identificador
47:     LDC       1,12(0)       identificador array: cargar direccion base
48:     ADD       0,0,1         identificador array: calcular direccion
* <- identificador
49:     LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
50:     ADD       0,1,0         op: +
* <- Operacion: mas
51:     ST        0,15(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> if
* -> Operacion: menor
* -> identificador
* -> identificador
52:     LD        0,14(5)       cargar valor de identificador: i
* <- identificador
53:     LDC       1,12(0)       identificador array: cargar direccion base
54:     ADD       0,0,1         identificador array: calcular direccion
* <- identificador
55:     ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
56:     LDC       0,0(0)        cargar constante: 0
* <- constante
57:     LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
58:     SUB       0,1,0         op: <
59:     JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
60:     LDC       0,0(0)        caso de falso (AC=0)
61:     LDC       2,0(0)        cargar 0 en registro 2
62:     JEQ       2,1(7)        salto incondicional
63:     LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
* If: el salto hacia el else debe estar aqui
* -> continue
* continue: salto al incremento del bucle
* <- continue
* If: el salto hacia el final debe estar aqui
64:     JEQ       0,1(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: mayor
* -> identificador
66:     LD        0,15(5)       cargar valor de identificador: total
* <- identificador
67:     ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
68:     LDC       0,200(0)      cargar constante: 200
* <- constante
69:     LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
70:     SUB       0,1,0         op: >
71:     JGT       0,2(7)        saltar si AC>0
72:     LDC       0,0(0)        caso falso
73:     LDC       2,0(0)        cargar 0 en registro 2
74:     JEQ       2,1(7)        salto incondicional
75:     LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
* If: el salto hacia el else debe estar aqui
* -> break
* break: salto al final del bucle
* <- break
* If: el salto hacia el final debe estar aqui
76:     JEQ       0,1(7)        if: jmp hacia else
* <- if
* for: punto de continue
78:     LD        0,14(5)       for: cargar variable para incremento
79:     ST        0,-4(6)       for: guardar variable en pila temp
* -> constante
80:     LDC       0,1(0)        cargar constante: 1
* <- constante
81:     LD        1,-4(6)       for: cargar variable de pila temp
82:     ADD       0,1,0         for: incrementar variable
83:     ST        0,14(5)       for: guardar variable incrementada
84:     LDA       7,-51(7)      for: salto al inicio
* for: fin del bucle
43:     JGT       0,41(7)       for: saltar si variable > final
* <- for
* -> return
* -> identificador
85:     LD        0,15(5)       cargar valor de identificador: total
* <- identificador
86:     LD        1,-3(6)       return: restaurar frame
87:     LD        7,0(1)        return: salto a direccion de retorno
* <- return
* Return implicito de funcion
88:     LD        0,-2(6)       función: restaurar frame anterior
89:     LD        7,0(0)        función: retorno
* === FIN FUNCION suma_vector ===
* <- funcion
* -> declaracion: i
* Declaracion de variable: i (local)
90:     LDC       0,0(0)        local: inicializar variable i a cero
91:     ST        0,14(5)       local: almacenar en direccion 14
* <- declaracion
* -> declaracion: num
* Declaracion de variable: num (local)
92:     LDC       0,0(0)        local: inicializar variable num a cero
93:     ST        0,16(5)       local: almacenar en direccion 16
* <- declaracion
* -> declaracion: resultado
* Declaracion de variable: resultado (local)
94:     LDC       0,0(0)        local: inicializar variable resultado a cero
95:     ST        0,17(5)       local: almacenar en direccion 17
* <- declaracion
* -> leer
96:     IN        0,0,0         leer: lee un valor entero 
97:     ST        0,16(5)       leer: almaceno el valor entero leido en el id num
* <- leer
* -> for
* -> constante
98:     LDC       0,0(0)        cargar constante: 0
* <- constante
99:     ST        0,14(5)       for: inicializar variable i
* for: inicio del bucle
100:    LD        0,14(5)       for: cargar variable de control
101:    ST        0,-2(6)       for: guardar variable en pila temp
* -> constante
102:    LDC       0,9(0)        cargar constante: 9
* <- constante
103:    LD        1,-2(6)       for: cargar variable de pila temp
104:    SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> Operacion: por
* -> identificador
106:    LD        0,14(5)       cargar valor de identificador: i
* <- identificador
107:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
108:    LDC       0,2(0)        cargar constante: 2
* <- constante
109:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
110:    MUL       0,1,0         op: *
* <- Operacion: por
111:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
112:    LDC       0,1(0)        cargar constante: 1
* <- constante
113:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
114:    ADD       0,1,0         op: +
* <- Operacion: mas
115:    ST        0,-2(6)       asignacion array: guardar valor
* -> identificador
116:    LD        0,14(5)       cargar valor de identificador: i
* <- identificador
117:    LDC       1,1(0)        asignacion array: cargar direccion base
118:    ADD       0,0,1         asignacion array: calcular direccion
119:    LD        1,-2(6)       asignacion array: recuperar valor
120:    ST        1,0(0)        asignacion array: almacenar en posicion calculada
* <- asignacion
* -> escribir
* -> identificador
* -> identificador
121:    LD        0,14(5)       cargar valor de identificador: i
* <- identificador
122:    LDC       1,1(0)        identificador array: cargar direccion base
123:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
124:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* for: punto de continue
125:    LD        0,14(5)       for: cargar variable para incremento
126:    ST        0,-2(6)       for: guardar variable en pila temp
* -> constante
127:    LDC       0,1(0)        cargar constante: 1
* <- constante
128:    LD        1,-2(6)       for: cargar variable de pila temp
129:    ADD       0,1,0         for: incrementar variable
130:    ST        0,14(5)       for: guardar variable incrementada
131:    LDA       7,-32(7)      for: salto al inicio
* for: fin del bucle
105:    JGT       0,26(7)       for: saltar si variable > final
* <- for
* -> if
* -> Operacion: and
* -> Operacion: mayorigual
* -> identificador
132:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
133:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
134:    LDC       0,0(0)        cargar constante: 0
* <- constante
135:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
136:    SUB       0,1,0         op: >=
137:    JGE       0,2(7)        saltar si AC>=0
138:    LDC       0,0(0)        caso falso
139:    LDC       2,0(0)        cargar 0 en registro 2
140:    JEQ       2,1(7)        salto incondicional
141:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayorigual
142:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menorigual
* -> identificador
143:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
144:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
145:    LDC       0,10(0)       cargar constante: 10
* <- constante
146:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
147:    SUB       0,1,0         op: <=
148:    JLE       0,2(7)        saltar si AC<=0
149:    LDC       0,0(0)        caso falso
150:    LDC       2,0(0)        cargar 0 en registro 2
151:    JEQ       2,1(7)        salto incondicional
152:    LDC       0,1(0)        caso verdadero
* <- Operacion: menorigual
153:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
154:    JEQ       1,3(7)        and: si izquierdo es falso, resultado es falso
155:    JEQ       0,2(7)        and: si derecho es falso, resultado es falso
156:    LDC       0,1(0)        and: ambos verdaderos
157:    LDC       2,0(0)        cargar 0 en registro 2
158:    JEQ       2,1(7)        and: salto incondicional
159:    LDC       0,0(0)        and: resultado falso
* <- Operacion: and
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> identificador
161:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
162:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: igual
* -> Operacion: modulo
* -> identificador
163:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
164:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
165:    LDC       0,2(0)        cargar constante: 2
* <- constante
166:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
167:    ST        0,-2(6)       mod: guardar b
168:    ST        1,-3(6)       mod: guardar a
169:    DIV       0,1,0         mod: a/b
170:    LD        1,-3(6)       mod: recuperar a
171:    LD        2,-2(6)       mod: recuperar b en r2
172:    MUL       0,0,2         mod: (a/b)*b
173:    SUB       0,1,0         mod: a - (a/b)*b
* <- Operacion: modulo
174:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
175:    LDC       0,0(0)        cargar constante: 0
* <- constante
176:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
177:    SUB       0,1,0         op: ==
178:    JEQ       0,2(7)        voy dos instrucciones mas alla if verdadero (AC==0)
179:    LDC       0,0(0)        caso de falso (AC=0)
180:    LDC       2,0(0)        cargar 0 en registro 2
181:    JEQ       2,1(7)        salto incondicional
182:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: igual
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
184:    LDC       0,1(0)        cargar constante: 1
* <- constante
185:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
183:    JEQ       0,3(7)        if: jmp hacia else
* -> escribir
* -> constante
187:    LDC       0,0(0)        cargar constante: 0
* <- constante
188:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
186:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> Operacion: potencia
* -> identificador
189:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
190:    ST        0,-2(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
191:    LDC       0,2(0)        cargar constante: 2
* <- constante
192:    LD        1,-2(6)       op: pop o cargo de la pila el valor izquierdo en AC1
* potencia: implementación simplificada base^exponente
193:    MUL       0,1,1         potencia: base * base (para x^2)
* <- Operacion: potencia
194:    ST        0,0(5)        asignacion: almaceno el valor para el id x
* <- asignacion
* -> escribir
* -> identificador
195:    LD        0,0(5)        cargar valor de identificador: x
* <- identificador
196:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
160:    JEQ       0,37(7)       if: jmp hacia else
* -> escribir
* -> constante
198:    LDC       0,999(0)      cargar constante: 999
* <- constante
199:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
197:    LDA       7,2(7)        if: jmp hacia el final
* <- if
* -> asignacion
* -> llamada funcion: suma_vector
200:    ST        7,-2(6)       call: guardar direccion de retorno
* Procesando argumentos de la llamada
* -> identificador
201:    LD        0,1(5)        cargar valor de identificador: arr
* <- identificador
* -> constante
202:    LDC       0,10(0)       cargar constante: 10
* <- constante
203:    ST        0,-3(6)       call: guardar argumento
* -> constante
204:    LDC       0,10(0)       cargar constante: 10
* <- constante
205:    ST        0,-4(6)       call: guardar argumento
206:    LDA       7,-182(7)      call: saltar a la funcion suma_vector
* <- llamada funcion
207:    ST        0,17(5)       asignacion: almaceno el valor para el id resultado
* <- asignacion
* -> escribir
* -> identificador
208:    LD        0,17(5)       cargar valor de identificador: resultado
* <- identificador
209:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: or
* -> Operacion: mayor
* -> identificador
210:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
211:    ST        0,-5(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
212:    LDC       0,5(0)        cargar constante: 5
* <- constante
213:    LD        1,-5(6)       op: pop o cargo de la pila el valor izquierdo en AC1
214:    SUB       0,1,0         op: >
215:    JGT       0,2(7)        saltar si AC>0
216:    LDC       0,0(0)        caso falso
217:    LDC       2,0(0)        cargar 0 en registro 2
218:    JEQ       2,1(7)        salto incondicional
219:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
220:    ST        0,-5(6)       op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menor
* -> identificador
221:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
222:    ST        0,-6(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
223:    LDC       0,0(0)        cargar constante: 0
* <- constante
224:    LD        1,-6(6)       op: pop o cargo de la pila el valor izquierdo en AC1
225:    SUB       0,1,0         op: <
226:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
227:    LDC       0,0(0)        caso de falso (AC=0)
228:    LDC       2,0(0)        cargar 0 en registro 2
229:    JEQ       2,1(7)        salto incondicional
230:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
231:    LD        1,-5(6)       op: pop o cargo de la pila el valor izquierdo en AC1
232:    JNE       1,3(7)        or: si izquierdo es verdadero, resultado es verdadero
233:    JNE       0,2(7)        or: si derecho es verdadero, resultado es verdadero
234:    LDC       0,0(0)        or: ambos falsos
235:    LDC       2,0(0)        cargar 0 en registro 2
236:    JEQ       2,1(7)        or: salto incondicional
237:    LDC       0,1(0)        or: resultado verdadero
* <- Operacion: or
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
239:    LDC       0,1(0)        cargar constante: 1
* <- constante
240:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
238:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: not
* -> Operacion: diferente
* -> identificador
242:    LD        0,16(5)       cargar valor de identificador: num
* <- identificador
243:    ST        0,-5(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
244:    LDC       0,5(0)        cargar constante: 5
* <- constante
245:    LD        1,-5(6)       op: pop o cargo de la pila el valor izquierdo en AC1
246:    SUB       0,1,0         op: !=
247:    JNE       0,2(7)        saltar si AC!=0
248:    LDC       0,0(0)        caso falso
249:    LDC       2,0(0)        cargar 0 en registro 2
250:    JEQ       2,1(7)        salto incondicional
251:    LDC       0,1(0)        caso verdadero
* <- Operacion: diferente
252:    JEQ       0,2(7)        not: saltar si es cero (falso)
253:    LDC       0,0(0)        not: resultado falso
254:    LDC       2,0(0)        not: cargar 0 en registro 2
255:    JEQ       2,1(7)        not: salto incondicional
256:    LDC       0,1(0)        not: resultado verdadero
* <- Operacion: not
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> constante
258:    LDC       0,5(0)        cargar constante: 5
* <- constante
259:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
257:    JEQ       0,3(7)        if: jmp hacia else
* <- if
* <- programa
* Fin de la ejecucion.
261:    HALT      0,0,0         
