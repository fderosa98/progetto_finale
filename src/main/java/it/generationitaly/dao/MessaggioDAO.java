package it.generationitaly.dao;

import java.sql.Connection;
import java.util.List;

import it.generationitaly.model.Messaggio;

public interface MessaggioDAO {

	void saveMessaggio(Connection connection, Messaggio messaggio) throws DAOException;
	
	// List<Messaggio> findAll(Connection connection) throws DAOException;
	
	public List<Messaggio> findAllMessaggiMittentiDestinatari(Connection connection) throws DAOException;
}
