package Servlet;

import Model.Bill;
import Model.Ticket;
import Service.Webservice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CompletedServlet", value = "/CompletedServlet")
public class CompletedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String booking_code = request.getParameter("booking");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        Bill bill = Webservice.repayTicket(booking_code, email, phone);
        bill.setReturntic_inf("Vé đã trả lại");

        request.setAttribute("bill", bill);
        request.getRequestDispatcher("completed_repay.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
