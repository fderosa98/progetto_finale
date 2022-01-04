package it.generationitaly.control;

import java.io.IOException;

import it.generationitaly.model.Annuncio;
import it.generationitaly.service.AnnuncioService;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.impl.AnnuncioServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


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
		try {
			annuncio = annuncioService.findDettaglioById(id);
			request.setAttribute("annuncio", annuncio);
			//url del request dispatcher da settare giusto
			request.getRequestDispatcher("dettaglio.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
	}

	
}
