package it.generationitaly.dao;

import java.sql.Connection;

import it.generationitaly.model.Messaggio;

public interface MessaggioDAO {

	void saveMessaggio(Connection connection, Messaggio messaggio) throws DAOException;
	
}
