package it.generationitaly.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.dao.MessaggioDAO;
import it.generationitaly.model.Messaggio;

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

		
	
	
	

}
