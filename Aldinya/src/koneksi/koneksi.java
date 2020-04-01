
package koneksi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class koneksi {
    private static Connection konfig;
    public static Connection configDB()throws SQLException{
        try {
            String url="jdbc:mysql://localhost/projekpbo";
            String user="aldhi";
            String pass="1221";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            konfig=DriverManager.getConnection(url, user, pass);            
        } catch (Exception e) {
            System.err.println("koneksi gagal "+e.getMessage());
        }
        return konfig;
    }    
}