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

		if (request.getSession().getAttribute("idUtente") == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		
		String password = request.getParameter("password");
		String newPassword = request.getParameter("newPassword");
		String confirmPassword = request.getParameter("confirmPassword");
		
		try {
			
			Utente utente = utenteService.findById((Integer) (request.getSession().getAttribute("idUtente")));

			if (password.equals(utente.getPassword())) {
				utente.setPassword(newPassword);
				if (newPassword.equals(confirmPassword)) {
					utenteService.updatePassword(utente);
					System.out.println("password cambiata con successo");
					response.sendRedirect("index.jsp");
				} else {
					request.getRequestDispatcher("500.html").forward(request, response);
					System.out.println("password non cambiata merda");
				}
			}
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}

	}
}
