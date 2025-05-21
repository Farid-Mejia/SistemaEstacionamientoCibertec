package com.registro.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.registro.interfaces.VigilanteDAO;
import com.registro.utils.MySqlConexion;

public class MySqlVigilanteDAO implements VigilanteDAO{

	@Override
	public String logueo(String codigo, String contraseña) {
		Connection conn = null;
        CallableStatement cstmt = null;
        ResultSet rs = null;
        String resultado = "";

        try {
            conn = new MySqlConexion().conectarMySQL();
            cstmt = conn.prepareCall("{CALL logueo(?, ?)}");
            cstmt.setString(1, codigo);
            cstmt.setString(2, contraseña);
            
            rs = cstmt.executeQuery();
            if (rs.next()) {
                resultado = rs.getString("resultado");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            new MySqlConexion().cerrarConexionMySQL(conn, cstmt, rs);
        }
        return resultado;
	}
	
	
}
