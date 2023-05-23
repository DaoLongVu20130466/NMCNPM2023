package Model;

import DB.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

public class Loaction {
    Map<Integer, String> map = new HashMap<Integer, String>();

    public Loaction() {

        this.map = getLocation();
    }
// Đào Long Vũ - Bước 7
    public Map<Integer, String> getLocation(){
        Map<Integer, String> map = new HashMap<Integer, String>();
        try {
            Connection conn = DB.getConnection(DB.getDbUrl(), DB.getUserName(), DB.getPASSWORD());
            PreparedStatement stmt = conn.prepareStatement("SELECT id , name from location");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                map.put(rs.getInt(1), rs.getString(2));
            }
            conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return map;
    }
//    Đào Long Vũ - bước 8
    public String getLctName(int id){
        return map.get(id);
    }
}
