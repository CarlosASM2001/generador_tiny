package ve.edu.unet;

import ve.edu.unet.nodosAST.*;

public class Generador {
	/* Ilustracion de la disposicion de la memoria en
	 * este ambiente de ejecucion para el lenguaje Tiny
	 *
	 * |t1	|<- mp (Maxima posicion de memoria de la TM
	 * |t1	|<- desplazamientoTmp (tope actual)
	 * |free|
	 * |free|
	 * |...	|
	 * |x	|
	 * |y	|<- gp
	 * 
	 * */
	
	
	
	/* desplazamientoTmp es una variable inicializada en 0
	 * y empleada como el desplazamiento de la siguiente localidad
	 * temporal disponible desde la parte superior o tope de la memoria
	 * (la que apunta el registro MP).
	 * 
	 * - Se decrementa (desplazamientoTmp--) despues de cada almacenamiento y
	 * 
	 * - Se incrementa (desplazamientoTmp++) despues de cada eliminacion/carga en 
	 *   otra variable de un valor de la pila.
	 * 
	 * Pudiendose ver como el apuntador hacia el tope de la pila temporal
	 * y las llamadas a la funcion emitirRM corresponden a una inserccion 
	 * y extraccion de esta pila
	 */
	private static int desplazamientoTmp = 0;
	private static TablaSimbolos tablaSimbolos = null;
	
	public static void setTablaSimbolos(TablaSimbolos tabla){
		tablaSimbolos = tabla;
	}
	
	public static void generarCodigoObjeto(NodoBase raiz){
		System.out.println();
		System.out.println();
		System.out.println("------ CODIGO OBJETO DEL LENGUAJE TINY GENERADO PARA LA TM ------");
		System.out.println();
		System.out.println();
		generarPreludioEstandar();
		generar(raiz);
		/*Genero el codigo de finalizacion de ejecucion del codigo*/   
		UtGen.emitirComentario("Fin de la ejecucion.");
		UtGen.emitirRO("HALT", 0, 0, 0, "");
		System.out.println();
		System.out.println();
		System.out.println("------ FIN DEL CODIGO OBJETO DEL LENGUAJE TINY GENERADO PARA LA TM ------");
	}
	
	//Funcion principal de generacion de codigo
	//prerequisito: Fijar la tabla de simbolos antes de generar el codigo objeto 
	private static void generar(NodoBase nodo){
	if(tablaSimbolos!=null){
		if (nodo instanceof  NodoIf){
			generarIf(nodo);
		}else if (nodo instanceof  NodoRepeat){
			generarRepeat(nodo);
		}else if (nodo instanceof  NodoAsignacion){
			generarAsignacion(nodo);
		}else if (nodo instanceof  NodoLeer){
			generarLeer(nodo);
		}else if (nodo instanceof  NodoEscribir){
			generarEscribir(nodo);
		}else if (nodo instanceof NodoValor){
			generarValor(nodo);
		}else if (nodo instanceof NodoIdentificador){
			generarIdentificador(nodo);
		}else if (nodo instanceof NodoOperacion){
			generarOperacion(nodo);
		}else if (nodo instanceof NodoString){
			generarString((NodoString)nodo);
		}else if (nodo instanceof NodoFor){
			generarFor((NodoFor)nodo);
		}else if (nodo instanceof NodoPrograma){
			generarPrograma((NodoPrograma)nodo);
		}else if (nodo instanceof NodoDeclaracion){
			// Declaraciones no generan codigo directamente en este modelo
		}else if (nodo instanceof NodoFuncion){
			// No implementado: funciones. Por ahora no generan codigo
		}else if (nodo instanceof NodoLlamadaFuncion){
			generarLlamadaFuncion((NodoLlamadaFuncion)nodo);
		}else if (nodo instanceof NodoReturn){
			// No implementado: retorno de funciones en este modelo
		}else{
			System.out.println("BUG: Tipo de nodo a generar desconocido");
		}
		/*Si el hijo de extrema izquierda tiene hermano a la derecha lo genero tambien*/
		if(nodo.TieneHermano())
			generar(nodo.getHermanoDerecha());
	}else
		System.out.println("ERROR: por favor fije la tabla de simbolos a usar antes de generar codigo objeto!!!");
}

