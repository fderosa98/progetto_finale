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
 * Servlet implementation class DettaglioAnnuncioServlet
 */
@WebServlet("/dettaglio-annuncio")
public class DettaglioAnnuncioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AnnuncioService annuncioService = new AnnuncioServiceImpl();

    /**
     * Default constructor. 
     */
    public DettaglioAnnuncioServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Annuncio annuncio = null;
		List<Annuncio> annunci = new ArrayList<Annuncio>();
		try {
			annuncio = annuncioService.findDettaglioById(id);
			annunci = annuncioService.findAll();
			request.setAttribute("annunci", annunci);
			request.setAttribute("annuncio", annuncio);
			//url del request dispatcher da settare giusto
			request.getRequestDispatcher("listing-detail.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
	}

	
}
