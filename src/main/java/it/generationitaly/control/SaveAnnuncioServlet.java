package it.generationitaly.control;

import java.io.IOException;

import it.generationitaly.model.Annuncio;
import it.generationitaly.model.Automobile;
import it.generationitaly.model.Carburante;
import it.generationitaly.model.Indirizzo;
import it.generationitaly.model.NumeroPorte;
import it.generationitaly.model.Utente;
import it.generationitaly.service.AnnuncioService;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.UtenteService;
import it.generationitaly.service.impl.AnnuncioServiceImpl;
import it.generationitaly.service.impl.UtenteServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class SaveAnnuncioServlet
 */
@WebServlet("/save-annuncio")
public class SaveAnnuncioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UtenteService utenteService = new UtenteServiceImpl();
	AnnuncioService annuncioService = new AnnuncioServiceImpl();

    /**
     * Default constructor. 
     */
    public SaveAnnuncioServlet() {
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getSession().getAttribute("username") == null) {
			response.sendRedirect("post-vehicle.jsp?error");
			return;
		}
		
		String titolo = request.getParameter("titolo");
		String descrizione = request.getParameter("descrizione");
		String marca = request.getParameter("marca");
		String modello = request.getParameter("modello");
		int anno = 0;
		int prezzo = 0;
		int km = 0;
		NumeroPorte numeroPorte = null;
		
		String username = request.getParameter("usernameUtente");		
		
		if(request.getParameter("anno") != "") {
			anno = Integer.parseInt(request.getParameter("anno"));
		}
		if(request.getParameter("prezzo") != "") {
			prezzo = Integer.parseInt(request.getParameter("prezzo"));
		}
		if(request.getParameter("prezzo") != "") {
			km = Integer.parseInt(request.getParameter("km"));
		}
		
		Carburante carburante = Carburante.fromValue(request.getParameter("carburante"));
		
		if(request.getParameter("numeroPorte") != "") {
			numeroPorte = NumeroPorte.fromValue(Integer.parseInt(request.getParameter("numeroPorte")));
		}
		String citta = request.getParameter("citta");
		String provincia = request.getParameter("provincia");
		
		Annuncio annuncio = new Annuncio();
		annuncio.setTitolo(titolo);
		annuncio.setDescrizione(descrizione);
		
		
		Automobile automobile = new Automobile(); 
		automobile.setMarca(marca);
		automobile.setModello(modello);
		automobile.setAnno(anno);
		automobile.setPrezzo(prezzo);
		automobile.setKm(km);
		automobile.setCarburante(carburante);
		automobile.setNumeroPorte(numeroPorte);
		
		annuncio.setAutomobile(automobile);
		
		Indirizzo indirizzo = new Indirizzo();
		indirizzo.setCitta(citta);
		indirizzo.setProvincia(provincia);
		
		annuncio.setIndirizzo(indirizzo);
		
		try {
			Utente utente = utenteService.findByUsername(username);
			annuncio.setUtente(utente);
			annuncioService.saveAnnuncio(annuncio);
		} catch (ServiceException e) {
			System.err.println(e.getMessage());
		}
	}

}
