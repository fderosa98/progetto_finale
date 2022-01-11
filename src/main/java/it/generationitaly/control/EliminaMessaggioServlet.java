package it.generationitaly.control;

import java.io.IOException;
import java.util.List;

import it.generationitaly.model.Messaggio;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.UtenteService;
import it.generationitaly.service.impl.UtenteServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EliminaMessaggioServlet
 */
@WebServlet("/elimina-messaggio")
public class EliminaMessaggioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UtenteService utenteService = new UtenteServiceImpl();

    /**
     * Default constructor. 
     */
    public EliminaMessaggioServlet() {
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0;
		List<Messaggio> messaggi = null;
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		Messaggio messaggio = null;
		try {			
			messaggio = utenteService.findMessaggioById(id);
			utenteService.deleteMessaggio(messaggio);
			messaggi = utenteService.findAllMessaggiConUtenti();
			request.setAttribute("messaggi", messaggi);
			if(request.getParameter("inviati") != null) {
			request.getRequestDispatcher("messaggi-inviati.jsp").forward(request, response);
			}
			
			if(request.getParameter("ricevuti") != null) {
				request.getRequestDispatcher("messaggi-ricevuti.jsp").forward(request, response);
			}
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
		
		
	}

}
