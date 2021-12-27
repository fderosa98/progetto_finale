package it.generationitaly.dao;

import java.sql.Connection;

import it.generationitaly.model.Utente;

public interface UtenteDAO {
	
	void saveUtente(Connection connection, Utente utente) throws DAOException;

}
