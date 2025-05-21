package com.registro.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MySqlConexion {
	
    private final String driver = "com.mysql.cj.jdbc.Driver";
    // Nombre de la base datos
    private final String database = "BDRegistroIngresoSalida";
    // Servidor
    private final String hostname = "localhost";
    // Puerto
    private final String port = "3306";
    // Nombre de usuario
    String username = "root";
    
 // Clave de usuario
    private final String password = "mysql";
    
    public Connection conectarMySQL() {
        
        Connection conn = null;
        
        try {
            Class.forName(driver);
            String url = "jdbc:mysql://" + hostname + ":" + port + "/" + database + "?serverTimezone=UTC";
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Error al conectar a la base de datos: " + ex.getMessage());
        }
        
        return conn;
    }
    
    public void cerrarConexionMySQL(Connection conn, PreparedStatement pstm, ResultSet rs) {
    	try {
            if (rs != null) {
                rs.close();
            }
            if (pstm != null) {
            	pstm.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            System.out.println("Error al cerrar la conexión: " + ex.getMessage());
        }
    }
	
	/*//crear un mètodo  estàtico que retorne la conexión a la bd. instituto_2023
	public static Connection getConectar(){
		//declarar objeto "cn" de la interfaz Connection
		Connection cn=null;
		//exception ---> error en tiempo de ejecuciòn
		//try-catch---> permite controlar errores en tiempo de ejecución
		try {
			//acceder a la clase Driver que se encuentra en el JAR
			Class.forName("com.mysql.cj.jdbc.Driver");
			//variables
			String url,user,clave;
			user="root";
			clave="mysql";
			url="jdbc:mysql://localhost/BDRegistroIngresoSalida?serverTimezone=UTC";
			//crear objeto "cn"
			cn=DriverManager.getConnection(url,user,clave);
		} catch (Exception e) {
			//mostrar traza de error en la consola
			e.printStackTrace();
		}
		return cn;
	}*/
	
	
	
}
