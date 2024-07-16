
package ph.pup.itech.hrmgr.dao;
    
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionPool {
    
    static Connection conn;

    public static Connection getConnection() {
        try {

            String driver = "com.mysql.cj.jdbc.Driver";
            Class.forName(driver);

            String url = "jdbc:mysql://localhost:3306/userman?serverTimezone=UTC";
            conn = (Connection) DriverManager.getConnection(url, "root", "mysqldacanay0728");

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("SQLException: " + e.get Message());
        }

        return conn;
    }
    
}
    
