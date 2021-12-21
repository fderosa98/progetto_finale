package it.generationitaly.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.dao.AnnuncioDAO;
import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.model.Annuncio;

public class AnnuncioDAOImpl implements AnnuncioDAO {

	@Override
	public List<Annuncio> findAll(Connection connection) throws DAOException {
			List<Annuncio> annunci = new ArrayList<Annuncio>();
			String sql= "SELECT * FROM annuncio";
			System.out.println(sql);
			PreparedStatement statement = null;
			ResultSet resultSet = null;
			try {
				statement = connection.prepareStatement(sql);
				resultSet= statement.executeQuery();
				while(resultSet.next()) {
					Annuncio annuncio = new Annuncio();
					annuncio.setId(resultSet.getInt(1));
					annuncio.setTitolo(resultSet.getString(2));
					annuncio.setDescrizione(resultSet.getString(3));
					annunci.add(annuncio);
				}
			} catch (SQLException e) {
				System.err.println(e.getMessage());
				throw new DAOException();
			} finally {
				DBUtil.close(resultSet);
				DBUtil.close(statement);
			}
			return annunci;
	}

}
