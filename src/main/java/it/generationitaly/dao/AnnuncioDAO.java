package it.generationitaly.dao;

import java.sql.Connection;
import java.util.List;

import it.generationitaly.model.Annuncio;
import it.generationitaly.model.Indirizzo;

public interface AnnuncioDAO {

	List<Annuncio> findAll(Connection connection) throws DAOException;
	
	List<Annuncio> findFiltered(Connection connection, String marca, String modello, int prezzo) throws DAOException;
	
	public Annuncio findById(Connection connection, int id) throws DAOException;
	
	public void  saveAnnuncio(Connection connection, Annuncio annuncio) throws DAOException;
	
	Annuncio findDettaglioById(Connection connection, int id) throws DAOException;

}
