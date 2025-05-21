package com.registro.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.registro.entidad.RegistroDeEntradaYSalida;
import com.registro.interfaces.RegistroDeEntradaYSalidaDAO;
import com.registro.utils.MySqlConexion;

public class MySqlRegistroDeEntradaYSalidaDAO implements RegistroDeEntradaYSalidaDAO{

	private MySqlConexion mysqlConexion;
	
	public MySqlRegistroDeEntradaYSalidaDAO() {
		mysqlConexion = new MySqlConexion();
	}
    
	@Override
    public String verificarDNI(String dni) {
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        String mensaje = null;

        try {
            conn = mysqlConexion.conectarMySQL();
            if (conn == null) {
                return "Error: No se pudo establecer la conexión";
            }

            String query = "CALL VerificarDNI(?)";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, dni);
            rs = pstm.executeQuery();

            if (rs.next()) {
                mensaje = rs.getString("mensaje");
            }
        } catch (SQLException ex) {
            mensaje = "Error: " + ex.getMessage();
        } finally {
            mysqlConexion.cerrarConexionMySQL(conn, pstm, rs);
        }

        return mensaje;
    }

	@Override
	public String mostrarPlaca(String dni) {
	    Connection conn = mysqlConexion.conectarMySQL();
	    if (conn == null) {
	        return "Error: No se pudo establecer la conexión";
	    }

	    String placa = null;
	    PreparedStatement pstm = null;
	    ResultSet rs = null;

	    try {
	        String query = "CALL MostrarPlaca(?)";
	        pstm = conn.prepareStatement(query);
	        pstm.setString(1, dni);
	        rs = pstm.executeQuery();

	        if (rs.next()) {
	            placa = rs.getString("Placa");
	        } else {
	            placa = "Error: No existe registro activo para el DNI";
	        }
	    } catch (SQLException ex) {
	        placa = "Error: " + ex.getMessage();
	    } finally {
	        mysqlConexion.cerrarConexionMySQL(conn, pstm, rs);
	    }

	    return placa;
	}


	@Override
	public String registrarIngreso(String dni, String placa, int numEstacionamiento) {
	    Connection conn = mysqlConexion.conectarMySQL();
	    if (conn == null) {
	        return "Error: No se pudo establecer la conexión";
	    }
	    String mensaje = null;
	    CallableStatement cstmt = null;
	    ResultSet rs = null;
	    try {
	        String query = "{CALL RegistrarIngreso(?, ?, ?)}";
	        cstmt = conn.prepareCall(query);
	        cstmt.setString(1, dni);
	        cstmt.setString(2, placa);
	        cstmt.setInt(3, numEstacionamiento);
	        boolean result = cstmt.execute();

	        // El procedimiento almacenado devuelve un resultado
	        if (result) {
	            rs = cstmt.getResultSet();
	            if (rs.next()) {
	                mensaje = rs.getString("mensaje");
	            }
	            rs.close();
	        } else {
	            mensaje = "Ingreso registrado";
	        }
	    } catch (SQLException ex) {
	        mensaje = "Error: " + ex.getMessage();
	    } finally {
	        mysqlConexion.cerrarConexionMySQL(conn, cstmt, rs);
	    }

	    return mensaje;
	}

	@Override
	public RegistroDeEntradaYSalida registrarSalida(String dni) {
		Connection conn = mysqlConexion.conectarMySQL();
        if (conn == null) {
            System.out.println("Error: No se pudo establecer la conexión");
            return null;
        }

        PreparedStatement pstm = null;
        ResultSet rs = null;
        RegistroDeEntradaYSalida registro = null;

        try {
            // Registrar salida del usuario
            String registrarSalidaQuery = "CALL RegistrarSalida(?)";
            pstm = conn.prepareStatement(registrarSalidaQuery);
            pstm.setString(1, dni);
            rs = pstm.executeQuery();

            if (rs.next()) {
                String mensaje = rs.getString("mensaje");
                if ("Salida registrada".equals(mensaje)) {
                    // Obtener el registro de entrada y salida actualizado
                    registro = obtenerRegistro(conn, dni);
                } else {
                    System.out.println(mensaje);
                }
            }
        } catch (SQLException ex) {
            System.out.println("Error: " + ex.getMessage());
        } finally {
            mysqlConexion.cerrarConexionMySQL(conn, pstm, rs);
        }

        return registro;
	}
	
	// Método auxiliar para obtener el último registro de entrada y salida para un DNI dado
    private RegistroDeEntradaYSalida obtenerRegistro(Connection conn, String dni) throws SQLException {
        RegistroDeEntradaYSalida registro = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {
            String query = "SELECT * FROM RegistroDeEntradaYSalida WHERE dni = ? ORDER BY idRegistro DESC LIMIT 1";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, dni);
            rs = pstm.executeQuery();

            if (rs.next()) {
                registro = new RegistroDeEntradaYSalida(
                        rs.getInt("idRegistro"),
                        rs.getTimestamp("horaIngreso"),
                        rs.getTimestamp("horaSalida"),
                        rs.getString("dni"),
                        rs.getString("placa"),
                        rs.getInt("NumEstacionamiento")
                );
            }
        } finally {
            if (pstm != null) {
            	pstm.close();
            }
            if (rs != null) {
                rs.close();
            }
        }

        return registro;
    }

	
}
