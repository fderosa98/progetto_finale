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
import it.generationitaly.model.Messaggio;
import it.generationitaly.model.NumeroPorte;

public class AutomobileDAOImpl implements AutomobileDAO{

	public void saveAutomobile(Connection connection, Automobile automobile) throws DAOException {
		String sql ="insert into automobile (marca, modello, anno, prezzo, km, carburante, numero_porte) values (?,?,?,?,?,?,?);";
		System.out.println(sql);
		PreparedStatement statement = null;
        ResultSet generatedKeys = null;
        try {
            statement = connection.prepareStatement(sql, new String[] { "id" });
            statement.setString(1, automobile.getMarca());
            statement.setString(2, automobile.getModello());
            statement.setInt(3, automobile.getAnno());
            statement.setDouble(4, automobile.getPrezzo());
            statement.setInt(5, automobile.getKm());
            statement.setString(6, automobile.getCarburante().getValue());
            statement.setInt(7, automobile.getNumeroPorte().getValue());
            statement.executeUpdate();
            generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int id = generatedKeys.getInt(1);
                automobile.setId(id);
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