	private static void generarPrograma(NodoPrograma n){
		if(UtGen.debug) UtGen.emitirComentario("-> programa (globales, funciones, main)");
		if(n.getGlobal_block()!=null) generar(n.getGlobal_block());
		if(n.getFunction_block()!=null) generar(n.getFunction_block());
		if(n.getMain()!=null) generar(n.getMain());
		if(UtGen.debug) UtGen.emitirComentario("<- programa");
	}

	private static void generarIf(NodoBase nodo){
    	NodoIf n = (NodoIf)nodo;
		int localidadSaltoElse,localidadSaltoEnd,localidadActual;
		if(UtGen.debug)	UtGen.emitirComentario("-> if");
		/*Genero el codigo para la parte de prueba del IF*/
		generar(n.getPrueba());
		localidadSaltoElse = UtGen.emitirSalto(1);
		UtGen.emitirComentario("If: el salto hacia el else debe estar aqui");
		/*Genero la parte THEN*/
		generar(n.getParteThen());
		localidadSaltoEnd = UtGen.emitirSalto(1);
		UtGen.emitirComentario("If: el salto hacia el final debe estar aqui");
		localidadActual = UtGen.emitirSalto(0);
		UtGen.cargarRespaldo(localidadSaltoElse);
		UtGen.emitirRM_Abs("JEQ", UtGen.AC, localidadActual, "if: jmp hacia else");
		UtGen.restaurarRespaldo();
		/*Genero la parte ELSE*/
		if(n.getParteElse()!=null){
			generar(n.getParteElse());
			localidadActual = UtGen.emitirSalto(0);
			UtGen.cargarRespaldo(localidadSaltoEnd);
			UtGen.emitirRM_Abs("LDA", UtGen.PC, localidadActual, "if: jmp hacia el final");
			UtGen.restaurarRespaldo();
    	}
		
		if(UtGen.debug)	UtGen.emitirComentario("<- if");
	}
	
	private static void generarRepeat(NodoBase nodo){
    	NodoRepeat n = (NodoRepeat)nodo;
		int localidadSaltoInicio;
		if(UtGen.debug)	UtGen.emitirComentario("-> repeat");
			localidadSaltoInicio = UtGen.emitirSalto(0);
			UtGen.emitirComentario("repeat: el salto hacia el final (luego del cuerpo) del repeat debe estar aqui");
			/* Genero el cuerpo del repeat */
			generar(n.getCuerpo());
			/* Genero el codigo de la prueba del repeat */
			generar(n.getPrueba());
			UtGen.emitirRM_Abs("JEQ", UtGen.AC, localidadSaltoInicio, "repeat: jmp hacia el inicio del cuerpo");
		if(UtGen.debug)	UtGen.emitirComentario("<- repeat");
	}		
	
