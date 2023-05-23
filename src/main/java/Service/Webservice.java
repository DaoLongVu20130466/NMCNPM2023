package Service;

import Model.Bill;
import Model.Ticket;
import DB.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Webservice {
    private static Webservice instance;

    public static Webservice getInstance() {
        if (instance == null) {
            instance = new Webservice();
        }
        return instance;
    }
//    Đào Long Vũ Bước 4

    public static boolean checkTicket(String booking_code, String email, String phone) {
        String query = "select * from bill where booking_code = ? and email = ? and phone = ?";
        try {
            Connection conn = DB.getConnection(DB.getDbUrl(), DB.getUserName(), DB.getPASSWORD());
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, booking_code);
            ps.setString(2, email);
            ps.setString(3, phone);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static Ticket getTicketByBookingCode(String booking_code, String email, String phone) {
        String query = "select * from ticket join bill on ticket.id = bill.id_Ticket where booking_code = ? and email = ? and phone = ?";
        try {
            Connection conn = DB.getConnection(DB.getDbUrl(), DB.getUserName(), DB.getPASSWORD());
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, booking_code);
            ps.setString(2, email);
            ps.setString(3, phone);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Ticket(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Bill repayTicket(String booking_code, String email, String phone) {
        String query = "select * from bill where booking_code = ? and email = ? and phone = ?";
        try {
            Connection conn = DB.getConnection(DB.getDbUrl(), DB.getUserName(), DB.getPASSWORD());
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, booking_code);
            ps.setString(2, email);
            ps.setString(3, phone);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Bill(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getDate(7),
                        rs.getInt(8));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Ticket> searchTicket(String... input) {
        return new Ticket().searchTicket(input);
    }
}
