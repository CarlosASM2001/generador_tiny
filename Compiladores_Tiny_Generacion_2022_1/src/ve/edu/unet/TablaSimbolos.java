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
	    if (raiz instanceof NodoIdentificador){
	    	InsertarSimbolo(((NodoIdentificador)raiz).getNombre(),-1);
	    	//TODO: Anadir el numero de linea y localidad de memoria correcta
	    }
	    else if (raiz instanceof NodoDeclaracion){
	    	NodoDeclaracion d = (NodoDeclaracion) raiz;
	    	// Insertar simbolo y reservar espacio si es array
	    	InsertarSimbolo(d.getNombreVariable(), -1);
	    	if(d.isEsArray() && d.getTamaño()!=null && d.getTamaño() instanceof NodoValor){
	    		NodoValor tam = (NodoValor) d.getTamaño();
	    		int size = tam.esReal() ? tam.getValorReal().intValue() : tam.getValorEntero();
	    		// ya contamos 1 en la insercion; reservar size-1 adicionales
	    		if(size>1){
	    			reservarEspacio(size-1);
	    		}
	    	}
	    }
	    else if (raiz instanceof NodoAsignacion){
	    	NodoAsignacion n = (NodoAsignacion) raiz;
	    	InsertarSimbolo(n.getIdentificador(), -1);
	    	cargarTabla(n.getExpresion());
	    	if(n.getIndice()!=null) cargarTabla(n.getIndice());
	    }
	    else if (raiz instanceof NodoLeer){
	    	InsertarSimbolo(((NodoLeer)raiz).getIdentificador(), -1);
	    }
	
	    /* Hago el recorrido recursivo */
	    if (raiz instanceof  NodoIf){
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
	    else if (raiz instanceof NodoEscribir){
	    	cargarTabla(((NodoEscribir)raiz).getExpresion());
	    }
	    else if (raiz instanceof NodoOperacion){
	    	cargarTabla(((NodoOperacion)raiz).getOpIzquierdo());
	    	cargarTabla(((NodoOperacion)raiz).getOpDerecho());
	    }
	    else if (raiz instanceof NodoFor){
	    	NodoFor f = (NodoFor) raiz;
	    	InsertarSimbolo(f.getVariable(), -1);
	    	cargarTabla(f.getValorInicial());
	    	cargarTabla(f.getValorFinal());
	    	cargarTabla(f.getIncremento());
	    	cargarTabla(f.getCuerpo());
	    }
	    else if (raiz instanceof NodoPrograma){
	    	NodoPrograma p = (NodoPrograma) raiz;
	    	cargarTabla(p.getGlobal_block());
	    	cargarTabla(p.getFunction_block());
	    	cargarTabla(p.getMain());
	    }
	    else if (raiz instanceof NodoFuncion){
	    	NodoFuncion fun = (NodoFuncion) raiz;
	    	cargarTabla(fun.getParametros());
	    	cargarTabla(fun.getCuerpo());
	    	cargarTabla(fun.getRetorno());
	    }
	    else if (raiz instanceof NodoLlamadaFuncion){
	    	cargarTabla(((NodoLlamadaFuncion)raiz).getArgumentos());
	    }
	    else if (raiz instanceof NodoReturn){
	    	cargarTabla(((NodoReturn)raiz).getExpresion());
	    }
	    raiz = raiz.getHermanoDerecha();
	  }
	}
	
	private void reservarEspacio(int cantidad){
		// Avanza el contador de direcciones para reservar espacio adicional
		for(int i=0;i<cantidad;i++) direccion++;
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
