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
@WebServlet("/ricerca-annunci")
public class RicercaAnnunciServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AnnuncioService annuncioService = new AnnuncioServiceImpl();
	private List<Annuncio> annunci = new ArrayList<Annuncio>();
	private List<Annuncio> annunciSide = new ArrayList<Annuncio>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RicercaAnnunciServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String marca = request.getParameter("marca");
		String modello = request.getParameter("modello").trim();
		int prezzoMin = 0;
		int prezzoMax = 0;
		String orderBy = request.getParameter("orderBy");

		if (request.getParameter("prezzoMin") != "") {
			prezzoMin = Integer.parseInt((request.getParameter("prezzoMin")));
		}
		if (request.getParameter("prezzoMax") != "") {
			prezzoMax = Integer.parseInt((request.getParameter("prezzoMax")));
		}
		try {
			annunci = annuncioService.findFiltered(marca, modello, prezzoMin, prezzoMax, orderBy);
			request.setAttribute("annunci", annunci);
			request.setAttribute("marca", marca);
			request.setAttribute("modello", modello);
			request.setAttribute("prezzoMin", prezzoMin);
			request.setAttribute("prezzoMax", prezzoMax);
			
			annunciSide = annuncioService.findAll();
			request.setAttribute("annunciSide", annunciSide);

			request.getRequestDispatcher("listing-classic.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}

	}

}
