package it.generationitaly.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
 * Servlet implementation class RicercaAutoServlet
 */
@WebServlet("/ricerca-annunci")
public class RicercaAnnunciServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AnnuncioService annuncioService = new AnnuncioServiceImpl();
	private List<Annuncio> annunci = new ArrayList<Annuncio>();

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
		String modello = request.getParameter("modello");
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

			request.getRequestDispatcher("listing-classic.jsp").forward(request, response);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}

	}

}
