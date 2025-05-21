package com.registro.controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registro.dao.MySqlVigilanteDAO;
import com.registro.interfaces.VigilanteDAO;

@WebServlet("/LoginController")
public class ServletVigilante extends HttpServlet{
	private static final long serialVersionUID = 1L;
    private VigilanteDAO vigilanteDAO = new MySqlVigilanteDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String codigo = request.getParameter("username");
        String contraseña = request.getParameter("password");

        String resultado = vigilanteDAO.logueo(codigo, contraseña);

        if ("Login exitoso".equals(resultado)) {
            response.sendRedirect("MenuPrincipal.jsp");
        } else {
            response.sendRedirect("IngresarSistema.jsp?error=true");
        }
    }
}
