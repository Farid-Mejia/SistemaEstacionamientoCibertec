package com.registro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.registro.interfaces.EstacionamientoDAO;
import com.registro.utils.MySqlConexion;

public class MySqlEstacionamientoDAO implements EstacionamientoDAO {
	private MySqlConexion mysqlConexion;
	
	public MySqlEstacionamientoDAO()	{
		mysqlConexion = new MySqlConexion();
	}

	@Override
    public List<Integer> EstacionamientosOcupados() {
        List<Integer> estacionamientosOcupados = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        
        try {
            conn = mysqlConexion.conectarMySQL();
            String query = "CALL EstacionamientosOcupados()";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            
            while (rs.next()) {
                int numEstacionamiento = rs.getInt("NumEstacionamiento");
                estacionamientosOcupados.add(numEstacionamiento);
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener los estacionamientos ocupados: " + ex.getMessage());
        } finally {
        	mysqlConexion.cerrarConexionMySQL(conn, pstm, rs);
        }
        
        return estacionamientosOcupados;
    }
}
