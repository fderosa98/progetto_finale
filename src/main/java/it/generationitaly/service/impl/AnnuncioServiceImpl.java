package it.generationitaly.service.impl;

import java.sql.Connection;
import java.util.List;

import it.generationitaly.dao.AnnuncioDAO;
import it.generationitaly.dao.AutomobileDAO;
import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.dao.DataSource;
import it.generationitaly.dao.IndirizzoDAO;
import it.generationitaly.dao.impl.AnnuncioDAOImpl;
import it.generationitaly.dao.impl.AutomobileDAOImpl;
import it.generationitaly.dao.impl.IndirizzoDAOImpl;
import it.generationitaly.model.Annuncio;
import it.generationitaly.model.Automobile;
import it.generationitaly.model.Indirizzo;
import it.generationitaly.service.AnnuncioService;
import it.generationitaly.service.ServiceException;

public class AnnuncioServiceImpl implements AnnuncioService {
		
	AnnuncioDAO annuncioDAO = new AnnuncioDAOImpl();
	IndirizzoDAO indirizzoDAO = new IndirizzoDAOImpl();
	AutomobileDAO automobileDAO = new AutomobileDAOImpl();
		
	@Override
	public List<Annuncio> findAll() throws ServiceException {
		Connection connection = null;
		List<Annuncio> annunci = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			annunci = annuncioDAO.findAll(connection);
			DBUtil.commit(connection);
		    } catch (DAOException e) {
		System.err.println(e.getMessage());
		throw new ServiceException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
			
		}
		return annunci;
	}

	@Override
	public List<Annuncio> findFiltered(String marca, String modello, int prezzoMin, int prezzoMax, String orderBy) throws ServiceException {
		Connection connection = null;
		List<Annuncio> annunci = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			annunci = annuncioDAO.findFiltered(connection, marca, modello, prezzoMin, prezzoMax, orderBy);
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			throw new ServiceException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
		}
		
		return annunci;
	}

	@Override
	public Annuncio findById(int id) throws ServiceException {
		Annuncio annuncio = null;
		Connection connection = null;
		try {
		    connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			annuncio = annuncioDAO.findById(connection,id);
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			throw new ServiceException(e.getMessage(), e);
		}finally {
			DBUtil.close(connection);
			
		}
		return annuncio;
	}

	@Override
	public List<Indirizzo> findAllIndirizzi() throws ServiceException {
		Connection connection = null;
		List<Indirizzo> indirizzi = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			indirizzi = indirizzoDAO.findAllIndirizzi(connection);
			
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			throw new ServiceException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
		}
		
		return indirizzi;
		
	}

	@Override
	public void saveAnnuncio(Annuncio annuncio) throws ServiceException {
		Connection connection = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			annuncioDAO.saveAnnuncio(connection, annuncio);
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			DBUtil.rollback(connection);
			throw new ServiceException(e.getMessage(), e);
		}finally {
			DBUtil.close(connection);
			
		}
		
	}

	@Override
	public Automobile carFindById(int id) throws ServiceException {
		Automobile automobile = null;
		Connection connection = null;
		try {
		    connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			automobile = automobileDAO.carFindById(connection,id);
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			throw new ServiceException(e.getMessage(), e);
		}finally {
			DBUtil.close(connection);
			
		}
		return automobile;
	}

	@Override
	public List<Automobile> carFindAll() throws ServiceException {
		Connection connection = null;
		List<Automobile> automobili = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			automobili = automobileDAO.carFindAll(connection);
			DBUtil.commit(connection);
		    } catch (DAOException e) {
		System.err.println(e.getMessage());
		throw new ServiceException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
			
		}
		return automobili;
	}

	public Annuncio findDettaglioById(int id) throws ServiceException {
        Connection connection = null;
        Annuncio annuncio = null;
        try {
            connection = DataSource.getInstance().getConnection();
            DBUtil.setAutoCommit(connection, false);
            annuncio = annuncioDAO.findDettaglioById(connection, id);
            // System.out.println(annunci + "ioiooioioioioioioioioioioio"); ...  ctrl d cancella riga
            DBUtil.commit(connection);
        } catch (DAOException e) {
            System.err.println(e.getMessage());
            throw new ServiceException(e.getMessage(), e);
        } finally {
            DBUtil.close(connection);
        }

        return annuncio;
    }
	
	public void deleteAnnuncio(Annuncio annuncio) throws ServiceException {
		Connection connection = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			annuncioDAO.deleteAnnuncio(connection, annuncio);
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			DBUtil.rollback(connection);
			throw new ServiceException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
		}	
	}
	
	public void saveAutomobile(Automobile automobile) throws ServiceException {
		Connection connection = null;
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			automobileDAO.saveAutomobile(connection, automobile);
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			DBUtil.rollback(connection);
			throw new ServiceException(e.getMessage(), e);
		}finally {
			DBUtil.close(connection);			
		}						
	}
	
	public void saveIndirizzo(Indirizzo indirizzo) throws ServiceException {
        Connection connection = null;
        try {
            connection = DataSource.getInstance().getConnection();
            DBUtil.setAutoCommit(connection, false);
            indirizzoDAO.saveIndirizzo(connection, indirizzo);
            DBUtil.commit(connection);
        } catch (DAOException e) {
            System.err.println(e.getMessage());
            DBUtil.rollback(connection);
            throw new ServiceException(e.getMessage(), e);
        } finally {
            DBUtil.close(connection);
        }
    }

	
	
}
