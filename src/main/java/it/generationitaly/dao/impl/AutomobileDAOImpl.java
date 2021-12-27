package it.generationitaly.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.dao.AutomobileDAO;
import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.model.Automobile;
import it.generationitaly.model.Carburante;
import it.generationitaly.model.NumeroPorte;

public class AutomobileDAOImpl implements AutomobileDAO{

	@Override
	public List<Automobile> carFindAll(Connection connection) throws DAOException {
		List<Automobile> automobili = new ArrayList<Automobile>();
		String sql = "SELECT * FROM automobile";
		System.out.println(sql);
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				Automobile automobile = new Automobile();
				automobile.setId(resultSet.getInt(1));
				automobile.setMarca(resultSet.getString(2));
				automobile.setModello(resultSet.getString(3));
				automobile.setPrezzo(resultSet.getInt(4));
				automobile.setKm(resultSet.getInt(5));
				automobile.setCarburante(Carburante.fromValue(resultSet.getString(6)));
				automobile.setNumeroPorte(NumeroPorte.fromValue(resultSet.getInt(7)));
				automobili.add(automobile);
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOException(e.getMessage(), e);
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(statement);
		}
		return automobili;
	}

	@Override
	public Automobile carFindById(Connection connection, int id) throws DAOException {
		String sql = "SELECT * FROM automobile WHERE id=?";
		System.out.println(sql);
		Automobile automobile = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
		  statement = connection.prepareStatement(sql);
		  statement.setInt(1, id);
		  resultSet = statement.executeQuery();
		  if(resultSet.next()) {
			  automobile = new Automobile();
			  automobile.setId(resultSet.getInt(1));
			  automobile.setMarca(resultSet.getString(2));
			  automobile.setModello(resultSet.getString(3));
			  automobile.setPrezzo(resultSet.getInt(4));
			  automobile.setKm(resultSet.getInt(5));
			  automobile.setCarburante(Carburante.fromValue(resultSet.getString(6)));
			  automobile.setNumeroPorte(NumeroPorte.fromValue(resultSet.getInt(7)));
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
			
			DBUtil.close(statement);
		}
		
		return automobile;
	}
	

}
