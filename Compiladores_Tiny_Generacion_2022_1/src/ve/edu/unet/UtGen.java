package ve.edu.unet;

import java.io.PrintWriter;
import java.io.FileWriter;
import java.io.IOException;

/* La idea principal de esta clase (Utilidades de Generacion)es ayudar a emitir las 
 * sentencias en el asembler de la Tiny Machine (TM), haciendo mas sencilla la 
 * implementacion de un generador de codigo objeto para la misma.
 * Esta clase maneja y ayuda gestionar el numero de linea (localidad de sentencia) 
 * en la cual se debe emitir una instruccion TM.
 */

public class UtGen {
	private static int instruccionActual=0;	//Direccion (num linea) actual de emision de la instruccion
	private static int instruccionMasAlta=0;	//Almacena la direccion de la instruccion que ha resultado ser la mayor hasta ahora 
	public static boolean debug=true;
	
	// Variables para manejo de archivo de salida
	private static PrintWriter archivoSalida = null;
	private static String nombreArchivo = null;

	/* PC = program counter, registro[7] donde se almacena la direccion (linea)
	 *  actual de ejecucion del codigo objeto 
	 */
	public static int  PC=7;

	/* mp = "memory pointer" coloca al registro[6] a apuntar
	 * al tope de la memoria (para almacenamiento de variable temporales como t1, t2, etc.)
	 */
	public static int  MP=6;

	/* gp = "global pointer" coloca al registro[5] a apuntar
	 * al inicio de la memoria para el almacenamiento de variables globales
	 */
	public static int  GP=5;

	/* Defino al registro[0] como el acumulador 1 */
	public static int  AC=0;

	/* Defino al registro[1] como el acumulador 2 */
	public static int  AC1=1;
	
	/**
	 * Inicia la escritura de código objeto a un archivo .tm
	 * @param nombreArchivo El nombre del archivo (sin extensión)
	 */
	public static void iniciarArchivoSalida(String nombreArchivo) {
		try {
			UtGen.nombreArchivo = nombreArchivo + ".tm";
			archivoSalida = new PrintWriter(new FileWriter(UtGen.nombreArchivo));
			System.out.println("Generando código objeto en archivo: " + UtGen.nombreArchivo);
		} catch (IOException e) {
			System.err.println("Error al crear archivo de salida: " + e.getMessage());
			archivoSalida = null;
		}
	}
	
	/**
	 * Cierra el archivo de salida
	 */
	public static void cerrarArchivoSalida() {
		if (archivoSalida != null) {
			archivoSalida.close();
			archivoSalida = null;
			System.out.println("Archivo de código objeto generado: " + nombreArchivo);
		}
	}
	
	/**
	 * Escribe una línea tanto en consola como en archivo
	 */
	private static void escribirLinea(String linea) {
		System.out.print(linea);
		if (archivoSalida != null) {
			archivoSalida.print(linea);
		}
	}
	
	public static void emitirComentario(String c){
		if(debug) {
			String linea = "*      "+c+"\n";
			escribirLinea(linea);
		}
	}

	/* Este procedimiento emite sentencias RO (Solo Registro)
	 * de la TM    opcode r,s,t 
	 * r[r] = reg[s] op reg[t]
	 * 
	 * op = codigo de la operacion
	 * r = registro destino
	 * s = primero registro operando
	 * t = segundo registro operando
	 * c = comentario a emitir en modo debug
	 */
	public static void emitirRO(String op, int r, int s, int t, String c){
		String linea = (instruccionActual++)+":       "+op+"       "+r+","+s+","+t;
		if(debug)
			linea += "      "+c;
		linea += "\n";
		escribirLinea(linea);
		if(instruccionMasAlta < instruccionActual) 
			instruccionMasAlta = instruccionActual;
	}
	
	/* Este procedimiento emite sentencias RM (Registro a memoria)
	 * de la TM		opcode r,d(s)  		a=d+reg[s]
	 * 				reg[PC_REG]=a  o	reg[r] = x (dependiendo de instruccion de carga)
	 * 
	 * op = codigo de la operacion
	 * r = registro destino
	 * d = desplazamiento
	 * s = registro con la direccion base
	 * c = comentario a emitir en modo debug
	 */	
	public static void emitirRM(String op, int r, int d, int s, String c){
		String linea = (instruccionActual++)+":       "+op+"       "+r+","+d+"("+s+")";
		if(debug)
			linea += "      "+c;
		linea += "\n";
		escribirLinea(linea);
		if(instruccionMasAlta < instruccionActual) 
			instruccionMasAlta = instruccionActual;	
	}
	
	/* La funcion emitirSalto, salta "cantidad" de localidades de codigo
	 * para el reajuste posterior. Tambien devuelve la posicion actual
	 * del codgio generado
	 */
	public static int emitirSalto( int cantidad){
		int anterior = instruccionActual;
		instruccionActual += cantidad;
		if(instruccionMasAlta < instruccionActual) 
			instruccionMasAlta = instruccionActual;	
		return anterior;
	}
	/* La funcion cargar respaldo, cambia la direccion de emision de codigo actual, 
	 * a una localidad que haya sido obviada (saltada) cuando se emitio un salto.  
	 */	
	public static void cargarRespaldo( int direccion ){
		if(instruccionActual > instruccionMasAlta)
			emitirComentario("BUG encontrado en la funcion cargarRespaldo");
		instruccionActual = direccion;
	}
	
	/* La funcion restaurar respaldo, restaura la direccion de emision de codigo actual
	 * a la posicion mas alta alcanzada previamente y que no ha sido emitida aun
	 */
	public static void restaurarRespaldo(){
		instruccionActual = instruccionMasAlta;
	}
	
	/* El procedimiento emitirRM_Abs convierte una referencia absoluta
	 * a una referencia relativa al pc (program counter, registro [7])
	 * cuando se emite una instruccion de tipos registro a memoria (RM)
	 * de la TM
	 *
	 * op = codigo de la operacion
	 * r = registro destino
	 * a = la localidad absoluta en memoria
	 * c = comentario a emitir en modo debug
	 */
	public static void emitirRM_Abs(String op, int r, int a, String c){
		String linea = (instruccionActual)+":       "+op+"       "+r+","+(a-(instruccionActual+1))+"("+PC+")";
		++instruccionActual;
		if(debug)
			linea += "      "+c;
		linea += "\n";
		escribirLinea(linea);
		if(instruccionMasAlta < instruccionActual) 
			instruccionMasAlta = instruccionActual;	
	}
	
	/**
	 * Reinicia los contadores para una nueva compilación
	 */
	public static void reiniciarContadores() {
		instruccionActual = 0;
		instruccionMasAlta = 0;
	}
	
	/**
	 * Obtiene el nombre del archivo de salida actual
	 */
	public static String getNombreArchivo() {
		return nombreArchivo;
	}

/*TODO: Cambiar emision por pantalla por stream*/	
}
