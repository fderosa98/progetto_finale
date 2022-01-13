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
 * Servlet implementation class RegistrazioneServlet
 */
@WebServlet("/registrazione")
public class RegistrazioneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UtenteService utenteService = new UtenteServiceImpl();

    /**
     * Default constructor. 
     */
    public RegistrazioneServlet() {
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	if (validate(request)) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
    	}
		
		Utente utente = new Utente();
		utente.setNome(request.getParameter("nome"));
		utente.setCognome(request.getParameter("cognome"));
		utente.setEmail(request.getParameter("email"));
		utente.setTelefono(Long.parseLong(request.getParameter("telefono")));
		utente.setUsername(request.getParameter("username"));
		utente.setPassword(request.getParameter("password"));
		
		try {
			utenteService.saveUtente(utente);
			response.sendRedirect("index.jsp");
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
			response.sendRedirect("404.jsp");
		}
		
	}
    
    private boolean validate(HttpServletRequest request) {
    	String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		long telefono =  Long.parseLong(request.getParameter("telefono"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		boolean hasErrors = false;

		if (nome == null || nome.trim().isEmpty()) {
			request.setAttribute("errorNome", "Campo nome obbligatorio");
			hasErrors = true;
		}
		
		if (cognome == null || cognome.trim().isEmpty()) {
			request.setAttribute("errorCognome", "Campo cognome obbligatorio");
			hasErrors = true;
		}
		
		if (email == null || email.trim().isEmpty()) {
			request.setAttribute("errorEmail", "Campo email obbligatorio");
			hasErrors = true;
		}
		
		if ((Long)telefono == null) {
			request.setAttribute("errorTelefono", "Campo telefono obbligatorio");
			hasErrors = true;
		}

		if (username == null || username.trim().isEmpty()) {
			request.setAttribute("errorUsername", "Campo username obbligatorio");
			hasErrors = true;
		}

		if (password == null || password.trim().isEmpty()) {
			request.setAttribute("errorPassword", "Campo password obbligatorio");
			hasErrors = true;
		}

		return hasErrors;
	}

}
