package it.generationitaly.control;

import java.io.IOException;
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
 * Servlet implementation class Index
 */
@WebServlet("")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AnnuncioService annuncioService = new AnnuncioServiceImpl();

    /**
     * Default constructor. 
     */
    public Index() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("sono in index servlet");
		try {
			List<Annuncio> annunci = annuncioService.findAll();
			request.setAttribute("annunci", annunci);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	

}
