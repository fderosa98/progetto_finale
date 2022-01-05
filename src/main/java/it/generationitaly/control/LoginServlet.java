package it.generationitaly.control;

import java.io.IOException;

import it.generationitaly.model.Utente;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.UtenteService;
import it.generationitaly.service.impl.UtenteServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UtenteService utenteService = new UtenteServiceImpl();

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			Utente utente = utenteService.findByUsername(username);
			if(utente != null && utente.getPassword().equals(password)) {
				request.getSession().setAttribute("username", utente.getUsername());
//				response.sendRedirect("index.jsp");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			} else {
				response.sendRedirect("500.html");
			}
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
			throw new ServletException(e.getMessage(),e);
		}
	}

}
