package it.generationitaly.service;

import java.util.List;

import it.generationitaly.model.Annuncio;

public interface AnnuncioService {
	
	List<Annuncio> findAll() throws ServiceException;
	
	List<Annuncio> findFiltered(String marca, String modello, int prezzo) throws ServiceException;
}
