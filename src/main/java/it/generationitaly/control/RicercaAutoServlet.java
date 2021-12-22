package it.generationitaly.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.generationitaly.model.Annuncio;
import it.generationitaly.service.AnnuncioService;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.impl.AnnuncioServiceImpl;

/**
 * Servlet implementation class RicercaAutoServlet
 */
@WebServlet("/ricerca-auto")
public class RicercaAutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AnnuncioService annuncioService = new AnnuncioServiceImpl();
	
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
		double prezzo = Double.parseDouble(request.getParameter("prezzo"));
		
		try {
			List<Annuncio> annunci = annuncioService.findFiltered(marca, modello, prezzo);
			
			request.setAttribute("annunci", annunci);
			request.getRequestDispatcher("annunci.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
		
		
		
		
	}


}
