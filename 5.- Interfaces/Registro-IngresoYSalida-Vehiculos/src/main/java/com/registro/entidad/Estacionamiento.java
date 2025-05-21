package com.registro.entidad;

public class Estacionamiento {
	private int numEstacionamiento;
	private String Estado;
	private String Tipo;
	private int nivelSotano;
	
	
	
	public Estacionamiento(int numEstacionamiento, String estado, String tipo, int nivelSotano) {
		super();
		this.numEstacionamiento = numEstacionamiento;
		Estado = estado;
		Tipo = tipo;
		this.nivelSotano = nivelSotano;
	}
	public int getNumEstacionamiento() {
		return numEstacionamiento;
	}
	public void setNumEstacionamiento(int numEstacionamiento) {
		this.numEstacionamiento = numEstacionamiento;
	}
	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}
	public String getTipo() {
		return Tipo;
	}
	public void setTipo(String tipo) {
		Tipo = tipo;
	}
	public int getNivelSotano() {
		return nivelSotano;
	}
	public void setNivelSotano(int nivelSotano) {
		this.nivelSotano = nivelSotano;
	}

}
