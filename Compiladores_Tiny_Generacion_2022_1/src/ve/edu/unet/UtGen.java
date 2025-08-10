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
	
	// PrintWriter para escribir al archivo .tm
	private static PrintWriter archivoTM = null;
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
	
	/* Inicializar archivo .tm de salida */
	public static void inicializarArchivo(String nombreArchivoFuente) {
		try {
			// Crear el directorio ejemplo_generado si no existe
			java.io.File directorio = new java.io.File("ejemplo_generado");
			if (!directorio.exists()) {
				directorio.mkdirs();
			}
			
			// Generar nombre del archivo .tm basado en el archivo fuente
			String nombreBase = nombreArchivoFuente;
			if (nombreBase.contains("/")) {
				nombreBase = nombreBase.substring(nombreBase.lastIndexOf("/") + 1);
			}
			if (nombreBase.contains("\\")) {
				nombreBase = nombreBase.substring(nombreBase.lastIndexOf("\\") + 1);
			}
			if (nombreBase.endsWith(".tiny")) {
				nombreBase = nombreBase.substring(0, nombreBase.length() - 5);
			}
			
			nombreArchivo = "ejemplo_generado/" + nombreBase + ".tm";
			archivoTM = new PrintWriter(new FileWriter(nombreArchivo));
			
			System.out.println("Generando archivo objeto: " + nombreArchivo);
		} catch (IOException e) {
			System.err.println("Error al crear archivo .tm: " + e.getMessage());
		}
	}
	
	/* Cerrar archivo .tm */
	public static void cerrarArchivo() {
		if (archivoTM != null) {
			archivoTM.close();
			archivoTM = null;
			System.out.println("Archivo objeto generado: " + nombreArchivo);
		}
	}
	
	/* Escribir línea tanto a consola como archivo */
	private static void escribirLinea(String linea) {
		System.out.print(linea);
		if (archivoTM != null) {
			archivoTM.print(linea);
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
	
	/* Reiniciar contadores para nueva compilación */
	public static void reiniciar() {
		instruccionActual = 0;
		instruccionMasAlta = 0;
	}
	
/*TODO: Cambiar emision por pantalla por stream*/	
}
