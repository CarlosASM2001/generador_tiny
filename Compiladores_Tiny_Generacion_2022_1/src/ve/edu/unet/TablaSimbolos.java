package ve.edu.unet;

import ve.edu.unet.nodosAST.*;

import java.util.*;




public class TablaSimbolos {
	private HashMap<String, RegistroSimbolo> tabla;
	private int direccion;  //Contador de las localidades de memoria asignadas a la tabla
	
	public TablaSimbolos() {
		super();
		tabla = new HashMap<String, RegistroSimbolo>();
		direccion=0;
	}

	public void cargarTabla(NodoBase raiz){
		while (raiz != null) {
			if (raiz instanceof NodoPrograma){
				NodoPrograma prog = (NodoPrograma)raiz;
				if(prog.getGlobal_block() != null){
					cargarTabla(prog.getGlobal_block());
				}
				if(prog.getFunction_block() != null){
					cargarTabla(prog.getFunction_block());
				}
				if(prog.getMain() != null){
					cargarTabla(prog.getMain());
				}
			}
			else if (raiz instanceof NodoDeclaracion){
				NodoDeclaracion decl = (NodoDeclaracion)raiz;
				InsertarSimbolo(decl.getNombreVariable(), -1);
			}
			else if (raiz instanceof NodoFuncion){
				NodoFuncion func = (NodoFuncion)raiz;
				if(func.getNombre() != null){
					InsertarSimbolo(func.getNombre(), -1);
				}
				if(func.getParametros() != null){
					cargarTabla(func.getParametros());
				}
				if(func.getCuerpo() != null){
					cargarTabla(func.getCuerpo());
				}
			}
			else if (raiz instanceof NodoIdentificador){
				InsertarSimbolo(((NodoIdentificador)raiz).getNombre(),-1);
				//TODO: Anadir el numero de linea y localidad de memoria correcta
				if(((NodoIdentificador)raiz).getDesplazamiento() != null){
					cargarTabla(((NodoIdentificador)raiz).getDesplazamiento());
				}
			}
			else if (raiz instanceof NodoLlamadaFuncion){
				NodoLlamadaFuncion llamada = (NodoLlamadaFuncion)raiz;
				if(llamada.getArgumentos() != null){
					cargarTabla(llamada.getArgumentos());
				}
			}
			else if (raiz instanceof NodoFor){
				NodoFor forNode = (NodoFor)raiz;
				InsertarSimbolo(forNode.getVariable(), -1);
				cargarTabla(forNode.getValorInicial());
				cargarTabla(forNode.getValorFinal());
				cargarTabla(forNode.getIncremento());
				cargarTabla(forNode.getCuerpo());
			}
			else if (raiz instanceof NodoReturn){
				NodoReturn ret = (NodoReturn)raiz;
				if(ret.getExpresion() != null){
					cargarTabla(ret.getExpresion());
				}
			}

			/* Hago el recorrido recursivo para nodos existentes */
			else if (raiz instanceof  NodoIf){
				cargarTabla(((NodoIf)raiz).getPrueba());
				cargarTabla(((NodoIf)raiz).getParteThen());
				if(((NodoIf)raiz).getParteElse()!=null){
					cargarTabla(((NodoIf)raiz).getParteElse());
				}
			}
			else if (raiz instanceof  NodoRepeat){
				cargarTabla(((NodoRepeat)raiz).getCuerpo());
				cargarTabla(((NodoRepeat)raiz).getPrueba());
			}
			else if (raiz instanceof  NodoAsignacion){
				NodoAsignacion asig = (NodoAsignacion)raiz;
				InsertarSimbolo(asig.getIdentificador(), -1);
				cargarTabla(asig.getExpresion());
				if(asig.getIndice() != null){
					cargarTabla(asig.getIndice());
				}
			}
			else if (raiz instanceof  NodoLeer){
				NodoLeer leer = (NodoLeer)raiz;
				InsertarSimbolo(leer.getIdentificador(), -1);
			}
			else if (raiz instanceof  NodoEscribir)
				cargarTabla(((NodoEscribir)raiz).getExpresion());
			else if (raiz instanceof NodoOperacion){
				if(((NodoOperacion)raiz).getOpIzquierdo() != null){
					cargarTabla(((NodoOperacion)raiz).getOpIzquierdo());
				}
				cargarTabla(((NodoOperacion)raiz).getOpDerecho());
			}
			raiz = raiz.getHermanoDerecha();
		}
	}
	
	//true es nuevo no existe se insertara, false ya existe NO se vuelve a insertar 
	public boolean InsertarSimbolo(String identificador, int numLinea){
		RegistroSimbolo simbolo;
		if(tabla.containsKey(identificador)){
			return false;
		}else{
			simbolo= new RegistroSimbolo(identificador,numLinea,direccion++);
			tabla.put(identificador,simbolo);
			return true;			
		}
	}
	
	public RegistroSimbolo BuscarSimbolo(String identificador){
		RegistroSimbolo simbolo=(RegistroSimbolo)tabla.get(identificador);
		return simbolo;
	}
	
	public void ImprimirClaves(){
		System.out.println("*** Tabla de Simbolos ***");
		for( Iterator <String>it = tabla.keySet().iterator(); it.hasNext();) { 
            String s = (String)it.next();
	    System.out.println("Consegui Key: "+s+" con direccion: " + BuscarSimbolo(s).getDireccionMemoria());
		}
	}

	public int getDireccion(String Clave){
		return BuscarSimbolo(Clave).getDireccionMemoria();
	}
	
	/*
	 * TODO:
	 * 1. Crear lista con las lineas de codigo donde la variable es usada.
	 * */
}
