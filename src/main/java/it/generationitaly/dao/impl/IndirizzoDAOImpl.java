package it.generationitaly.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.dao.IndirizzoDAO;
import it.generationitaly.model.Indirizzo;

public class IndirizzoDAOImpl implements IndirizzoDAO {

	@Override
	public List<Indirizzo> findAllIndirizzi(Connection connection) throws DAOException {
			List<Indirizzo> indirizzi = new ArrayList<Indirizzo>();
			String sql = "SELECT * FROM indirizzo";
			System.out.println(sql);
			PreparedStatement statement = null;
			ResultSet resultSet = null;
			try {
				statement = connection.prepareStatement(sql);
				resultSet = statement.executeQuery();
				while (resultSet.next()) {
					Indirizzo indirizzo = new Indirizzo();
					indirizzo.setId(resultSet.getInt(1));
					indirizzo.setCitta(resultSet.getString(2));
					indirizzo.setProvincia(resultSet.getString(3));
					indirizzi.add(indirizzo);
				}
			} catch (SQLException e) {
				System.err.println(e.getMessage());
				throw new DAOException(e.getMessage(), e);
			} finally {
				DBUtil.close(resultSet);
				DBUtil.close(statement);
			}
			return indirizzi;
		}
		
	}


