package it.generationitaly.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.dao.MessaggioDAO;
import it.generationitaly.model.Messaggio;
import it.generationitaly.model.Utente;

public class MessaggioDAOImpl implements MessaggioDAO {

	@Override
	public void saveMessaggio(Connection connection, Messaggio messaggio) throws DAOException {
		String sql ="insert into messaggio (u_mittente_id, u_destinatario_id, corpo_messaggio) values (?,?,?);";
		System.out.println(sql);
		PreparedStatement statement = null;
        ResultSet generatedKeys = null;
        try {
            statement = connection.prepareStatement(sql, new String[] { "id" });
            statement.setInt(1, messaggio.getMittente().getId());
            statement.setInt(2, messaggio.getDestinatario().getId());
            statement.setString(3, messaggio.getCorpoMessaggio());
            statement.executeUpdate();
            generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int id = generatedKeys.getInt(1);
                messaggio.setId(id);
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
	public List<Messaggio> findAll(Connection connection) throws DAOException {
		List<Messaggio> messaggi = new ArrayList<Messaggio>();
		String sql = "SELECT * FROM messaggio";
		System.out.println(sql);
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				Messaggio messaggio = new Messaggio();
				messaggio.setId(resultSet.getInt(1));
				
				Utente mittente = new Utente();
				mittente.setId(resultSet.getInt(2));
				
				Utente destinatario = new Utente();
				destinatario.setId(resultSet.getInt(3));
				
				messaggio.setMittente(mittente);
				messaggio.setDestinatario(destinatario);
				messaggio.setCorpoMessaggio(resultSet.getString(4));
				messaggi.add(messaggio);
			}	
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOException(e.getMessage(), e);
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(statement);
		}
		return messaggi;
	}
	
	@Override
	public List<Messaggio> findAllMessaggiMittentiDestinatari(Connection connection) throws DAOException {
		List<Messaggio> messaggi = new ArrayList<Messaggio>();
		String sql = "select * from messaggio join utente m on m.id = messaggio.u_mittente_id join utente d on d.id = messaggio.u_destinatario_id";
		System.out.println(sql);
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				Messaggio messaggio = new Messaggio();
				messaggio.setId(resultSet.getInt(1));
				messaggio.setCorpoMessaggio(resultSet.getString(4));			
				
				Utente mittente = new Utente();
				mittente.setId(resultSet.getInt(5));
				mittente.setNome(resultSet.getString(6));
				mittente.setCognome(resultSet.getString(7));
				mittente.setEmail(resultSet.getString(8));
				mittente.setTelefono(resultSet.getLong(9));
				mittente.setUsername(resultSet.getString(10));
				
				
				Utente destinatario = new Utente();
				destinatario.setId(resultSet.getInt(12));
				destinatario.setNome(resultSet.getString(13));
				destinatario.setCognome(resultSet.getString(14));
				destinatario.setEmail(resultSet.getString(15));
				destinatario.setTelefono(resultSet.getLong(16));
				destinatario.setUsername(resultSet.getString(17));
				
				messaggio.setMittente(mittente);
				messaggio.setDestinatario(destinatario);
				messaggio.setCorpoMessaggio(resultSet.getString(4));
				messaggi.add(messaggio);
			}	
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOException(e.getMessage(), e);
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(statement);
		}
		return messaggi;
	}


	
	
	
	

}
