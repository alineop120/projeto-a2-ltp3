package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author 364975
 */
public class ConnectionFactory {
    private static final String URL = "jdbc:mysql://localhost:3306/cadastrobd";
    private static final String USER = "root";  // Substitua pelo seu usuário
    private static final String PASSWORD = "";  // Substitua pela sua senha

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return (Connection) DriverManager.getConnection(URL, USER, PASSWORD);
    	} catch (ClassNotFoundException e) {
            throw new SQLException("Driver JDBC não encontrado!", e);
    	}
	}
}
