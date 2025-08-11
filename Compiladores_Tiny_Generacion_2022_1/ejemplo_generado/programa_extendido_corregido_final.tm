0:      LD        6,0(0)        cargar la maxima direccion desde la localidad 0
1:      ST        0,0(0)        limpio el registro de la localidad 0
2:      LDC       5,0(0)        GP apunta al inicio de variables globales (direccion 0)
3:      LDC       0,0(0)        global: inicializar variable x a cero
4:      ST        0,0(5)        global: almacenar en direccion 0
5:      LDC       0,10(0)       cargar constante: 10
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
26:     LDC       0,0(0)        local: inicializar variable i a cero
27:     ST        0,11(5)       local: almacenar en direccion 11
28:     LDC       0,0(0)        local: inicializar variable num a cero
29:     ST        0,12(5)       local: almacenar en direccion 12
30:     LDC       0,0(0)        local: inicializar variable resultado a cero
31:     ST        0,13(5)       local: almacenar en direccion 13
32:     IN        0,0,0         leer: lee un valor entero 
33:     ST        0,12(5)       leer: almaceno el valor entero leido en el id num
34:     LDC       0,0(0)        cargar constante: 0
35:     ST        0,11(5)       for: inicializar variable i
36:     LD        0,11(5)       for: cargar variable de control
37:     ST        0,0(6)        for: guardar variable en pila temp
38:     LDC       0,9(0)        cargar constante: 9
39:     LD        1,0(6)        for: cargar variable de pila temp
40:     SUB       0,1,0         for: variable - valor_final
42:     LD        0,11(5)       cargar valor de identificador: i
43:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
44:     LDC       0,2(0)        cargar constante: 2
45:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
46:     MUL       0,1,0         op: *
47:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
48:     LDC       0,1(0)        cargar constante: 1
49:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
50:     ADD       0,1,0         op: +
51:     ST        0,0(6)        asignacion array: guardar valor
52:     LD        0,11(5)       cargar valor de identificador: i
53:     LDC       1,1(0)        asignacion array: cargar direccion base
54:     ADD       0,0,1         asignacion array: calcular direccion
55:     LD        1,0(6)        asignacion array: recuperar valor
56:     ST        1,0(0)        asignacion array: almacenar en posicion calculada
57:     LD        0,11(5)       cargar valor de identificador: i
58:     LDC       1,1(0)        identificador array: cargar direccion base
59:     ADD       0,0,1         identificador array: calcular direccion
60:     OUT       0,0,0         escribir: genero la salida de la expresion
61:     LD        0,11(5)       for: cargar variable para incremento
62:     ST        0,0(6)        for: guardar variable en pila temp
63:     LDC       0,1(0)        cargar constante: 1
64:     LD        1,0(6)        for: cargar variable de pila temp
65:     ADD       0,1,0         for: incrementar variable
66:     ST        0,11(5)       for: guardar variable incrementada
67:     LDA       7,-32(7)      for: salto al inicio
41:     JGT       0,26(7)       for: saltar si variable > final
68:     LD        0,12(5)       cargar valor de identificador: num
69:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
70:     LDC       0,0(0)        cargar constante: 0
71:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
72:     SUB       0,1,0         op: >=
73:     JGE       0,2(7)        saltar si AC>=0
74:     LDC       0,0(0)        caso falso
75:     LDC       2,0(0)        cargar 0 en registro 2
76:     JEQ       2,1(7)        salto incondicional
77:     LDC       0,1(0)        caso verdadero
78:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
79:     LD        0,12(5)       cargar valor de identificador: num
80:     ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
81:     LDC       0,10(0)       cargar constante: 10
82:     LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
83:     SUB       0,1,0         op: <=
84:     JLE       0,2(7)        saltar si AC<=0
85:     LDC       0,0(0)        caso falso
86:     LDC       2,0(0)        cargar 0 en registro 2
87:     JEQ       2,1(7)        salto incondicional
88:     LDC       0,1(0)        caso verdadero
89:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
90:     JEQ       1,3(7)        and: si izquierdo es falso, resultado es falso
91:     JEQ       0,2(7)        and: si derecho es falso, resultado es falso
92:     LDC       0,1(0)        and: ambos verdaderos
93:     LDC       2,0(0)        cargar 0 en registro 2
94:     JEQ       2,1(7)        and: salto incondicional
95:     LDC       0,0(0)        and: resultado falso
97:     LD        0,12(5)       cargar valor de identificador: num
98:     OUT       0,0,0         escribir: genero la salida de la expresion
99:     LD        0,12(5)       cargar valor de identificador: num
100:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
101:    LDC       0,2(0)        cargar constante: 2
102:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
103:    ST        0,0(6)        mod: guardar b
104:    ST        1,-1(6)       mod: guardar a
105:    DIV       0,1,0         mod: a/b
106:    LD        1,-1(6)       mod: recuperar a
107:    LD        2,0(6)        mod: recuperar b en r2
108:    MUL       0,0,2         mod: (a/b)*b
109:    SUB       0,1,0         mod: a - (a/b)*b
110:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
111:    LDC       0,0(0)        cargar constante: 0
112:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
113:    SUB       0,1,0         op: ==
114:    JEQ       0,2(7)        voy dos instrucciones mas alla if verdadero (AC==0)
115:    LDC       0,0(0)        caso de falso (AC=0)
116:    LDC       2,0(0)        cargar 0 en registro 2
117:    JEQ       2,1(7)        salto incondicional
118:    LDC       0,1(0)        caso de verdadero (AC=1)
120:    LDC       0,1(0)        cargar constante: 1
121:    OUT       0,0,0         escribir: genero la salida de la expresion
119:    JEQ       0,3(7)        if: jmp hacia else
123:    LDC       0,0(0)        cargar constante: 0
124:    OUT       0,0,0         escribir: genero la salida de la expresion
122:    LDA       7,2(7)        if: jmp hacia el final
125:    LD        0,12(5)       cargar valor de identificador: num
126:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
127:    LDC       0,2(0)        cargar constante: 2
128:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
129:    MUL       0,1,1         potencia: base * base (para x^2)
130:    ST        0,0(5)        asignacion: almaceno el valor para el id x
131:    LD        0,0(5)        cargar valor de identificador: x
132:    OUT       0,0,0         escribir: genero la salida de la expresion
96:     JEQ       0,37(7)       if: jmp hacia else
134:    LDC       0,999(0)      cargar constante: 999
135:    OUT       0,0,0         escribir: genero la salida de la expresion
133:    LDA       7,2(7)        if: jmp hacia el final
136:    ST        7,0(6)        call: guardar direccion de retorno
137:    LD        0,1(5)        cargar valor de identificador: arr
138:    LDC       0,10(0)       cargar constante: 10
139:    ST        0,-1(6)       call: guardar argumento
140:    LDC       0,10(0)       cargar constante: 10
141:    ST        0,-2(6)       call: guardar argumento
142:    LDC       0,45(0)       call: resultado simulado suma_vector (suma de i*2+1 para i=0..9)
143:    ST        0,13(5)       asignacion: almaceno el valor para el id resultado
144:    LD        0,13(5)       cargar valor de identificador: resultado
145:    OUT       0,0,0         escribir: genero la salida de la expresion
146:    LD        0,12(5)       cargar valor de identificador: num
147:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
148:    LDC       0,5(0)        cargar constante: 5
149:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
150:    SUB       0,1,0         op: >
151:    JGT       0,2(7)        saltar si AC>0
152:    LDC       0,0(0)        caso falso
153:    LDC       2,0(0)        cargar 0 en registro 2
154:    JEQ       2,1(7)        salto incondicional
155:    LDC       0,1(0)        caso verdadero
156:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
157:    LD        0,12(5)       cargar valor de identificador: num
158:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
159:    LDC       0,0(0)        cargar constante: 0
160:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
161:    SUB       0,1,0         op: <
162:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
163:    LDC       0,0(0)        caso de falso (AC=0)
164:    LDC       2,0(0)        cargar 0 en registro 2
165:    JEQ       2,1(7)        salto incondicional
166:    LDC       0,1(0)        caso de verdadero (AC=1)
167:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
168:    JNE       1,3(7)        or: si izquierdo es verdadero, resultado es verdadero
169:    JNE       0,2(7)        or: si derecho es verdadero, resultado es verdadero
170:    LDC       0,0(0)        or: ambos falsos
171:    LDC       2,0(0)        cargar 0 en registro 2
172:    JEQ       2,1(7)        or: salto incondicional
173:    LDC       0,1(0)        or: resultado verdadero
175:    LDC       0,1(0)        cargar constante: 1
176:    OUT       0,0,0         escribir: genero la salida de la expresion
174:    JEQ       0,3(7)        if: jmp hacia else
178:    LD        0,12(5)       cargar valor de identificador: num
179:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
180:    LDC       0,5(0)        cargar constante: 5
181:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
182:    SUB       0,1,0         op: !=
183:    JNE       0,2(7)        saltar si AC!=0
184:    LDC       0,0(0)        caso falso
185:    LDC       2,0(0)        cargar 0 en registro 2
186:    JEQ       2,1(7)        salto incondicional
187:    LDC       0,1(0)        caso verdadero
188:    JEQ       0,2(7)        not: saltar si es cero (falso)
189:    LDC       0,0(0)        not: resultado falso
190:    LDC       2,0(0)        not: cargar 0 en registro 2
191:    JEQ       2,1(7)        not: salto incondicional
192:    LDC       0,1(0)        not: resultado verdadero
194:    LDC       0,5(0)        cargar constante: 5
195:    OUT       0,0,0         escribir: genero la salida de la expresion
193:    JEQ       0,3(7)        if: jmp hacia else
197:    LDC       0,0(0)        local: inicializar variable i a cero
198:    ST        0,11(5)       local: almacenar en direccion 11
199:    LDC       0,0(0)        local: inicializar variable total a cero
200:    ST        0,14(5)       local: almacenar en direccion 14
201:    LDC       0,0(0)        cargar constante: 0
202:    ST        0,14(5)       asignacion: almaceno el valor para el id total
203:    LDC       0,0(0)        cargar constante: 0
204:    ST        0,11(5)       for: inicializar variable i
205:    LD        0,11(5)       for: cargar variable de control
206:    ST        0,-3(6)       for: guardar variable en pila temp
207:    LD        0,15(5)       cargar valor de identificador: size
208:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
209:    LDC       0,1(0)        cargar constante: 1
210:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
211:    SUB       0,1,0         op: -
212:    LD        1,-3(6)       for: cargar variable de pila temp
213:    SUB       0,1,0         for: variable - valor_final
215:    LD        0,14(5)       cargar valor de identificador: total
216:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
217:    LD        0,11(5)       cargar valor de identificador: i
218:    LDC       1,16(0)       identificador array: cargar direccion base
219:    ADD       0,0,1         identificador array: calcular direccion
220:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
221:    ADD       0,1,0         op: +
222:    ST        0,14(5)       asignacion: almaceno el valor para el id total
223:    LD        0,11(5)       cargar valor de identificador: i
224:    LDC       1,16(0)       identificador array: cargar direccion base
225:    ADD       0,0,1         identificador array: calcular direccion
226:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
227:    LDC       0,0(0)        cargar constante: 0
228:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
229:    SUB       0,1,0         op: <
230:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
231:    LDC       0,0(0)        caso de falso (AC=0)
232:    LDC       2,0(0)        cargar 0 en registro 2
233:    JEQ       2,1(7)        salto incondicional
234:    LDC       0,1(0)        caso de verdadero (AC=1)
235:    JEQ       0,1(7)        if: jmp hacia else
237:    LD        0,14(5)       cargar valor de identificador: total
238:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
239:    LDC       0,200(0)      cargar constante: 200
240:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
241:    SUB       0,1,0         op: >
242:    JGT       0,2(7)        saltar si AC>0
243:    LDC       0,0(0)        caso falso
244:    LDC       2,0(0)        cargar 0 en registro 2
245:    JEQ       2,1(7)        salto incondicional
246:    LDC       0,1(0)        caso verdadero
247:    JEQ       0,1(7)        if: jmp hacia else
249:    LD        0,11(5)       for: cargar variable para incremento
250:    ST        0,-3(6)       for: guardar variable en pila temp
251:    LDC       0,1(0)        cargar constante: 1
252:    LD        1,-3(6)       for: cargar variable de pila temp
253:    ADD       0,1,0         for: incrementar variable
254:    ST        0,11(5)       for: guardar variable incrementada
255:    LDA       7,-51(7)      for: salto al inicio
214:    JGT       0,41(7)       for: saltar si variable > final
256:    LD        0,14(5)       cargar valor de identificador: total
257:    LD        1,-2(6)       return: restaurar frame
258:    LD        7,0(1)        return: salto a direccion de retorno
259:    HALT      0,0,0         
