package Model;

import java.sql.Date;

public class Bill {
    int id;
    String booking_code;
    String email;
    String phone;
    int id_Ticket;
    String returntic_inf;
    Date dateOfPay;
    int totalPrice;

    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", booking_code='" + booking_code + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", id_Ticket=" + id_Ticket +
                ", returntic_inf='" + returntic_inf + '\'' +
                ", dateOfPay=" + dateOfPay +
                ", totalPrice=" + totalPrice +
                '}';
    }

    public Bill(int id, String booking_code, String email, String phone, int id_Ticket, String returntic_inf, Date dateOfPay, int totalPrice) {
        this.id = id;
        this.booking_code = booking_code;
        this.email = email;
        this.phone = phone;
        this.id_Ticket = id_Ticket;
        this.returntic_inf = returntic_inf;
        this.dateOfPay = dateOfPay;
        this.totalPrice = totalPrice;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getDateOfPay() {
        return dateOfPay;
    }

    public void setDateOfPay(Date dateOfPay) {
        this.dateOfPay = dateOfPay;
    }

    public String getReturntic_inf() {
        return returntic_inf;
    }

    public void setReturntic_inf(String returntic_inf) {
        this.returntic_inf = returntic_inf;
    }

    public int getId_Ticket() {
        return id_Ticket;
    }

    public void setId_Ticket(int id_Ticket) {
        this.id_Ticket = id_Ticket;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Bill() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBooking_code() {
        return booking_code;
    }

    public void setBooking_code(String booking_code) {
        this.booking_code = booking_code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
