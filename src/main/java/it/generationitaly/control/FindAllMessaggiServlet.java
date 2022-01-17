package it.generationitaly.control;

import java.io.IOException;
import java.util.ArrayList;
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
 * Servlet implementation class FindAllMessaggiServlet
 */
@WebServlet("/messaggi")
public class FindAllMessaggiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UtenteService utenteService = new UtenteServiceImpl();
	List<Messaggio> messaggi = new ArrayList<Messaggio>();
	
    /**
     * Default constructor. 
     */
    public FindAllMessaggiServlet() {
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
		
		try {
			messaggi = utenteService.findAllMessaggiConUtenti();
			System.out.println(messaggi);
			request.setAttribute("messaggi", messaggi);
			if(request.getParameter("inviati") != null)
				request.getRequestDispatcher("messaggi-inviati.jsp").forward(request, response);
			else if(request.getParameter("ricevuti") != null)
				request.getRequestDispatcher("messaggi-ricevuti.jsp").forward(request, response);
			else 
				request.getRequestDispatcher("404.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
			
		}
		
	}

	
}
