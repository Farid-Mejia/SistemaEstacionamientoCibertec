package com.registro.services;

import com.registro.entidad.RegistroDeEntradaYSalida;
import com.registro.fabrica.DAOFactory;
import com.registro.interfaces.RegistroDeEntradaYSalidaDAO;

public class RegistroDeEntradaYSalidaService {
	//paso 1: origen de datos 1 "Mysql"
	//para ello llamar a la clase DAOFactory e invocar al mètodo getDAOFactory que retorna un DAOFactory
	private DAOFactory fabrica= DAOFactory.getDAOFactory(1);
	//paso 2 : indicar con que mètodo que se encuentra en el objeto fabrica se va a trabajar
	private RegistroDeEntradaYSalidaDAO objRegis=fabrica.getRegistroDeEntradaYSalidaDAO();
	//con el objeto objDoc se accede a todos los mètodos implementados de la clase MySqlDocenteDAO
	//otro mètodo
	
	//implementar mètodos de servicios que se comunicaran con los mètodos del objeto "objDoc"
	public String verificarDNI(String dni) {
		return objRegis.verificarDNI(dni);
	}
	public String mostrarPlaca(String dni) {
		return objRegis.mostrarPlaca(dni);
	}
	public String registrarIngreso(String dni, String placa, int numEstacionamiento) {
		return objRegis.registrarIngreso(dni, placa, numEstacionamiento);
	}
	RegistroDeEntradaYSalida registrarSalida(String dni) {
		return objRegis.registrarSalida(dni);
	}
	
	
}
