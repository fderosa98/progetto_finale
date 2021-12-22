package it.generationitaly.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.model.Annuncio;
import it.generationitaly.service.AnnuncioService;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.impl.AnnuncioServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RicercaAutoServlet
 */
@WebServlet("/ricerca-auto")
public class RicercaAutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AnnuncioService annuncioService = new AnnuncioServiceImpl();
	private List<Annuncio> annunci = new ArrayList<Annuncio>();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RicercaAutoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String marca = request.getParameter("marca");
		String modello = request.getParameter("modello");
		int prezzo = 0;
		
		if (request.getParameter("prezzo") != "") {
		prezzo = Integer.parseInt((request.getParameter("prezzo")));
		}
		try {
			annunci = annuncioService.findFiltered(marca, modello, prezzo);
			request.setAttribute("annunci", annunci);
			request.getRequestDispatcher("annunci.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
		
		
		
		
	}


}