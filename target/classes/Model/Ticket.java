package Model;

import DB.DB;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class Ticket {
    String id;
    String name;
    String trainId;
    String lctTO;
    String lctEnd;
    int value;
    Date dayStart;
    Date dayStop;

    public Ticket() {
    }

    public Ticket(String id, String name, String trainId, String lctTO, String lctEnd, int value, Date dayStart, Date dayStop) {
        this.id = id;
        this.name = name;
        this.trainId = trainId;
        this.lctTO = lctTO;
        this.lctEnd = lctEnd;
        this.value = value;
        this.dayStart = dayStart;
        this.dayStop = dayStop;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", trainId='" + trainId + '\'' +
                ", lctTO='" + lctTO + '\'' +
                ", lctEnd='" + lctEnd + '\'' +
                ", value=" + value +
                ", dayStart=" + dayStart +
                ", dayStop=" + dayStop +
                '}';
    }

    public Date getDayStop() {
        return dayStop;
    }

    public void setDayStop(Date dayStop) {
        this.dayStop = dayStop;
    }

    public Date getDayStart() {
        return dayStart;
    }

    public void setDayStart(Date dayStart) {
        this.dayStart = dayStart;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getLctEnd() {
        return lctEnd;
    }

    public void setLctEnd(String lctEnd) {
        this.lctEnd = lctEnd;
    }

    public String getLctTO() {
        return lctTO;
    }

    public void setLctTO(String lctTO) {
        this.lctTO = lctTO;
    }

    public String getTrainId() {
        return trainId;
    }

    public void setTrainId(String trainId) {
        this.trainId = trainId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
//    public ArrayList<Ticket> searchTicket(String... input){
//        ArrayList<Ticket> rsl = new ArrayList<>();
//        String query ;
//        try {
//            Connection conn = DB.getConnection(DB.getDbUrl(), DB.getUserName(), DB.getPASSWORD());
//
//            if(input.length ==1){
//                query = "SELECT id , name, trainid, lcto, lctend,value , timestart,timestop where id = ?";
//                System.out.println("1");
//            }
//            else{
//                query = "SELECT id , name, trainid, lcto, lctend,value , timestart,timestop where lcto = ? and lctend = ?";
//                System.out.println("2");
//            }
//            PreparedStatement stmt = conn.prepareStatement(query);
//            for (int i = 0; i < input.length; i++) {
//                stmt.setString(i+1,input[i]);
//            }
//            ResultSet rs = stmt.executeQuery();
//            while (rs.next()) {
//                rsl.add(new Ticket(
//                        rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getInt(6),
//                        rs.getDate(7),
//                        rs.getDate(8)
//                        ));
//            }
//            conn.close();
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//
//        return rsl;
//    }


    public static void main(String[] args) {

    }
}
