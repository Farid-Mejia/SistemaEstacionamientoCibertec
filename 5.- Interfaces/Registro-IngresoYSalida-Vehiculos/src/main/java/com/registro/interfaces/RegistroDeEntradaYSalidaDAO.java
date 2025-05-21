package com.registro.interfaces;

import com.registro.entidad.RegistroDeEntradaYSalida;

public interface RegistroDeEntradaYSalidaDAO {
	
	String verificarDNI(String dni);
	String mostrarPlaca(String dni);
	String registrarIngreso(String dni, String placa, int numEstacionamiento);
	RegistroDeEntradaYSalida registrarSalida(String dni);
	
}
