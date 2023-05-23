package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
    private static String DB_URL = "jdbc:mysql://103.82.22.61:3306/shopvetau";
    private static String USER_NAME = "root";
    private static String PASSWORD = "12345";

    public static String getDbUrl() {
        return DB_URL;
    }

    public static String getUserName() {
        return USER_NAME;
    }

    public static String getPASSWORD() {
        return PASSWORD;
    }

//    Đào Long Vũ - Bước 6
    public static Connection getConnection(String dbURL, String userName,
                                           String password) {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, userName, password);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return conn;
    }


}