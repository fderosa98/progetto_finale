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
 * Servlet implementation class FindAllAnnunci
 */
@WebServlet("/annunci")
public class FindAllAnnunci extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private AnnuncioService annuncioService = new AnnuncioServiceImpl();
	private List<Annuncio> annunci = new ArrayList<Annuncio>();
	private List<Annuncio> annunciSide = new ArrayList<Annuncio>();

    /**
     * Default constructor. 
     */
    public FindAllAnnunci() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		try {
			annunci = annuncioService.findAll();
			request.setAttribute("annunci", annunci);
			
			annunciSide = annuncioService.findAllLimited();
			request.setAttribute("annunciSide", annunciSide);
			
			if(request.getParameter("myVehicles") != null) {
				if (request.getSession().getAttribute("username") == null) {
					response.sendRedirect("index.jsp?error");
					return;
				}
				
				List<Annuncio> annunciUtente = new ArrayList<Annuncio>();
				for(Annuncio annuncio : annunci) {
					if (annuncio.getUtente().getUsername().equals(request.getSession().getAttribute("username")) ) 
						annunciUtente.add(annuncio);					
				}
				request.setAttribute("annunciUtenteSize", annunciUtente.size());
				request.getRequestDispatcher("my-vehicles.jsp").forward(request, response);
			} else
				request.getRequestDispatcher("listing-classic.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
			
		}

	}

}
