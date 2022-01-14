package it.generationitaly.control;

import java.io.IOException;

import it.generationitaly.model.Utente;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.UtenteService;
import it.generationitaly.service.impl.UtenteServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatePasswordServlet
 */
@WebServlet("/update-password")
public class UpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UtenteService utenteService = new UtenteServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdatePasswordServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getSession().getAttribute("username") == null) {
			response.sendRedirect("index.jsp?hasErrorsLogin");
			return;
		}
		
		//String password = request.getParameter("password");
		String newPassword = request.getParameter("newPassword");
		String confirmPassword = request.getParameter("confirmPassword");
		
		try {			
			Utente utente = utenteService.findByUsername((String) (request.getSession().getAttribute("username")));
			request.setAttribute("utente", utente);
//			if (password.equals(utente.getPassword())) {				
			if (newPassword.equals(confirmPassword)) {
				utente.setPassword(newPassword);
				utenteService.updatePassword(utente);
				System.out.println("password cambiata con successo");				
				request.getRequestDispatcher("profile-settings.jsp?passwordModificata").forward(request, response);
			} else {
				System.out.println("password non cambiata merda");
				request.getRequestDispatcher("profile-settings.jsp?passwordDiverse").forward(request, response);					
			}
//			}
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}

	}
}
