package Model;

import DB.DB;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.StringTokenizer;

public class Ticket {
    String id;
    String name;
    String trainId;
    String lctTO;
    String lctEnd;
    int value;
    String dayStart;
    String dayStop;

    public Ticket() {
    }

    public Ticket(String id, String name, String trainId, String lctTO, String lctEnd, int value, String dayStart, String dayStop) {
        this.id = id;
        this.name = name;
        this.trainId = trainId;
        this.lctTO = lctTO;
        this.lctEnd = lctEnd;
        this.value = value;
        this.dayStart = dayStart;
        this.dayStop = dayStop;
    }

//    Đào Long Vũ - Bước 5
    public ArrayList<Ticket> searchTicket(String... input){
        ArrayList<Ticket> rsl = new ArrayList<>();
//     Đào Long Vũ - Bước 6
        Loaction loaction = new Loaction();
        String query ;
        try {
            Connection conn = DB.getConnection(DB.getDbUrl(), DB.getUserName(), DB.getPASSWORD());
            
            if(input.length ==1){
                query = "SELECT id , name, trainid, lcto, lctend,value , timestart,timestop from ticket where id = ?";
            }
            else{
                query = "SELECT id , name, trainid, lcto, lctend,value , timestart,timestop from ticket where lcto = ? and lctend = ?";
            }
            PreparedStatement stmt = conn.prepareStatement(query);
            for (int i = 0; i < input.length; i++) {
                stmt.setString(i+1,input[i]);
            }
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                rsl.add(new Ticket(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        loaction.getLctName(rs.getInt(4)),
                        loaction.getLctName(rs.getInt(5)),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8)
                        ));

            }
            conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return rsl;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getTrainId() {
        return trainId;
    }

    public String getLctTO() {
        return lctTO;
    }

    public String getLctEnd() {
        return lctEnd;
    }

    public int getValue() {
        return value;
    }

    public String getDayStart() {
        StringTokenizer st = new StringTokenizer(this.dayStart, " ");
        return st.nextToken();
    }

    public String getDayStop() {
        StringTokenizer st = new StringTokenizer(this.dayStop, " ");
        return st.nextToken();
    }
    public String getTimeStart() {
        StringTokenizer st = new StringTokenizer(this.dayStart, " ");
        st.nextToken();
        return st.nextToken();
    }

    public String getTimeStop() {
        StringTokenizer st = new StringTokenizer(this.dayStop, " ");
        st.nextToken();
        return st.nextToken();
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

    public static void main(String[] args) {
        Ticket a1= new Ticket();
        ArrayList<Ticket> z = a1.searchTicket("1");
        for (Ticket a: z) {
            System.out.println(a.toString());
            System.out.println(a.getDayStart());
            System.out.println(a.getTimeStart());
        }


    }
}
