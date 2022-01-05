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
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		long telefono =  Long.parseLong(request.getParameter("telefono"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Utente utente = new Utente();
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setEmail(email);
		utente.setTelefono(telefono);
		utente.setUsername(username);
		utente.setPassword(password);
		
		try {
			utenteService.saveUtente(utente);
			response.sendRedirect("login");
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
		
	}

}
