package com.registro.fabrica;

import com.registro.dao.MySqlEstacionamientoDAO;
import com.registro.dao.MySqlRegistroDeEntradaYSalidaDAO;
import com.registro.interfaces.EstacionamientoDAO;
import com.registro.interfaces.RegistroDeEntradaYSalidaDAO;

public class MySqlDAOFactory extends DAOFactory {

	@Override
	public EstacionamientoDAO getEstacionamientoDAO() {
		// TODO Auto-generated method stub
		return new MySqlEstacionamientoDAO();
	}

	@Override
	public RegistroDeEntradaYSalidaDAO getRegistroDeEntradaYSalidaDAO() {
		// TODO Auto-generated method stub
		return new MySqlRegistroDeEntradaYSalidaDAO();
	}


}
