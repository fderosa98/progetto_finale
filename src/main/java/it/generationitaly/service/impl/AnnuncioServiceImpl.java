package it.generationitaly.service.impl;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.dao.AnnuncioDAO;
import it.generationitaly.dao.DAOException;
import it.generationitaly.dao.DBUtil;
import it.generationitaly.dao.DataSource;
import it.generationitaly.dao.impl.AnnuncioDAOImpl;
import it.generationitaly.model.Annuncio;
import it.generationitaly.service.AnnuncioService;
import it.generationitaly.service.ServiceException;

public class AnnuncioServiceImpl implements AnnuncioService {
		
	AnnuncioDAO annuncioDAO = new AnnuncioDAOImpl();
		
	@Override
	public List<Annuncio> findAll() throws ServiceException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Annuncio> findFiltered(String marca, String modello, int prezzo) throws ServiceException {
		Connection connection = null;
		List<Annuncio> annunci = null;
		// System.out.println("bubu");
		try {
			connection = DataSource.getInstance().getConnection();
			DBUtil.setAutoCommit(connection, false);
			annunci = annuncioDAO.findFiltered(connection, marca, modello, prezzo);
			// System.out.println(annunci + "ioiooioioioioioioioioioioio");
			DBUtil.commit(connection);
		} catch (DAOException e) {
			System.err.println(e.getMessage());
			throw new ServiceException(e.getMessage(), e);
		} finally {
			DBUtil.close(connection);
		}
		
		return annunci;
	}

}
