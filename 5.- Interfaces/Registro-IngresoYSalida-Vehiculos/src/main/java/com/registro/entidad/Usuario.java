package com.registro.entidad;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.registro.utils.MySqlConexion;

public class Usuario {
	
	private String dni;
	
	public String getDni() {
		return dni;
	}
	
	public void setDni(String dni) {
		this.dni = dni;
	}
	

	
	
	/*public static void mostrarCiudades(Connection conn) {
        Statement statement;
        ResultSet rs;
        int i = 0;
        
        try {
            statement = conn.createStatement();
            rs = statement.executeQuery("select * from RegistroDeEntradaYSalida");
            
            while (rs.next()) {
                i++;
                System.out.println(i + "-) " + rs.getString("dni"));
            }
            
        } catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public static void main(String[] args) {
    	MySqlConexion conexionMySQL = new MySqlConexion();
        Connection connection;
        
        connection = conexionMySQL.conectarMySQL();
        if (connection != null) {
            System.out.println("La conexión con MySql ha sido establecida!");
            
            mostrarCiudades(connection);
            
            conexionMySQL.cerrarConexionMySQL(connection);
        } else {
            System.out.println("Error al establer la conexión con MySql!");
        }
    }*/
	
	
	
	
	
	

}
