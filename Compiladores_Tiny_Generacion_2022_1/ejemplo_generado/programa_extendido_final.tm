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
75:     LDA       7,1(7)        saltar caso verdadero
76:     LDC       0,1(0)        caso verdadero
77:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
78:     LD        0,12(5)       cargar valor de identificador: num
79:     ST        0,-1(6)       op: push en la pila tmp el resultado expresion izquierda
80:     LDC       0,10(0)       cargar constante: 10
81:     LD        1,-1(6)       op: pop o cargo de la pila el valor izquierdo en AC1
82:     SUB       0,1,0         op: <=
83:     JLE       0,2(7)        saltar si AC<=0
84:     LDC       0,0(0)        caso falso
85:     LDA       7,1(7)        saltar caso verdadero
86:     LDC       0,1(0)        caso verdadero
87:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
88:     JEQ       1,3(7)        and: si izquierdo es falso, resultado es falso
89:     JEQ       0,2(7)        and: si derecho es falso, resultado es falso
90:     LDC       0,1(0)        and: ambos verdaderos
91:     LDA       7,1(7)        and: saltar caso falso
92:     LDC       0,0(0)        and: resultado falso
94:     LD        0,12(5)       cargar valor de identificador: num
95:     OUT       0,0,0         escribir: genero la salida de la expresion
96:     LD        0,12(5)       cargar valor de identificador: num
97:     ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
98:     LDC       0,2(0)        cargar constante: 2
99:     LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
100:    ST        0,0(6)        mod: guardar b
101:    ST        1,-1(6)       mod: guardar a
102:    DIV       0,1,0         mod: a/b
103:    LD        1,-1(6)       mod: recuperar a
104:    LD        2,0(6)        mod: recuperar b en r2
105:    MUL       0,0,2         mod: (a/b)*b
106:    SUB       0,1,0         mod: a - (a/b)*b
107:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
108:    LDC       0,0(0)        cargar constante: 0
109:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
110:    SUB       0,1,0         op: ==
111:    JEQ       0,2(7)        voy dos instrucciones mas alla if verdadero (AC==0)
112:    LDC       0,0(0)        caso de falso (AC=0)
113:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
114:    LDC       0,1(0)        caso de verdadero (AC=1)
116:    LDC       0,1(0)        cargar constante: 1
117:    OUT       0,0,0         escribir: genero la salida de la expresion
115:    JEQ       0,3(7)        if: jmp hacia else
119:    LDC       0,0(0)        cargar constante: 0
120:    OUT       0,0,0         escribir: genero la salida de la expresion
118:    LDA       7,2(7)        if: jmp hacia el final
121:    LD        0,12(5)       cargar valor de identificador: num
122:    ST        0,0(6)        op: push en la pila tmp el resultado expresion izquierda
123:    LDC       0,2(0)        cargar constante: 2
124:    LD        1,0(6)        op: pop o cargo de la pila el valor izquierdo en AC1
125:    MUL       0,1,1         potencia: base * base (para x^2)
126:    ST        0,0(5)        asignacion: almaceno el valor para el id x
127:    LD        0,0(5)        cargar valor de identificador: x
128:    OUT       0,0,0         escribir: genero la salida de la expresion
93:     JEQ       0,36(7)       if: jmp hacia else
130:    LDC       0,999(0)      cargar constante: 999
131:    OUT       0,0,0         escribir: genero la salida de la expresion
129:    LDA       7,2(7)        if: jmp hacia el final
132:    ST        7,0(6)        call: guardar direccion de retorno
133:    LD        0,1(5)        cargar valor de identificador: arr
134:    LDC       0,10(0)       cargar constante: 10
135:    ST        0,-1(6)       call: guardar argumento
136:    LDC       0,10(0)       cargar constante: 10
137:    ST        0,-2(6)       call: guardar argumento
138:    LDC       0,45(0)       call: resultado simulado suma_vector (suma de i*2+1 para i=0..9)
139:    ST        0,13(5)       asignacion: almaceno el valor para el id resultado
140:    LD        0,13(5)       cargar valor de identificador: resultado
141:    OUT       0,0,0         escribir: genero la salida de la expresion
142:    LD        0,12(5)       cargar valor de identificador: num
143:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
144:    LDC       0,5(0)        cargar constante: 5
145:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
146:    SUB       0,1,0         op: >
147:    JGT       0,2(7)        saltar si AC>0
148:    LDC       0,0(0)        caso falso
149:    LDA       7,1(7)        saltar caso verdadero
150:    LDC       0,1(0)        caso verdadero
151:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
152:    LD        0,12(5)       cargar valor de identificador: num
153:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
154:    LDC       0,0(0)        cargar constante: 0
155:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
156:    SUB       0,1,0         op: <
157:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
158:    LDC       0,0(0)        caso de falso (AC=0)
159:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
160:    LDC       0,1(0)        caso de verdadero (AC=1)
161:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
162:    JNE       1,3(7)        or: si izquierdo es verdadero, resultado es verdadero
163:    JNE       0,2(7)        or: si derecho es verdadero, resultado es verdadero
164:    LDC       0,0(0)        or: ambos falsos
165:    LDA       7,1(7)        or: saltar caso verdadero
166:    LDC       0,1(0)        or: resultado verdadero
168:    LDC       0,1(0)        cargar constante: 1
169:    OUT       0,0,0         escribir: genero la salida de la expresion
167:    JEQ       0,3(7)        if: jmp hacia else
171:    LD        0,12(5)       cargar valor de identificador: num
172:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
173:    LDC       0,5(0)        cargar constante: 5
174:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
175:    SUB       0,1,0         op: !=
176:    JNE       0,2(7)        saltar si AC!=0
177:    LDC       0,0(0)        caso falso
178:    LDA       7,1(7)        saltar caso verdadero
179:    LDC       0,1(0)        caso verdadero
180:    JEQ       0,2(7)        not: saltar si es cero (falso)
181:    LDC       0,0(0)        not: resultado falso
182:    LDA       7,1(7)        not: saltar carga de verdadero
183:    LDC       0,1(0)        not: resultado verdadero
185:    LDC       0,5(0)        cargar constante: 5
186:    OUT       0,0,0         escribir: genero la salida de la expresion
184:    JEQ       0,3(7)        if: jmp hacia else
188:    LDC       0,0(0)        local: inicializar variable i a cero
189:    ST        0,11(5)       local: almacenar en direccion 11
190:    LDC       0,0(0)        local: inicializar variable total a cero
191:    ST        0,14(5)       local: almacenar en direccion 14
192:    LDC       0,0(0)        cargar constante: 0
193:    ST        0,14(5)       asignacion: almaceno el valor para el id total
194:    LDC       0,0(0)        cargar constante: 0
195:    ST        0,11(5)       for: inicializar variable i
196:    LD        0,11(5)       for: cargar variable de control
197:    ST        0,-3(6)       for: guardar variable en pila temp
198:    LD        0,15(5)       cargar valor de identificador: size
199:    ST        0,-4(6)       op: push en la pila tmp el resultado expresion izquierda
200:    LDC       0,1(0)        cargar constante: 1
201:    LD        1,-4(6)       op: pop o cargo de la pila el valor izquierdo en AC1
202:    SUB       0,1,0         op: -
203:    LD        1,-3(6)       for: cargar variable de pila temp
204:    SUB       0,1,0         for: variable - valor_final
206:    LD        0,14(5)       cargar valor de identificador: total
207:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
208:    LD        0,11(5)       cargar valor de identificador: i
209:    LDC       1,16(0)       identificador array: cargar direccion base
210:    ADD       0,0,1         identificador array: calcular direccion
211:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
212:    ADD       0,1,0         op: +
213:    ST        0,14(5)       asignacion: almaceno el valor para el id total
214:    LD        0,11(5)       cargar valor de identificador: i
215:    LDC       1,16(0)       identificador array: cargar direccion base
216:    ADD       0,0,1         identificador array: calcular direccion
217:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
218:    LDC       0,0(0)        cargar constante: 0
219:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
220:    SUB       0,1,0         op: <
221:    JLT       0,2(7)        voy dos instrucciones mas alla if verdadero (AC<0)
222:    LDC       0,0(0)        caso de falso (AC=0)
223:    LDA       7,1(7)        Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
224:    LDC       0,1(0)        caso de verdadero (AC=1)
225:    JEQ       0,1(7)        if: jmp hacia else
227:    LD        0,14(5)       cargar valor de identificador: total
228:    ST        0,-3(6)       op: push en la pila tmp el resultado expresion izquierda
229:    LDC       0,200(0)      cargar constante: 200
230:    LD        1,-3(6)       op: pop o cargo de la pila el valor izquierdo en AC1
231:    SUB       0,1,0         op: >
232:    JGT       0,2(7)        saltar si AC>0
233:    LDC       0,0(0)        caso falso
234:    LDA       7,1(7)        saltar caso verdadero
235:    LDC       0,1(0)        caso verdadero
236:    JEQ       0,1(7)        if: jmp hacia else
238:    LD        0,11(5)       for: cargar variable para incremento
239:    ST        0,-3(6)       for: guardar variable en pila temp
240:    LDC       0,1(0)        cargar constante: 1
241:    LD        1,-3(6)       for: cargar variable de pila temp
242:    ADD       0,1,0         for: incrementar variable
243:    ST        0,11(5)       for: guardar variable incrementada
244:    LDA       7,-49(7)      for: salto al inicio
205:    JGT       0,39(7)       for: saltar si variable > final
245:    LD        0,14(5)       cargar valor de identificador: total
246:    LD        1,-2(6)       return: restaurar frame
247:    LD        7,0(1)        return: salto a direccion de retorno
248:    HALT      0,0,0         
