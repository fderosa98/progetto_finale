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
import it.generationitaly.model.Automobile;
import it.generationitaly.model.Carburante;
import it.generationitaly.model.NumeroPorte;

public class AnnuncioDAOImpl implements AnnuncioDAO {

	@Override
	public List<Annuncio> findAll(Connection connection) throws DAOException {
		List<Annuncio> annunci = new ArrayList<Annuncio>();
		String sql = "SELECT * FROM annuncio";
		System.out.println(sql);
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
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

	public List<Annuncio> findFiltered(Connection connection, String marca, String modello, double prezzo)
			throws DAOException {
		String sql = "SELECT * FROM annuncio join automobile on annuncio.automobile_id = automobile.id";

		if (marca != null || prezzo > 0) {
			sql += " WHERE";
			if (marca != null) {
				sql += " marca LIKE ?";
			}
			if (modello != null) {
				sql += " AND modello LIKE ?";
			}
			if (marca != null && prezzo > 0) {
				sql += " AND prezzo<=?";
			}
			if (marca == null && prezzo > 0) {
				sql += " prezzo<=?";
			}
		}

		System.out.println(sql);
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			statement = connection.prepareStatement(sql);
			if (marca != null) {
				statement.setString(1, "%" + marca + "%");
			}
			if (modello != null) {
				statement.setString(2, "%" + modello + "%");
			}
			if (marca == null && prezzo > 0) {
				statement.setDouble(1, prezzo);
			} else if (marca != null && modello == null && prezzo > 0) {
				statement.setDouble(2, prezzo);
			} else if (marca != null && modello != null && prezzo > 0) {
				statement.setDouble(3, prezzo);
			}
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				Annuncio annuncio = new Annuncio();
				annuncio.setId(resultSet.getInt(1));
				annuncio.setTitolo(resultSet.getString(2));
				annuncio.setDescrizione(resultSet.getString(3));

				Automobile automobile = new Automobile();
				automobile.setId(resultSet.getInt(5));
				automobile.setMarca(resultSet.getString(8));
				automobile.setModello(resultSet.getString(9));
				automobile.setAnno(resultSet.getInt(10));
				automobile.setPrezzo(resultSet.getDouble(11));
				automobile.setKm(resultSet.getInt(12));
				automobile.setCarburante(Carburante.valueOf(resultSet.getString(13)));
				automobile.setNumeroPorte(NumeroPorte.valueOf(resultSet.getString(14)));
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOException();
		}
		return null;
	}

//	private String createQuery(String marca, String modello, double prezzo) {
//		String sql = "SELECT * FROM automobile";
//		if (marca != null || prezzo > 0) {
//			sql += " WHERE";
//			if (marca != null) {
//				sql += " marca LIKE ?";
//			}
//			if (modello != null) {
//				sql += " AND modello LIKE ?";
//			}
//			if (marca != null && prezzo > 0) {
//				sql += " AND prezzo<=?";
//			}
//			if (marca == null && prezzo > 0) {
//				sql += " prezzo<=?";
//			}
//		}
//		return sql;
//	}
}