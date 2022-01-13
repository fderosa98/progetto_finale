package it.generationitaly.service;

import java.util.List;

import it.generationitaly.model.Annuncio;
import it.generationitaly.model.Messaggio;
import it.generationitaly.model.Utente;

public interface UtenteService {
	
	void saveUtente(Utente utente) throws ServiceException;
	
	Utente findByUsername(String username) throws ServiceException;
	
	public Utente findById(int id) throws ServiceException;
	
	void saveMessaggio(Messaggio messaggio) throws ServiceException;
	
	List<Messaggio> findAllMessaggiConUtenti() throws ServiceException;
	
	public void deleteMessaggio(Messaggio messaggio) throws ServiceException;
	
	public Messaggio findMessaggioById(int id) throws ServiceException;

	public void updatePassword(Utente utente) throws ServiceException;
	
	public void updateUsername(Utente utente) throws ServiceException;

    public List<Utente> findAllUtenti() throws ServiceException;
}
