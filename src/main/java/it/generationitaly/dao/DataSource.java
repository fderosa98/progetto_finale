package it.generationitaly.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DataSource {

	private static final String URL = "jdbc:mysql://127.0.0.1:3306/project_work?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&useTimezone=true&serverTimezone=UTC";
	private static final String USER = "root";
	private static final String PASSWORD = "drsfba";

	private static DataSource instance;

	private DataSource() {
	}

	public static DataSource getInstance() {
		if (instance == null)
			instance = new DataSource();
		return instance;
	}

	public Connection getConnection() throws DAOException {
		try {
			return DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (SQLException e) {
			throw new DAOException(e.getMessage(), e);
		}
	}


}
