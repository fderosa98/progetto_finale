package it.generationitaly.control;

import java.io.IOException;

import it.generationitaly.model.Utente;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.UtenteService;
import it.generationitaly.service.impl.UtenteServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
    	if (validate(request)) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
    	}
		
		try {
			Utente utente = utenteService.findByUsername(request.getParameter("username"));
			if(utente != null && utente.getPassword().equals(request.getParameter("password"))) {
				request.getSession().setAttribute("username", utente.getUsername());
				request.getRequestDispatcher("index.jsp?loginSuccess").forward(request, response);
			} else {
				request.setAttribute("errorCredenzialiErrate", "Attenzione! Credenziali errate.");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
			throw new ServletException(e.getMessage(),e);
		}
	}
	
	private boolean validate(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		boolean hasErrors = false;

		if (username == null || username.trim().isEmpty()) {
			request.setAttribute("errorUsername", "Campo username obbligatorio");
			hasErrors = true;
		}
		
		if (password == null || password.trim().isEmpty()) {
			request.setAttribute("errorPassword", "Campo password obbligatorio");
			hasErrors = true;
		}
		request.setAttribute("hasErrorsLogin", hasErrors);
		return hasErrors;
	}

}
