package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.dbutils.DbUtils;


public class Dao
{
    private Connection connection = null;
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/homework2";
    static final String USER = "root";
    static final String PASSWORD = "19960323";

    public Connection getConnection() throws Exception
    {
        try
        {
            if (connection == null)
            {
                DbUtils.loadDriver(JDBC_DRIVER);
                this.connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            }
        }

        catch (SQLException ex)
        {
            System.out.println("SQL Exception");
            ex.printStackTrace();
            throw new Exception();
        }
        return this.connection;
    }

    public void closeConnection()
    {
        if (this.connection != null)
        {
            try
            {
                DbUtils.close(this.connection);
            }

            catch (SQLException ex)
            {
                Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println(ex);
            }
        }
    }
}