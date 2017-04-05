package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseManager {

    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/agenda";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
    private Connection con = null;

    public DatabaseManager() {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException ex) {
            System.err.println(ex.getMessage());
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, null, ex.getMessage());
        }
    }

    public Connection getConnection() throws SQLException {
        if (con == null) {
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }
        return con;
    }

    public Statement getStatement() throws SQLException {
        return getConnection().createStatement();
    }

    public Statement getPreparedStatement(String sql) throws SQLException {
        return getConnection().prepareStatement(sql);
    }

}
