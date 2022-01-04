package it.generationitaly.service;

import it.generationitaly.model.Utente;

public interface UtenteService {
	
	void saveUtente(Utente utente) throws ServiceException;
	
	Utente findByUsername(String username) throws ServiceException;
}
