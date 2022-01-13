package it.generationitaly.control;

import java.io.IOException;
import java.util.List;

import it.generationitaly.model.Annuncio;
import it.generationitaly.model.Messaggio;
import it.generationitaly.service.AnnuncioService;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.impl.AnnuncioServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class EliminaAnnuncioServlet
 */
@WebServlet("/delete-annuncio")
public class EliminaAnnuncioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AnnuncioService annuncioService = new AnnuncioServiceImpl();

    /**
     * Default constructor. 
     */
    public EliminaAnnuncioServlet() {
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0;
		List<Annuncio> annunci = null;
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		Annuncio annuncio = null;
		try {			
			annuncio = annuncioService.findById(id);
			annuncioService.deleteAnnuncio(annuncio);
			annunci = annuncioService.findAll();
			request.setAttribute("annunci", annunci);									
			request.getRequestDispatcher("my-vehicles.jsp").forward(request, response);
			
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
	}

}
