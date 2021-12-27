package it.generationitaly.dao;

import java.sql.Connection;
import java.util.List;

import it.generationitaly.model.Indirizzo;

public interface IndirizzoDAO {

	List<Indirizzo> findAllIndirizzi(Connection connection) throws DAOException;
}
