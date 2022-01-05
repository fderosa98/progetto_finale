package it.generationitaly.dao;

import java.sql.Connection;

import it.generationitaly.model.Utente;

public interface UtenteDAO {
	
	void saveUtente(Connection connection, Utente utente) throws DAOException;

	Utente findByUsername(Connection connection, String username) throws DAOException;
	
	Utente findById(Connection connection, int id) throws DAOException;
}
