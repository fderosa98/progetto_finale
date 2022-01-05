package it.generationitaly.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.dao.UtenteDAO;
import it.generationitaly.model.Utente;

public class UtenteDAOImpl implements UtenteDAO {

	@Override
	public void saveUtente(Connection connection, Utente utente) throws DAOException {
		String sql ="INSERT INTO Utente(nome,cognome,email,telefono,username,password) VALUES(?,?,?,?,?,?)";
		System.out.println(sql);
		PreparedStatement statement = null;
        ResultSet generatedKeys = null;
        try {
            statement = connection.prepareStatement(sql, new String[] { "id" });
            statement.setString(1, utente.getNome());
            statement.setString(2, utente.getCognome());
            statement.setString(3, utente.getEmail());
            statement.setLong(4, utente.getTelefono());
            statement.setString(5, utente.getUsername());
            statement.setString(6, utente.getPassword());
            statement.executeUpdate();
            generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int id = generatedKeys.getInt(1);
                utente.setId(id);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            throw new DAOException(e.getMessage(), e);
        } finally {
            DBUtil.close(generatedKeys);
            DBUtil.close(statement); 
        }
	}

	@Override
	public Utente findByUsername(Connection connection, String username) throws DAOException {
		String sql = "SELECT * FROM utente WHERE username=?";
		System.out.println(sql);
		Utente utente = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			statement = connection.prepareStatement(sql);
			statement.setString(1, username);
			resultSet = statement.executeQuery();
			if (resultSet.next()) {
				utente = new Utente();
				utente.setId(resultSet.getInt(1));
				utente.setNome(resultSet.getString(2));
				utente.setCognome(resultSet.getString(3));
				utente.setEmail(resultSet.getString(4));
				utente.setTelefono(resultSet.getLong(5));
				utente.setUsername(resultSet.getString(6));
				utente.setPassword(resultSet.getString(7));
			}
			System.out.println(utente);
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOException(e.getMessage(), e);
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(statement);
		}
		return utente;
	}

	@Override
	public Utente findById(Connection connection, int id) throws DAOException {
		String sql = "SELECT * FROM utente WHERE id=?";
        System.out.println(sql);
        Utente utente = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
          statement = connection.prepareStatement(sql);
          statement.setInt(1, id);
          resultSet = statement.executeQuery();
          if(resultSet.next()) {
              utente = new Utente();
              utente.setId(resultSet.getInt(1));
              utente.setNome(resultSet.getString(2));
              utente.setCognome(resultSet.getString(3));
              utente.setEmail(resultSet.getString(4));
              utente.setTelefono(resultSet.getLong(5));
              utente.setUsername(resultSet.getString(6));
              utente.setPassword(resultSet.getString(7));
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            throw new DAOException(e.getMessage(), e);
        } finally {
            DBUtil.close(resultSet);
            DBUtil.close(statement);
        }
        return utente;
	}

}
