package com.registro.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.registro.dao.MySqlRegistroDeEntradaYSalidaDAO;
import com.registro.entidad.RegistroDeEntradaYSalida;
import com.registro.interfaces.RegistroDeEntradaYSalidaDAO;

@WebServlet("/ServletRegistroDeEntradaYSalida")
public class ServletRegistroDeEntradaYSalida extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MySqlRegistroDeEntradaYSalidaDAO registroDAO;

    public ServletRegistroDeEntradaYSalida() {
        super();
        registroDAO = new MySqlRegistroDeEntradaYSalidaDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dni = request.getParameter("dni");
        String accion = request.getParameter("accion");

        if (dni != null && !dni.isEmpty()) {
            if ("ingreso".equals(accion)) {
                // Validar DNI para ingreso
                String mensaje = registroDAO.verificarDNI(dni);
                if ("Existe".equals(mensaje)) {
                    request.setAttribute("dni", dni);
                    request.getRequestDispatcher("RegistroIngreso.jsp").forward(request, response);
                } else {
                    request.setAttribute("error", mensaje);
                    request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
                }
            } else if ("registroIngreso".equals(accion)) {
                // Procesar el registro de ingreso
            	String placaSinGuion = request.getParameter("placaSinGuion");
                int numEstacionamiento = Integer.parseInt(request.getParameter("numEstacionamiento"));
                String mensaje = registroDAO.registrarIngreso(dni, placaSinGuion, numEstacionamiento);
                request.setAttribute("mensaje", mensaje);
                
                // Redirigir de vuelta a MenuPrincipal.jsp con el mensaje
                request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
            } else if ("salida".equals(accion)) {
                // Obtener placa para salida
                String placa = registroDAO.mostrarPlaca(dni);
                if (!placa.startsWith("Error:")) {
                    request.setAttribute("dni", dni);
                    request.setAttribute("placa", placa);
                    request.getRequestDispatcher("RegistroSalida.jsp").forward(request, response);
                } else {
                    request.setAttribute("error", placa);
                    request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
                }
            } else if ("registrarSalida".equals(accion)) {
                // Procesar el registro de salida
                RegistroDeEntradaYSalida registro = registroDAO.registrarSalida(dni);
                if (registro != null) {
                    request.setAttribute("mensaje", "Salida registrada exitosamente.");
                } else {
                    request.setAttribute("error", "No se pudo registrar la salida. Verifique el DNI.");
                }
                request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
            } else {
                // Acción no válida
                request.setAttribute("error", "Acción no válida");
                request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
            }
        } else {
            // DNI vacío o nulo
            request.setAttribute("error", "El DNI es obligatorio");
            request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
        }
    }
    
}
