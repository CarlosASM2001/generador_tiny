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
* Declaracion de array: arr tama▒o definido
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
* -> escribir
* -> string
* String: "Ingrese un n▒mero: "
32:     LDC       0,73(0)       string: cargar caracter 'I'
33:     OUT       0,0,0         string: escribir caracter
34:     LDC       0,110(0)      string: cargar caracter 'n'
35:     OUT       0,0,0         string: escribir caracter
36:     LDC       0,103(0)      string: cargar caracter 'g'
37:     OUT       0,0,0         string: escribir caracter
38:     LDC       0,114(0)      string: cargar caracter 'r'
39:     OUT       0,0,0         string: escribir caracter
40:     LDC       0,101(0)      string: cargar caracter 'e'
41:     OUT       0,0,0         string: escribir caracter
42:     LDC       0,115(0)      string: cargar caracter 's'
43:     OUT       0,0,0         string: escribir caracter
44:     LDC       0,101(0)      string: cargar caracter 'e'
45:     OUT       0,0,0         string: escribir caracter
46:     LDC       0,32(0)       string: cargar caracter ' '
47:     OUT       0,0,0         string: escribir caracter
48:     LDC       0,117(0)      string: cargar caracter 'u'
49:     OUT       0,0,0         string: escribir caracter
50:     LDC       0,110(0)      string: cargar caracter 'n'
51:     OUT       0,0,0         string: escribir caracter
52:     LDC       0,32(0)       string: cargar caracter ' '
53:     OUT       0,0,0         string: escribir caracter
54:     LDC       0,110(0)      string: cargar caracter 'n'
55:     OUT       0,0,0         string: escribir caracter
56:     LDC       0,250(0)      string: cargar caracter '▒'
57:     OUT       0,0,0         string: escribir caracter
58:     LDC       0,109(0)      string: cargar caracter 'm'
59:     OUT       0,0,0         string: escribir caracter
60:     LDC       0,101(0)      string: cargar caracter 'e'
61:     OUT       0,0,0         string: escribir caracter
62:     LDC       0,114(0)      string: cargar caracter 'r'
63:     OUT       0,0,0         string: escribir caracter
64:     LDC       0,111(0)      string: cargar caracter 'o'
65:     OUT       0,0,0         string: escribir caracter
66:     LDC       0,58(0)       string: cargar caracter ':'
67:     OUT       0,0,0         string: escribir caracter
68:     LDC       0,32(0)       string: cargar caracter ' '
69:     OUT       0,0,0         string: escribir caracter
* <- string
70:     OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> leer
71:     IN        0,0,0         leer: lee un valor entero
72:     ST        0,12(5)       leer: almaceno el valor entero leido en el id num
* <- leer
* -> for
* -> constante
73:     LDC       0,0(0)        cargar constante: 0
* <- constante
74:     ST        0,11(5)       for: inicializar variable i
* for: inicio del bucle
75:     LD        0,11(5)       for: cargar variable de control
76:     ST        0,0(6)        for: guardar variable en pila temp
* -> constante
77:     LDC       0,9(0)        cargar constante: 9
* <- constante
78:     LD        1,0(6)        for: cargar variable de pila temp
79:     SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> Operacion: por
* -> identificador
81:     LD        0,11(5)       cargar valor de identificador: i
* <- identificador
82:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
83:     LDC       0,2(0)        cargar constante: 2
* <- constante
84:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
85:     MUL       0,1,0         op: *
* <- Operacion: por
86:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
87:     LDC       0,1(0)        cargar constante: 1
* <- constante
88:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
89:     ADD       0,1,0         op: +
* <- Operacion: mas
90:     ST        0,0(6)        asignacion array: guardar valor
* -> identificador
91:     LD        0,11(5)       cargar valor de identificador: i
* <- identificador
92:     LDC       1,1(0)        asignacion array: cargar direccion base
93:     ADD       0,0,1         asignacion array: calcular direccion
94:     LD        1,0(6)        asignacion array: recuperar valor
95:     ST        1,0(0)        asignacion array: almacenar en posicion calculada
* <- asignacion
* for: punto de continue
96:     LD        0,11(5)       for: cargar variable para incremento
97:     ST        0,0(6)        for: guardar variable en pila temp
* -> constante
98:     LDC       0,1(0)        cargar constante: 1
* <- constante
99:     LD        1,0(6)        for: cargar variable de pila temp
100:    ADD       0,1,0         for: incrementar variable
101:    ST        0,11(5)       for: guardar variable incrementada
102:    LDA       7,-28(7)      for: salto al inicio
* for: fin del bucle
80:     JGT       0,22(7)       for: saltar si variable > final
* <- for
* -> if
* -> Operacion: and
* -> Operacion: mayorigual
* -> identificador
103:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
104:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
105:    LDC       0,0(0)        cargar constante: 0
* <- constante
106:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
107:    SUB       0,1,0         op: >=
108:    JGE       0,2(7)        saltar si AC>=0
109:    LDC       0,0(0)        caso falso
110:    LDA       7,1(7)        saltar caso verdadero
111:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayorigual
112:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menorigual
* -> identificador
113:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
114:    ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
115:    LDC       0,10(0)       cargar constante: 10
* <- constante
116:    LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
117:    SUB       0,1,0         op: <=
118:    JLE       0,2(7)        saltar si AC<=0
119:    LDC       0,0(0)        caso falso
120:    LDA       7,1(7)        saltar caso verdadero
121:    LDC       0,1(0)        caso verdadero
* <- Operacion: menorigual
122:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
123:    JEQ       1,3(7)        and: si izquierdo es falso, resultado es falso
124:    JEQ       0,2(7)        and: si derecho es falso, resultado es falso
125:    LDC       0,1(0)        and: ambos verdaderos
126:    LDA       7,1(7)        and: saltar caso falso
127:    LDC       0,0(0)        and: resultado falso
* <- Operacion: and
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> string
* String: "El n▒mero est▒ en rango"
129:    LDC       0,69(0)       string: cargar caracter 'E'
130:    OUT       0,0,0         string: escribir caracter
131:    LDC       0,108(0)      string: cargar caracter 'l'
132:    OUT       0,0,0         string: escribir caracter
133:    LDC       0,32(0)       string: cargar caracter ' '
134:    OUT       0,0,0         string: escribir caracter
135:    LDC       0,110(0)      string: cargar caracter 'n'
136:    OUT       0,0,0         string: escribir caracter
137:    LDC       0,250(0)      string: cargar caracter '▒'
138:    OUT       0,0,0         string: escribir caracter
139:    LDC       0,109(0)      string: cargar caracter 'm'
140:    OUT       0,0,0         string: escribir caracter
141:    LDC       0,101(0)      string: cargar caracter 'e'
142:    OUT       0,0,0         string: escribir caracter
143:    LDC       0,114(0)      string: cargar caracter 'r'
144:    OUT       0,0,0         string: escribir caracter
145:    LDC       0,111(0)      string: cargar caracter 'o'
146:    OUT       0,0,0         string: escribir caracter
147:    LDC       0,32(0)       string: cargar caracter ' '
148:    OUT       0,0,0         string: escribir caracter
149:    LDC       0,101(0)      string: cargar caracter 'e'
150:    OUT       0,0,0         string: escribir caracter
151:    LDC       0,115(0)      string: cargar caracter 's'
152:    OUT       0,0,0         string: escribir caracter
153:    LDC       0,116(0)      string: cargar caracter 't'
154:    OUT       0,0,0         string: escribir caracter
155:    LDC       0,225(0)      string: cargar caracter '▒'
156:    OUT       0,0,0         string: escribir caracter
157:    LDC       0,32(0)       string: cargar caracter ' '
158:    OUT       0,0,0         string: escribir caracter
159:    LDC       0,101(0)      string: cargar caracter 'e'
160:    OUT       0,0,0         string: escribir caracter
161:    LDC       0,110(0)      string: cargar caracter 'n'
162:    OUT       0,0,0         string: escribir caracter
163:    LDC       0,32(0)       string: cargar caracter ' '
164:    OUT       0,0,0         string: escribir caracter
165:    LDC       0,114(0)      string: cargar caracter 'r'
166:    OUT       0,0,0         string: escribir caracter
167:    LDC       0,97(0)       string: cargar caracter 'a'
168:    OUT       0,0,0         string: escribir caracter
169:    LDC       0,110(0)      string: cargar caracter 'n'
170:    OUT       0,0,0         string: escribir caracter
171:    LDC       0,103(0)      string: cargar caracter 'g'
172:    OUT       0,0,0         string: escribir caracter
173:    LDC       0,111(0)      string: cargar caracter 'o'
174:    OUT       0,0,0         string: escribir caracter
* <- string
175:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> escribir
* -> identificador
176:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
177:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: igual
* -> Operacion: modulo
* -> identificador
178:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
179:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
180:    LDC       0,2(0)        cargar constante: 2
* <- constante
181:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
182:    ST        0,0(6)        mod: guardar b
183:    ST        1,-1(6)       mod: guardar a
184:    DIV       0,1,0         mod: a/b
185:    LD        1,-1(6)       mod: recuperar a
186:    LD        2,0(6)        mod: recuperar b en r2
187:    MUL       0,0,2         mod: (a/b)*b
188:    SUB       0,1,0         mod: a - (a/b)*b
* <- Operacion: modulo
189:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
190:    LDC       0,0(0)        cargar constante: 0
* <- constante
191:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
192:    SUB       0,1,0         op: ==
193:    JEQ       0,2(7)        voy dos instrucciones mas alla if verdadero (AC==0)
194:    LDC       0,0(0)        caso de falso (AC=0)
195:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
196:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: igual
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> string
* String: "El n▒mero es par"
198:    LDC       0,69(0)       string: cargar caracter 'E'
199:    OUT       0,0,0         string: escribir caracter
200:    LDC       0,108(0)      string: cargar caracter 'l'
201:    OUT       0,0,0         string: escribir caracter
202:    LDC       0,32(0)       string: cargar caracter ' '
203:    OUT       0,0,0         string: escribir caracter
204:    LDC       0,110(0)      string: cargar caracter 'n'
205:    OUT       0,0,0         string: escribir caracter
206:    LDC       0,250(0)      string: cargar caracter '▒'
207:    OUT       0,0,0         string: escribir caracter
208:    LDC       0,109(0)      string: cargar caracter 'm'
209:    OUT       0,0,0         string: escribir caracter
210:    LDC       0,101(0)      string: cargar caracter 'e'
211:    OUT       0,0,0         string: escribir caracter
212:    LDC       0,114(0)      string: cargar caracter 'r'
213:    OUT       0,0,0         string: escribir caracter
214:    LDC       0,111(0)      string: cargar caracter 'o'
215:    OUT       0,0,0         string: escribir caracter
216:    LDC       0,32(0)       string: cargar caracter ' '
217:    OUT       0,0,0         string: escribir caracter
218:    LDC       0,101(0)      string: cargar caracter 'e'
219:    OUT       0,0,0         string: escribir caracter
220:    LDC       0,115(0)      string: cargar caracter 's'
221:    OUT       0,0,0         string: escribir caracter
222:    LDC       0,32(0)       string: cargar caracter ' '
223:    OUT       0,0,0         string: escribir caracter
224:    LDC       0,112(0)      string: cargar caracter 'p'
225:    OUT       0,0,0         string: escribir caracter
226:    LDC       0,97(0)       string: cargar caracter 'a'
227:    OUT       0,0,0         string: escribir caracter
228:    LDC       0,114(0)      string: cargar caracter 'r'
229:    OUT       0,0,0         string: escribir caracter
* <- string
230:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
197:    JEQ       0,34(7)       if: jmp hacia else
* -> escribir
* -> string
* String: "El n▒mero es impar"
232:    LDC       0,69(0)       string: cargar caracter 'E'
233:    OUT       0,0,0         string: escribir caracter
234:    LDC       0,108(0)      string: cargar caracter 'l'
235:    OUT       0,0,0         string: escribir caracter
236:    LDC       0,32(0)       string: cargar caracter ' '
237:    OUT       0,0,0         string: escribir caracter
238:    LDC       0,110(0)      string: cargar caracter 'n'
239:    OUT       0,0,0         string: escribir caracter
240:    LDC       0,250(0)      string: cargar caracter '▒'
241:    OUT       0,0,0         string: escribir caracter
242:    LDC       0,109(0)      string: cargar caracter 'm'
243:    OUT       0,0,0         string: escribir caracter
244:    LDC       0,101(0)      string: cargar caracter 'e'
245:    OUT       0,0,0         string: escribir caracter
246:    LDC       0,114(0)      string: cargar caracter 'r'
247:    OUT       0,0,0         string: escribir caracter
248:    LDC       0,111(0)      string: cargar caracter 'o'
249:    OUT       0,0,0         string: escribir caracter
250:    LDC       0,32(0)       string: cargar caracter ' '
251:    OUT       0,0,0         string: escribir caracter
252:    LDC       0,101(0)      string: cargar caracter 'e'
253:    OUT       0,0,0         string: escribir caracter
254:    LDC       0,115(0)      string: cargar caracter 's'
255:    OUT       0,0,0         string: escribir caracter
256:    LDC       0,32(0)       string: cargar caracter ' '
257:    OUT       0,0,0         string: escribir caracter
258:    LDC       0,105(0)      string: cargar caracter 'i'
259:    OUT       0,0,0         string: escribir caracter
260:    LDC       0,109(0)      string: cargar caracter 'm'
261:    OUT       0,0,0         string: escribir caracter
262:    LDC       0,112(0)      string: cargar caracter 'p'
263:    OUT       0,0,0         string: escribir caracter
264:    LDC       0,97(0)       string: cargar caracter 'a'
265:    OUT       0,0,0         string: escribir caracter
266:    LDC       0,114(0)      string: cargar caracter 'r'
267:    OUT       0,0,0         string: escribir caracter
* <- string
268:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
231:    LDA       7,37(7)       if: jmp hacia el final
* <- if
* -> asignacion
* -> Operacion: potencia
* -> identificador
269:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
270:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
* -> constante
271:    LDC       0,2(0)        cargar constante: 2
* <- constante
272:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
* potencia: implementaci▒n simplificada
273:    MUL       0,1,0         potencia: multiplicaci▒n simple
* <- Operacion: potencia
274:    ST        0,0(5)        asignacion: almaceno el valor para el id x
* <- asignacion
* -> escribir
* -> string
* String: "El cuadrado es: "
275:    LDC       0,69(0)       string: cargar caracter 'E'
276:    OUT       0,0,0         string: escribir caracter
277:    LDC       0,108(0)      string: cargar caracter 'l'
278:    OUT       0,0,0         string: escribir caracter
279:    LDC       0,32(0)       string: cargar caracter ' '
280:    OUT       0,0,0         string: escribir caracter
281:    LDC       0,99(0)       string: cargar caracter 'c'
282:    OUT       0,0,0         string: escribir caracter
283:    LDC       0,117(0)      string: cargar caracter 'u'
284:    OUT       0,0,0         string: escribir caracter
285:    LDC       0,97(0)       string: cargar caracter 'a'
286:    OUT       0,0,0         string: escribir caracter
287:    LDC       0,100(0)      string: cargar caracter 'd'
288:    OUT       0,0,0         string: escribir caracter
289:    LDC       0,114(0)      string: cargar caracter 'r'
290:    OUT       0,0,0         string: escribir caracter
291:    LDC       0,97(0)       string: cargar caracter 'a'
292:    OUT       0,0,0         string: escribir caracter
293:    LDC       0,100(0)      string: cargar caracter 'd'
294:    OUT       0,0,0         string: escribir caracter
295:    LDC       0,111(0)      string: cargar caracter 'o'
296:    OUT       0,0,0         string: escribir caracter
297:    LDC       0,32(0)       string: cargar caracter ' '
298:    OUT       0,0,0         string: escribir caracter
299:    LDC       0,101(0)      string: cargar caracter 'e'
300:    OUT       0,0,0         string: escribir caracter
301:    LDC       0,115(0)      string: cargar caracter 's'
302:    OUT       0,0,0         string: escribir caracter
303:    LDC       0,58(0)       string: cargar caracter ':'
304:    OUT       0,0,0         string: escribir caracter
305:    LDC       0,32(0)       string: cargar caracter ' '
306:    OUT       0,0,0         string: escribir caracter
* <- string
307:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> escribir
* -> identificador
308:    LD        0,0(5)        cargar valor de identificador: x
* <- identificador
309:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
128:    JEQ       0,182(7)      if: jmp hacia else
* -> escribir
* -> string
* String: "N▒mero fuera de rango"
311:    LDC       0,78(0)       string: cargar caracter 'N'
312:    OUT       0,0,0         string: escribir caracter
313:    LDC       0,250(0)      string: cargar caracter '▒'
314:    OUT       0,0,0         string: escribir caracter
315:    LDC       0,109(0)      string: cargar caracter 'm'
316:    OUT       0,0,0         string: escribir caracter
317:    LDC       0,101(0)      string: cargar caracter 'e'
318:    OUT       0,0,0         string: escribir caracter
319:    LDC       0,114(0)      string: cargar caracter 'r'
320:    OUT       0,0,0         string: escribir caracter
321:    LDC       0,111(0)      string: cargar caracter 'o'
322:    OUT       0,0,0         string: escribir caracter
323:    LDC       0,32(0)       string: cargar caracter ' '
324:    OUT       0,0,0         string: escribir caracter
325:    LDC       0,102(0)      string: cargar caracter 'f'
326:    OUT       0,0,0         string: escribir caracter
327:    LDC       0,117(0)      string: cargar caracter 'u'
328:    OUT       0,0,0         string: escribir caracter
329:    LDC       0,101(0)      string: cargar caracter 'e'
330:    OUT       0,0,0         string: escribir caracter
331:    LDC       0,114(0)      string: cargar caracter 'r'
332:    OUT       0,0,0         string: escribir caracter
333:    LDC       0,97(0)       string: cargar caracter 'a'
334:    OUT       0,0,0         string: escribir caracter
335:    LDC       0,32(0)       string: cargar caracter ' '
336:    OUT       0,0,0         string: escribir caracter
337:    LDC       0,100(0)      string: cargar caracter 'd'
338:    OUT       0,0,0         string: escribir caracter
339:    LDC       0,101(0)      string: cargar caracter 'e'
340:    OUT       0,0,0         string: escribir caracter
341:    LDC       0,32(0)       string: cargar caracter ' '
342:    OUT       0,0,0         string: escribir caracter
343:    LDC       0,114(0)      string: cargar caracter 'r'
344:    OUT       0,0,0         string: escribir caracter
345:    LDC       0,97(0)       string: cargar caracter 'a'
346:    OUT       0,0,0         string: escribir caracter
347:    LDC       0,110(0)      string: cargar caracter 'n'
348:    OUT       0,0,0         string: escribir caracter
349:    LDC       0,103(0)      string: cargar caracter 'g'
350:    OUT       0,0,0         string: escribir caracter
351:    LDC       0,111(0)      string: cargar caracter 'o'
352:    OUT       0,0,0         string: escribir caracter
* <- string
353:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
310:    LDA       7,43(7)       if: jmp hacia el final
* <- if
* -> asignacion
* -> llamada funcion: suma_vector
354:    ST        7,0(6)        call: guardar direccion de retorno
* Procesando argumentos de la llamada
* -> identificador
355:    LD        0,1(5)        cargar valor de identificador: arr
* <- identificador
* -> constante
356:    LDC       0,10(0)       cargar constante: 10
* <- constante
357:    ST        0,-1(6)       call: guardar argumento
* -> constante
358:    LDC       0,10(0)       cargar constante: 10
* <- constante
359:    ST        0,-2(6)       call: guardar argumento
* Llamada a funcion suma_vector (implementaci▒n simplificada)
* <- llamada funcion
360:    ST        0,13(5)       asignacion: almaceno el valor para el id resultado
* <- asignacion
* -> escribir
* -> string
* String: "La suma del vector es: "
361:    LDC       0,76(0)       string: cargar caracter 'L'
362:    OUT       0,0,0         string: escribir caracter
363:    LDC       0,97(0)       string: cargar caracter 'a'
364:    OUT       0,0,0         string: escribir caracter
365:    LDC       0,32(0)       string: cargar caracter ' '
366:    OUT       0,0,0         string: escribir caracter
367:    LDC       0,115(0)      string: cargar caracter 's'
368:    OUT       0,0,0         string: escribir caracter
369:    LDC       0,117(0)      string: cargar caracter 'u'
370:    OUT       0,0,0         string: escribir caracter
371:    LDC       0,109(0)      string: cargar caracter 'm'
372:    OUT       0,0,0         string: escribir caracter
373:    LDC       0,97(0)       string: cargar caracter 'a'
374:    OUT       0,0,0         string: escribir caracter
375:    LDC       0,32(0)       string: cargar caracter ' '
376:    OUT       0,0,0         string: escribir caracter
377:    LDC       0,100(0)      string: cargar caracter 'd'
378:    OUT       0,0,0         string: escribir caracter
379:    LDC       0,101(0)      string: cargar caracter 'e'
380:    OUT       0,0,0         string: escribir caracter
381:    LDC       0,108(0)      string: cargar caracter 'l'
382:    OUT       0,0,0         string: escribir caracter
383:    LDC       0,32(0)       string: cargar caracter ' '
384:    OUT       0,0,0         string: escribir caracter
385:    LDC       0,118(0)      string: cargar caracter 'v'
386:    OUT       0,0,0         string: escribir caracter
387:    LDC       0,101(0)      string: cargar caracter 'e'
388:    OUT       0,0,0         string: escribir caracter
389:    LDC       0,99(0)       string: cargar caracter 'c'
390:    OUT       0,0,0         string: escribir caracter
391:    LDC       0,116(0)      string: cargar caracter 't'
392:    OUT       0,0,0         string: escribir caracter
393:    LDC       0,111(0)      string: cargar caracter 'o'
394:    OUT       0,0,0         string: escribir caracter
395:    LDC       0,114(0)      string: cargar caracter 'r'
396:    OUT       0,0,0         string: escribir caracter
397:    LDC       0,32(0)       string: cargar caracter ' '
398:    OUT       0,0,0         string: escribir caracter
399:    LDC       0,101(0)      string: cargar caracter 'e'
400:    OUT       0,0,0         string: escribir caracter
401:    LDC       0,115(0)      string: cargar caracter 's'
402:    OUT       0,0,0         string: escribir caracter
403:    LDC       0,58(0)       string: cargar caracter ':'
404:    OUT       0,0,0         string: escribir caracter
405:    LDC       0,32(0)       string: cargar caracter ' '
406:    OUT       0,0,0         string: escribir caracter
* <- string
407:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> escribir
* -> identificador
408:    LD        0,13(5)       cargar valor de identificador: resultado
* <- identificador
409:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* -> if
* -> Operacion: or
* -> Operacion: mayor
* -> identificador
410:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
411:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
412:    LDC       0,5(0)        cargar constante: 5
* <- constante
413:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
414:    SUB       0,1,0         op: >
415:    JGT       0,2(7)        saltar si AC>0
416:    LDC       0,0(0)        caso falso
417:    LDA       7,1(7)        saltar caso verdadero
418:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
419:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> Operacion: menor
* -> identificador
420:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
421:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
422:    LDC       0,0(0)        cargar constante: 0
* <- constante
423:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
424:    SUB       0,1,0         op: <
425:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
426:    LDC       0,0(0)        caso de falso (AC=0)
427:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
428:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
429:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
430:    JNE       1,3(7)        or: si izquierdo es verdadero, resultado es verdadero
431:    JNE       0,2(7)        or: si derecho es verdadero, resultado es verdadero
432:    LDC       0,0(0)        or: ambos falsos
433:    LDA       7,1(7)        or: saltar caso verdadero
434:    LDC       0,1(0)        or: resultado verdadero
* <- Operacion: or
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> string
* String: "Condici▒n compleja verdadera"
436:    LDC       0,67(0)       string: cargar caracter 'C'
437:    OUT       0,0,0         string: escribir caracter
438:    LDC       0,111(0)      string: cargar caracter 'o'
439:    OUT       0,0,0         string: escribir caracter
440:    LDC       0,110(0)      string: cargar caracter 'n'
441:    OUT       0,0,0         string: escribir caracter
442:    LDC       0,100(0)      string: cargar caracter 'd'
443:    OUT       0,0,0         string: escribir caracter
444:    LDC       0,105(0)      string: cargar caracter 'i'
445:    OUT       0,0,0         string: escribir caracter
446:    LDC       0,99(0)       string: cargar caracter 'c'
447:    OUT       0,0,0         string: escribir caracter
448:    LDC       0,105(0)      string: cargar caracter 'i'
449:    OUT       0,0,0         string: escribir caracter
450:    LDC       0,243(0)      string: cargar caracter '▒'
451:    OUT       0,0,0         string: escribir caracter
452:    LDC       0,110(0)      string: cargar caracter 'n'
453:    OUT       0,0,0         string: escribir caracter
454:    LDC       0,32(0)       string: cargar caracter ' '
455:    OUT       0,0,0         string: escribir caracter
456:    LDC       0,99(0)       string: cargar caracter 'c'
457:    OUT       0,0,0         string: escribir caracter
458:    LDC       0,111(0)      string: cargar caracter 'o'
459:    OUT       0,0,0         string: escribir caracter
460:    LDC       0,109(0)      string: cargar caracter 'm'
461:    OUT       0,0,0         string: escribir caracter
462:    LDC       0,112(0)      string: cargar caracter 'p'
463:    OUT       0,0,0         string: escribir caracter
464:    LDC       0,108(0)      string: cargar caracter 'l'
465:    OUT       0,0,0         string: escribir caracter
466:    LDC       0,101(0)      string: cargar caracter 'e'
467:    OUT       0,0,0         string: escribir caracter
468:    LDC       0,106(0)      string: cargar caracter 'j'
469:    OUT       0,0,0         string: escribir caracter
470:    LDC       0,97(0)       string: cargar caracter 'a'
471:    OUT       0,0,0         string: escribir caracter
472:    LDC       0,32(0)       string: cargar caracter ' '
473:    OUT       0,0,0         string: escribir caracter
474:    LDC       0,118(0)      string: cargar caracter 'v'
475:    OUT       0,0,0         string: escribir caracter
476:    LDC       0,101(0)      string: cargar caracter 'e'
477:    OUT       0,0,0         string: escribir caracter
478:    LDC       0,114(0)      string: cargar caracter 'r'
479:    OUT       0,0,0         string: escribir caracter
480:    LDC       0,100(0)      string: cargar caracter 'd'
481:    OUT       0,0,0         string: escribir caracter
482:    LDC       0,97(0)       string: cargar caracter 'a'
483:    OUT       0,0,0         string: escribir caracter
484:    LDC       0,100(0)      string: cargar caracter 'd'
485:    OUT       0,0,0         string: escribir caracter
486:    LDC       0,101(0)      string: cargar caracter 'e'
487:    OUT       0,0,0         string: escribir caracter
488:    LDC       0,114(0)      string: cargar caracter 'r'
489:    OUT       0,0,0         string: escribir caracter
490:    LDC       0,97(0)       string: cargar caracter 'a'
491:    OUT       0,0,0         string: escribir caracter
* <- string
492:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
435:    JEQ       0,58(7)       if: jmp hacia else
* <- if
* -> if
* -> Operacion: not
* -> Operacion: diferente
* -> identificador
494:    LD        0,12(5)       cargar valor de identificador: num
* <- identificador
495:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
496:    LDC       0,5(0)        cargar constante: 5
* <- constante
497:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
498:    SUB       0,1,0         op: !=
499:    JNE       0,2(7)        saltar si AC!=0
500:    LDC       0,0(0)        caso falso
501:    LDA       7,1(7)        saltar caso verdadero
502:    LDC       0,1(0)        caso verdadero
* <- Operacion: diferente
503:    JEQ       0,2(7)        not: saltar si es cero (falso)
504:    LDC       0,0(0)        not: resultado falso
505:    LDA       7,1(7)        not: saltar carga de verdadero
506:    LDC       0,1(0)        not: resultado verdadero
* <- Operacion: not
* If: el salto hacia el else debe estar aqui
* -> escribir
* -> string
* String: "El n▒mero es 5"
508:    LDC       0,69(0)       string: cargar caracter 'E'
509:    OUT       0,0,0         string: escribir caracter
510:    LDC       0,108(0)      string: cargar caracter 'l'
511:    OUT       0,0,0         string: escribir caracter
512:    LDC       0,32(0)       string: cargar caracter ' '
513:    OUT       0,0,0         string: escribir caracter
514:    LDC       0,110(0)      string: cargar caracter 'n'
515:    OUT       0,0,0         string: escribir caracter
516:    LDC       0,250(0)      string: cargar caracter '▒'
517:    OUT       0,0,0         string: escribir caracter
518:    LDC       0,109(0)      string: cargar caracter 'm'
519:    OUT       0,0,0         string: escribir caracter
520:    LDC       0,101(0)      string: cargar caracter 'e'
521:    OUT       0,0,0         string: escribir caracter
522:    LDC       0,114(0)      string: cargar caracter 'r'
523:    OUT       0,0,0         string: escribir caracter
524:    LDC       0,111(0)      string: cargar caracter 'o'
525:    OUT       0,0,0         string: escribir caracter
526:    LDC       0,32(0)       string: cargar caracter ' '
527:    OUT       0,0,0         string: escribir caracter
528:    LDC       0,101(0)      string: cargar caracter 'e'
529:    OUT       0,0,0         string: escribir caracter
530:    LDC       0,115(0)      string: cargar caracter 's'
531:    OUT       0,0,0         string: escribir caracter
532:    LDC       0,32(0)       string: cargar caracter ' '
533:    OUT       0,0,0         string: escribir caracter
534:    LDC       0,53(0)       string: cargar caracter '5'
535:    OUT       0,0,0         string: escribir caracter
* <- string
536:    OUT       0,0,0         escribir: genero la salida de la expresion
* <- escribir
* If: el salto hacia el final debe estar aqui
507:    JEQ       0,30(7)       if: jmp hacia else
* <- if
* -> declaracion: i
* Declaracion de variable: i (local)
538:    LDC       0,0(0)        local: inicializar variable i a cero
539:    ST        0,11(5)       local: almacenar en direccion 11
* <- declaracion
* -> declaracion: total
* Declaracion de variable: total (local)
540:    LDC       0,0(0)        local: inicializar variable total a cero
541:    ST        0,14(5)       local: almacenar en direccion 14
* <- declaracion
* -> asignacion
* -> constante
542:    LDC       0,0(0)        cargar constante: 0
* <- constante
543:    ST        0,14(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> for
* -> constante
544:    LDC       0,0(0)        cargar constante: 0
* <- constante
545:    ST        0,11(5)       for: inicializar variable i
* for: inicio del bucle
546:    LD        0,11(5)       for: cargar variable de control
547:    ST        0,-3(6)       for: guardar variable en pila temp
* -> Operacion: menos
* -> identificador
548:    LD        0,15(5)       cargar valor de identificador: size
* <- identificador
549:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
550:    LDC       0,1(0)        cargar constante: 1
* <- constante
551:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
552:    SUB       0,1,0         op: -
* <- Operacion: menos
553:    LD        1,-3(6)       for: cargar variable de pila temp
554:    SUB       0,1,0         for: variable - valor_final
* for: salto condicional al final
* -> asignacion
* -> Operacion: mas
* -> identificador
556:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
557:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> identificador
* -> identificador
558:    LD        0,11(5)       cargar valor de identificador: i
* <- identificador
559:    LDC       1,16(0)       identificador array: cargar direccion base
560:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
561:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
562:    ADD       0,1,0         op: +
* <- Operacion: mas
563:    ST        0,14(5)       asignacion: almaceno el valor para el id total
* <- asignacion
* -> if
* -> Operacion: menor
* -> identificador
* -> identificador
564:    LD        0,11(5)       cargar valor de identificador: i
* <- identificador
565:    LDC       1,16(0)       identificador array: cargar direccion base
566:    ADD       0,0,1         identificador array: calcular direccion
* <- identificador
567:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
568:    LDC       0,0(0)        cargar constante: 0
* <- constante
569:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
570:    SUB       0,1,0         op: <
571:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
572:    LDC       0,0(0)        caso de falso (AC=0)
573:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
574:    LDC       0,1(0)        caso de verdadero (AC=1)
* <- Operacion: menor
* If: el salto hacia el else debe estar aqui
* -> continue
* continue: salto al incremento del bucle
* <- continue
* If: el salto hacia el final debe estar aqui
575:    JEQ       0,1(7)        if: jmp hacia else
* <- if
* -> if
* -> Operacion: mayor
* -> identificador
577:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
578:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
* -> constante
579:    LDC       0,200(0)      cargar constante: 200
* <- constante
580:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
581:    SUB       0,1,0         op: >
582:    JGT       0,2(7)        saltar si AC>0
583:    LDC       0,0(0)        caso falso
584:    LDA       7,1(7)        saltar caso verdadero
585:    LDC       0,1(0)        caso verdadero
* <- Operacion: mayor
* If: el salto hacia el else debe estar aqui
* -> break
* break: salto al final del bucle
* <- break
* If: el salto hacia el final debe estar aqui
586:    JEQ       0,1(7)        if: jmp hacia else
* <- if
* for: punto de continue
588:    LD        0,11(5)       for: cargar variable para incremento
589:    ST        0,-3(6)       for: guardar variable en pila temp
* -> constante
590:    LDC       0,1(0)        cargar constante: 1
* <- constante
591:    LD        1,-3(6)       for: cargar variable de pila temp
592:    ADD       0,1,0         for: incrementar variable
593:    ST        0,11(5)       for: guardar variable incrementada
594:    LDA       7,-49(7)      for: salto al inicio
* for: fin del bucle
555:    JGT       0,39(7)       for: saltar si variable > final
* <- for
* -> return
* -> identificador
595:    LD        0,14(5)       cargar valor de identificador: total
* <- identificador
596:    LD        1,-2(6)       return: restaurar frame
597:    LD        7,0(1)        return: salto a direccion de retorno
* <- return
* <- programa
* Fin de la ejecucion.
598:    HALT      0,0,0
