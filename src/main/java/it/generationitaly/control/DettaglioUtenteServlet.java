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
 * Servlet implementation class DettaglioUtenteServlet
 */
@WebServlet("/dettaglio-utente")
public class DettaglioUtenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UtenteService utenteService = new UtenteServiceImpl();

    /**
     * Default constructor. 
     */
    public DettaglioUtenteServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getSession().getAttribute("username") == null) {
			response.sendRedirect("index.jsp?error");
			return;
		}
			
		System.out.println("bubu");
		String username = (String)request.getSession().getAttribute("username");
		Utente utente = null;
		try {
			utente = utenteService.findByUsername(username);
			request.setAttribute("utente", utente);
			request.getRequestDispatcher("profile-settings.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
			response.sendRedirect("404.jsp");
		}
		
	}

	
}
