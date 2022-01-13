package it.generationitaly.control;

import java.io.IOException;
import java.util.List;

import it.generationitaly.model.Annuncio;
import it.generationitaly.model.Messaggio;
import it.generationitaly.model.Utente;
import it.generationitaly.service.AnnuncioService;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.UtenteService;
import it.generationitaly.service.impl.AnnuncioServiceImpl;
import it.generationitaly.service.impl.UtenteServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class InviaMessaggioServlet
 */
@WebServlet("/invia-messaggio")
public class InviaMessaggioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UtenteService utenteService = new UtenteServiceImpl();
	AnnuncioService annuncioService = new AnnuncioServiceImpl();

	/**
	 * Default constructor.
	 */
	public InviaMessaggioServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idAnnuncio = 0;
		List<Annuncio> annunci = null;
		Annuncio annuncio = null;
		if(request.getParameter("idAnnuncio") != null ) {
			idAnnuncio = Integer.parseInt(request.getParameter("idAnnuncio"));
		}
				
		if(request.getSession().getAttribute("username") == null) {			
			try {
				annuncio = annuncioService.findDettaglioById(idAnnuncio);
				annunci = annuncioService.findAll();
				request.setAttribute("annuncio", annuncio);
				request.setAttribute("annunci", annunci);
				request.getRequestDispatcher("listing-detail.jsp?login").forward(request, response);
				return;
			} catch (ServiceException e) {
				System.err.println(e.getMessage());
				response.sendRedirect("404.jsp");
			}						
		}
		
		String username = (String) request.getSession().getAttribute("username");
		int idDestinatario = 0;
		if(request.getParameter("idDestinatario") != null) {
			idDestinatario = Integer.parseInt(request.getParameter("idDestinatario"));	
		}
		String message = request.getParameter("message");
		Utente mittente = null;
		Utente destinatario = null;
		Messaggio messaggio = new Messaggio();
		
		try {
			annuncio = annuncioService.findDettaglioById(idAnnuncio);
			annunci = annuncioService.findAll();
			mittente = utenteService.findByUsername(username);
			destinatario = utenteService.findById(idDestinatario);
			request.setAttribute("annuncio", annuncio);
			request.setAttribute("annunci", annunci);
			if(mittente.getId() == destinatario.getId()) {
				request.getRequestDispatcher("listing-detail.jsp?teStesso").forward(request, response);
				return;
			} else {
				messaggio.setMittente(mittente);
				messaggio.setDestinatario(destinatario);
				messaggio.setCorpoMessaggio(message);
				utenteService.saveMessaggio(messaggio);				
				request.getRequestDispatcher("listing-detail.jsp?inviato").forward(request, response);				
			}
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
			response.sendRedirect("404.jsp");
		}
	}
	
	
	
	

}
