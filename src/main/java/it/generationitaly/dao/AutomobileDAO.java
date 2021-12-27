package it.generationitaly.dao;

import java.sql.Connection;
import java.util.List;

import it.generationitaly.model.Automobile;

public interface AutomobileDAO {
	
	List<Automobile> carFindAll(Connection connection) throws DAOException;
	
	Automobile carFindById(Connection connection, int id) throws DAOException;

}
