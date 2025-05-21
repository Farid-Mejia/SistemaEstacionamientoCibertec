package com.registro.controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registro.dao.MySqlEstacionamientoDAO;
import com.registro.interfaces.EstacionamientoDAO;

@WebServlet("/ServletEstacionamiento")
public class ServletEstacionamiento extends HttpServlet{
	private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EstacionamientoDAO estacionamientoDAO = new MySqlEstacionamientoDAO();
        List<Integer> estacionamientosOcupados = estacionamientoDAO.EstacionamientosOcupados();
        
        request.setAttribute("estacionamientosOcupados", estacionamientosOcupados);
        request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
