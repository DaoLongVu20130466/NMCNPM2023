package Servlet;

import Model.Ticket;
import Service.Webservice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ConfirmServlet", value = "/ConfirmServlet")
public class ConfirmServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String booking_code = request.getParameter("booking");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        Ticket tic = Webservice.getTicketByBookingCode(booking_code, email, phone);

        request.setAttribute("ticket", tic);
        request.setAttribute("booking_code", booking_code);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.getRequestDispatcher("confirm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
