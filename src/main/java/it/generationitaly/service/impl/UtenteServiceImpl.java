package it.generationitaly.service.impl;

import java.sql.Connection;

import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.dao.DataSource;
import it.generationitaly.dao.MessaggioDAO;
import it.generationitaly.dao.UtenteDAO;
import it.generationitaly.dao.impl.MessaggioDAOImpl;
import it.generationitaly.dao.impl.UtenteDAOImpl;
import it.generationitaly.model.Messaggio;
import it.generationitaly.model.Utente;
import it.generationitaly.service.ServiceException;
import it.generationitaly.service.UtenteService;

public class UtenteServiceImpl implements UtenteService {

	UtenteDAO utenteDAO = new UtenteDAOImpl();
	MessaggioDAO messaggioDAO = new MessaggioDAOImpl();

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
		} finally {
			DBUtil.close(connection);

		}

	}

	@Override
	public Utente findByUsername(String username) throws ServiceException {
		Utente utente = null;
		Connection connection = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			utente = utenteDAO.findByUsername(connection, username);
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			DBUtil.rollback(connection);
			throw new ServiceException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
		}
		return utente;
	}

	@Override
	public void saveMessaggio(Messaggio messaggio) throws ServiceException {
		Connection connection = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			messaggioDAO.saveMessaggio(connection, messaggio);
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			DBUtil.rollback(connection);
			throw new ServiceException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
		}
	}

	@Override
	public Utente findById(int id) throws ServiceException {
		Utente utente = null;
        Connection connection = null;
        try {
            connection = DataSource.getInstance().getConnection();
            DBUtil.setAutoCommit(connection, false);
            utente = utenteDAO.findById(connection,id);
            DBUtil.commit(connection);
        } catch (DAOException e) {
            System.err.println(e.getMessage());
            throw new ServiceException(e.getMessage(), e);
        }finally {
            DBUtil.close(connection);
        }
        return utente;
	}
}