	private static void generarFor(NodoFor n){
		if(UtGen.debug) UtGen.emitirComentario("-> for");
		// i := valorInicial
		generar(n.getValorInicial());
		int dirI = tablaSimbolos.getDireccion(n.getVariable());
		UtGen.emitirRM("ST", UtGen.AC, dirI, UtGen.GP, "for: init asigna i");
		// inicio del ciclo
		int localidadInicio = UtGen.emitirSalto(0);
		// condicion i <= final
		UtGen.emitirComentario("for: evaluar condicion i <= final");
		UtGen.emitirRM("LD", UtGen.AC, dirI, UtGen.GP, "for: cargar i");
		UtGen.emitirRM("ST", UtGen.AC, desplazamientoTmp--, UtGen.MP, "for: push i");
		generar(n.getValorFinal());
		UtGen.emitirRM("LD", UtGen.AC1, ++desplazamientoTmp, UtGen.MP, "for: pop i en AC1");
		// AC1 = i, AC = final; calcular i - final y convertir a booleano (i <= final)
		UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "for: i - final");
		UtGen.emitirRM("JLE", UtGen.AC, 2, UtGen.PC, "for: si i<=final entonces verdadero");
		UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "for: caso falso (AC=0)");
		UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "for: salto evita verdadero");
		UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "for: caso verdadero (AC=1)");
		int saltoFin = UtGen.emitirSalto(1);
		UtGen.emitirComentario("for: salto a fin debe ir aqui si condicion es falsa");
		// cuerpo
		generar(n.getCuerpo());
		// incremento i := i + step
		UtGen.emitirComentario("for: incremento");
		UtGen.emitirRM("LD", UtGen.AC, dirI, UtGen.GP, "for: cargar i");
		UtGen.emitirRM("ST", UtGen.AC, desplazamientoTmp--, UtGen.MP, "for: push i");
		generar(n.getIncremento());
		UtGen.emitirRM("LD", UtGen.AC1, ++desplazamientoTmp, UtGen.MP, "for: pop i en AC1");
		UtGen.emitirRO("ADD", UtGen.AC, UtGen.AC1, UtGen.AC, "for: i + step");
		UtGen.emitirRM("ST", UtGen.AC, dirI, UtGen.GP, "for: guardar i");
		// salto incondicional al inicio
		int locDespues = UtGen.emitirSalto(0);
		UtGen.cargarRespaldo(saltoFin);
		UtGen.emitirRM_Abs("JEQ", UtGen.AC, locDespues, "for: salir si condicion falsa");
		UtGen.restaurarRespaldo();
		UtGen.emitirRM_Abs("LDA", UtGen.PC, localidadInicio, "for: salto al inicio");
		if(UtGen.debug) UtGen.emitirComentario("<- for");
	}
	
	private static void generarAsignacion(NodoBase nodo){
		NodoAsignacion n = (NodoAsignacion)nodo;
		int direccion;
		if(UtGen.debug)	UtGen.emitirComentario("-> asignacion");
		/* Genero el codigo para la expresion a la derecha de la asignacion */
		if(n.esAsignacionArray()){
			// arr[indice] := expresion
			generar(n.getExpresion()); // AC = valor a almacenar
			// push valor
			UtGen.emitirRM("ST", UtGen.AC, desplazamientoTmp--, UtGen.MP, "asignacion array: push valor");
			// calcular indice
			generar(n.getIndice()); // AC = indice
			// AC1 = base(arr)
			int base = tablaSimbolos.getDireccion(n.getIdentificador());
			UtGen.emitirRM("LDA", UtGen.AC1, base, UtGen.GP, "asignacion array: base arr en AC1");
			// direccion efectiva en AC1 = base + indice (AC)
			UtGen.emitirRO("ADD", UtGen.AC1, UtGen.AC1, UtGen.AC, "asignacion array: base+indice");
			// recuperar valor y almacenar
			UtGen.emitirRM("LD", UtGen.AC, ++desplazamientoTmp, UtGen.MP, "asignacion array: pop valor");
			UtGen.emitirRM("ST", UtGen.AC, 0, UtGen.AC1, "asignacion array: ST valor en arr[indice]");
		}else{
			generar(n.getExpresion());
			/* Ahora almaceno el valor resultante */
			direccion = tablaSimbolos.getDireccion(n.getIdentificador());
			UtGen.emitirRM("ST", UtGen.AC, direccion, UtGen.GP, "asignacion: almaceno el valor para el id "+n.getIdentificador());
		}
		if(UtGen.debug)	UtGen.emitirComentario("<- asignacion");
	}
	
	private static void generarLeer(NodoBase nodo){
		NodoLeer n = (NodoLeer)nodo;
		int direccion;
		if(UtGen.debug)	UtGen.emitirComentario("-> leer");
		UtGen.emitirRO("IN", UtGen.AC, 0, 0, "leer: lee un valor entero ");
		direccion = tablaSimbolos.getDireccion(n.getIdentificador());
		UtGen.emitirRM("ST", UtGen.AC, direccion, UtGen.GP, "leer: almaceno el valor entero leido en el id "+n.getIdentificador());
		if(UtGen.debug)	UtGen.emitirComentario("<- leer");
	}
	
	private static void generarEscribir(NodoBase nodo){
		NodoEscribir n = (NodoEscribir)nodo;
		if(UtGen.debug)	UtGen.emitirComentario("-> escribir");
		/* Genero el codigo de la expresion que va a ser escrita en pantalla */
		if(n.getExpresion() instanceof NodoString){
			generarString((NodoString) n.getExpresion());
		}else{
			generar(n.getExpresion());
			/* Ahora genero la salida */
			UtGen.emitirRO("OUT", UtGen.AC, 0, 0, "escribir: genero la salida de la expresion");
		}
		if(UtGen.debug)	UtGen.emitirComentario("<- escribir");
	}
	
	private static void generarString(NodoString nodo){
		String s = nodo.getValor();
		if(s == null) return;
		// Remover comillas inicial y final si existen
		if(s.length() >= 2 && s.charAt(0) == '"' && s.charAt(s.length()-1) == '"'){
			s = s.substring(1, s.length()-1);
		}
		for(int i=0;i<s.length();i++){
			char c = s.charAt(i);
			UtGen.emitirRM("LDC", UtGen.AC, (int)c, 0, "cargar caracter '"+c+"'");
			UtGen.emitirRO("OUTC", UtGen.AC, 0, 0, "imprimir caracter");
		}
	}
	
	private static void generarValor(NodoBase nodo){
    	NodoValor n = (NodoValor)nodo;
    	if(UtGen.debug)	UtGen.emitirComentario("-> constante");
    	if (n.esReal()) {
   	 		UtGen.emitirRM("LDC", UtGen.AC, n.getValorReal().intValue(), 0, "cargar constante: "+n.getValor());
    	} else {
   	 		UtGen.emitirRM("LDC", UtGen.AC, n.getValorEntero(), 0, "cargar constante: "+n.getValor());
    	}
    	if(UtGen.debug)	UtGen.emitirComentario("<- constante");
	}
	
	private static void generarIdentificador(NodoBase nodo){
		NodoIdentificador n = (NodoIdentificador)nodo;
		int direccion;
		if(UtGen.debug)	UtGen.emitirComentario("-> identificador");
		if(n.getDesplazamiento()!=null){
			// acceso a arreglo: cargar arr[indice]
			generar(n.getDesplazamiento()); // AC = indice
			int base = tablaSimbolos.getDireccion(n.getNombre());
			UtGen.emitirRM("LDA", UtGen.AC1, base, UtGen.GP, "identificador array: base en AC1");
			UtGen.emitirRO("ADD", UtGen.AC1, UtGen.AC1, UtGen.AC, "identificador array: base+indice");
			UtGen.emitirRM("LD", UtGen.AC, 0, UtGen.AC1, "cargar arr[indice]");
		}else{
			direccion = tablaSimbolos.getDireccion(n.getNombre());
			UtGen.emitirRM("LD", UtGen.AC, direccion, UtGen.GP, "cargar valor de identificador: "+n.getNombre());
		}
		if(UtGen.debug)	UtGen.emitirComentario("-> identificador");
	}

	private static void generarOperacion(NodoBase nodo){
		NodoOperacion n = (NodoOperacion) nodo;
		if(UtGen.debug)	UtGen.emitirComentario("-> Operacion: " + n.getOperacion());
		/* Genero la expresion izquierda de la operacion */
		if(n.getOpIzquierdo()!=null) generar(n.getOpIzquierdo());
		/* Almaceno en la pseudo pila de valor temporales el valor de la operacion izquierda */
		if(n.getOpIzquierdo()!=null) UtGen.emitirRM("ST", UtGen.AC, desplazamientoTmp--, UtGen.MP, "op: push en la pila tmp el resultado expresion izquierda");
		/* Genero la expresion derecha de la operacion */
		if(n.getOpDerecho()!=null) generar(n.getOpDerecho());
		/* Ahora cargo/saco de la pila el valor izquierdo */
		if(n.getOpIzquierdo()!=null) UtGen.emitirRM("LD", UtGen.AC1, ++desplazamientoTmp, UtGen.MP, "op: pop o cargo de la pila el valor izquierdo en AC1");
		switch(n.getOperacion()){
			case	mas:	UtGen.emitirRO("ADD", UtGen.AC, UtGen.AC1, UtGen.AC, "op: +");		
							break;
			case	menos:	UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "op: -");
							break;
			case	por:	UtGen.emitirRO("MUL", UtGen.AC, UtGen.AC1, UtGen.AC, "op: *");
							break;
			case	entre:	UtGen.emitirRO("DIV", UtGen.AC, UtGen.AC1, UtGen.AC, "op: /");
							break;
			case	modulo:
				// Guardar operando izquierdo y derecho
				UtGen.emitirRM("ST", UtGen.AC1, desplazamientoTmp--, UtGen.MP, "op %: push izquierdo");
				UtGen.emitirRM("ST", UtGen.AC, desplazamientoTmp--, UtGen.MP, "op %: push derecho");
				// AC = izq / der
				UtGen.emitirRO("DIV", UtGen.AC, UtGen.AC1, UtGen.AC, "op %: cociente");
				// AC1 = der
				UtGen.emitirRM("LD", UtGen.AC1, ++desplazamientoTmp, UtGen.MP, "op %: pop der");
				// AC = (cociente * der)
				UtGen.emitirRO("MUL", UtGen.AC, UtGen.AC, UtGen.AC1, "op %: cociente*der");
				// AC1 = izq
				UtGen.emitirRM("LD", UtGen.AC1, ++desplazamientoTmp, UtGen.MP, "op %: pop izq");
				// AC = izq - (cociente*der)
				UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "op %: resto");
				break;
			case	potencia:
				// base en AC1, exponente en AC
				int tBase = desplazamientoTmp--;
				UtGen.emitirRM("ST", UtGen.AC1, tBase, UtGen.MP, "op **: guardar base");
				int tExp = desplazamientoTmp--;
				UtGen.emitirRM("ST", UtGen.AC, tExp, UtGen.MP, "op **: guardar exp");
				int tRes = desplazamientoTmp--;
				UtGen.emitirRM("LDC", UtGen.AC, 1, 0, "op **: resultado=1");
				UtGen.emitirRM("ST", UtGen.AC, tRes, UtGen.MP, "op **: guardar resultado");
				int loopIni = UtGen.emitirSalto(0);
				// if exp==0 goto fin
				UtGen.emitirRM("LD", UtGen.AC, tExp, UtGen.MP, "op **: cargar exp");
				int saltoFinPow = UtGen.emitirSalto(1);
				UtGen.emitirComentario("op **: salto a fin si exp==0");
				// res = res * base
				UtGen.emitirRM("LD", UtGen.AC, tRes, UtGen.MP, "op **: cargar res");
				UtGen.emitirRM("LD", UtGen.AC1, tBase, UtGen.MP, "op **: cargar base");
				UtGen.emitirRO("MUL", UtGen.AC, UtGen.AC, UtGen.AC1, "op **: res*=base");
				UtGen.emitirRM("ST", UtGen.AC, tRes, UtGen.MP, "op **: guardar res");
				// exp = exp - 1
				UtGen.emitirRM("LD", UtGen.AC, tExp, UtGen.MP, "op **: cargar exp");
				UtGen.emitirRM("LDC", UtGen.AC1, 1, 0, "op **: cargar 1");
				UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC, UtGen.AC1, "op **: exp--");
				UtGen.emitirRM("ST", UtGen.AC, tExp, UtGen.MP, "op **: guardar exp");
				// salto al inicio
				int locDesp = UtGen.emitirSalto(0);
				UtGen.cargarRespaldo(saltoFinPow);
				UtGen.emitirRM_Abs("JEQ", UtGen.AC, locDesp, "op **: fin si exp==0");
				UtGen.restaurarRespaldo();
				UtGen.emitirRM_Abs("LDA", UtGen.PC, loopIni, "op **: repetir");
				// cargar resultado final en AC
				UtGen.emitirRM("LD", UtGen.AC, tRes, UtGen.MP, "op **: cargar resultado final");
				// liberar temporales
				desplazamientoTmp += 3;
				break;
			case	menor:	UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "op: <");
							UtGen.emitirRM("JLT", UtGen.AC, 2, UtGen.PC, "voy dos instrucciones mas alla if verdadero (AC<0)");
							UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "caso de falso (AC=0)");
							UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)");
							UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "caso de verdadero (AC=1)");
							break;
			case	igual:	UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "op: ==");
							UtGen.emitirRM("JEQ", UtGen.AC, 2, UtGen.PC, "voy dos instrucciones mas alla if verdadero (AC==0)");
							UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "caso de falso (AC=0)");
							UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)");
							UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "caso de verdadero (AC=1)");
							break;
			case	mayor:
				UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "op: >");
				UtGen.emitirRM("JGT", UtGen.AC, 2, UtGen.PC, "verdadero si AC>0");
				UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "falso");
				UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "salto evita verdadero");
				UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "verdadero");
				break;
			case	menorigual:
				UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "op: <=");
				UtGen.emitirRM("JLE", UtGen.AC, 2, UtGen.PC, "verdadero si AC<=0");
				UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "falso");
				UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "salto evita verdadero");
				UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "verdadero");
				break;
			case	mayorigual:
				UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "op: >=");
				UtGen.emitirRM("JGE", UtGen.AC, 2, UtGen.PC, "verdadero si AC>=0");
				UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "falso");
				UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "salto evita verdadero");
				UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "verdadero");
				break;
			case	diferente:
				UtGen.emitirRO("SUB", UtGen.AC, UtGen.AC1, UtGen.AC, "op: !=");
				UtGen.emitirRM("JNE", UtGen.AC, 2, UtGen.PC, "verdadero si AC!=0");
				UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "falso");
				UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "salto evita verdadero");
				UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "verdadero");
				break;
			case	and:
				// AC1 y AC contienen booleanos (0/1)
				UtGen.emitirRO("MUL", UtGen.AC, UtGen.AC1, UtGen.AC, "op: AND");
				break;
			case	or:
				UtGen.emitirRO("ADD", UtGen.AC, UtGen.AC1, UtGen.AC, "op: OR (suma)");
				UtGen.emitirRM("JGT", UtGen.AC, 2, UtGen.PC, "OR verdadero si >0");
				UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "OR falso");
				UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "salto evita verdadero");
				UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "OR verdadero");
				break;
			case	not:
				// Solo operando derecho en AC
				UtGen.emitirRM("JEQ", UtGen.AC, 2, UtGen.PC, "NOT: si 0 entonces verdadero");
				UtGen.emitirRM("LDC", UtGen.AC, 0, UtGen.AC, "NOT: resultado 0");
				UtGen.emitirRM("LDA", UtGen.PC, 1, UtGen.PC, "NOT: salto evita verdadero");
				UtGen.emitirRM("LDC", UtGen.AC, 1, UtGen.AC, "NOT: resultado 1");
				break;
			default:
							UtGen.emitirComentario("BUG: tipo de operacion desconocida");
		}
		if(UtGen.debug)	UtGen.emitirComentario("<- Operacion: " + n.getOperacion());
	}
	
	private static void generarLlamadaFuncion(NodoLlamadaFuncion n){
		// No implementado: evaluar argumentos y devolver 0 como valor por defecto
		if(n.getArgumentos()!=null) generar(n.getArgumentos());
		UtGen.emitirRM("LDC", UtGen.AC, 0, 0, "llamada funcion (no-op): retorna 0");
	}
	
	//TODO: enviar preludio a archivo de salida, obtener antes su nombre
	private static void generarPreludioEstandar(){
		UtGen.emitirComentario("Compilacion TINY para el codigo objeto TM");
		UtGen.emitirComentario("Archivo: "+ "NOMBRE_ARREGLAR");
		/*Genero inicializaciones del preludio estandar*/
		/*Todos los registros en tiny comienzan en cero*/
		UtGen.emitirComentario("Preludio estandar:");
		UtGen.emitirRM("LD", UtGen.MP, 0, UtGen.AC, "cargar la maxima direccion desde la localidad 0");
		UtGen.emitirRM("ST", UtGen.AC, 0, UtGen.AC, "limpio el registro de la localidad 0");
	}

}
