package it.generationitaly.service.impl;

import java.sql.Connection;

import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.dao.DataSource;
import it.generationitaly.dao.UtenteDAO;
import it.generationitaly.dao.impl.UtenteDAOImpl;
import it.generationitaly.model.Utente;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.UtenteService;

public class UtenteServiceImpl implements UtenteService {
	
	UtenteDAO utenteDAO = new UtenteDAOImpl();

		@Override
		public void saveUtente(Utente utente) throws ServiceException {
			Connection connection = null;
			try {
				connection = DataSource.getInstance().getConnection();
				DBUtil.setAutoCommit(connection, false);
				utenteDAO.saveUtente(connection, utente);
				DBUtil.commit(connection);
			} catch (DAOException e) {
				System.err.println(e.getMessage());
				DBUtil.rollback(connection);
				throw new ServiceException(e.getMessage(), e);
			}finally {
				DBUtil.close(connection);
				
			}
			
		}

}
