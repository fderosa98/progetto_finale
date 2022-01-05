package it.generationitaly.control;

import java.io.IOException;

import it.generationitaly.model.Messaggio;
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
 * Servlet implementation class InviaMessaggioServlet
 */
@WebServlet("/send-message")
public class InviaMessaggioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UtenteService utenteService = new UtenteServiceImpl();

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
		// il mittente sará poi l'utente loggato in sessione
		// int mittente_id = Integer.parseInt(request.getParameter("mittenteId"));
		String username = (String) request.getSession().getAttribute("username");
		// il destinatario é colui che ha pubblicato l'annuncio su cui siamo noi
		int destinatario_id = Integer.parseInt(request.getParameter("destinatarioId"));
		String message = request.getParameter("message");
		Utente mittente = null;
		Utente destinatario = null;
		Messaggio messaggio = new Messaggio();
		try {
			// una volta che avremo login e utente salvato in sessione, potremo usare quello
			// direttamente come mittente
			mittente = utenteService.findByUsername(username);
			// qui invece metto un campo hidden con l'id per poi risalire all'utente
			// destinatario con una findByid (perché non saprei come inviare direttamente
			// l'utente dell'annuncio (annuncio.getUtente()) in una form, non essendo questo
			// salvato in sessione.)
			destinatario = utenteService.findById(destinatario_id);
			messaggio.setMittente(mittente);
			messaggio.setDestinatario(destinatario);
			messaggio.setCorpoMessaggio(message);
			utenteService.saveMessaggio(messaggio);
			response.sendRedirect("dettaglio.jsp");
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}

	}

}
