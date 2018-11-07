package Utils;

import java.sql.*;

/**
 *
 * @author PinguinosdeMadagascar
 */
public class Conexion {

    static String user = "root";
    static String pass = "";
    static String url = "jdbc:mysql://localhost/BDcarrito?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    public static Connection getConexion() {
        Connection cn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn = DriverManager.getConnection(url, user, pass);
            System.out.println("Conexion Exitosa");
        } catch (Exception e) {
            System.out.println("Error de Conexion en: " + e);
        }
        return cn;
    }

    public static void main(String[] args) {
        Conexion.getConexion();

    }

}
