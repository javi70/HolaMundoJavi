package com.ipartek.formacion.holaclase.poo.ejemplos;

public class PersonaException extends Exception{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		//codigos de excepciones
		public static final String  MENOR_DE_EDAD = "Es menor de edad";
		public static final String  MAYOR_DE_EDAD = "Es mayor de edad";
		public static final String  EDAD_NO_VALIDA = "Rango de edad no valido";
		public static final String  NOTA_NO_VALIDA = "Nota no valida";
		
	//atributos
		String mensaje;
	
	//constructores
	/**
	 * @param message
	 */
	public PersonaException(String mensaje) {
		super();
		this.mensaje=mensaje;
	}
	
	//getters
	
	public String getMessage(){
		return this.mensaje;
	}
}
