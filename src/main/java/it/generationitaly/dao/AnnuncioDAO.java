package it.generationitaly.dao;

import java.sql.Connection;
import java.util.List;

import it.generationitaly.model.Annuncio;

public interface AnnuncioDAO {

	List<Annuncio> findAll(Connection connection) throws DAOException;
	
	List<Annuncio> findFiltered(Connection connection, String marca, String modello, double prezzo) throws DAOException;
}
