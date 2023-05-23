package Servlet;

import Service.Webservice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RepayServlet", value = "/RepayServlet")
public class RepayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String booking_code = request.getParameter("booking");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        try{
            if(Webservice.checkTicket(booking_code, email, phone)){
                request.getRequestDispatcher("/untitled_war/ConfirmServlet").forward(request, response);
            } else {
                request.setAttribute("error", "Thông tin không hợp lệ!");
                request.getRequestDispatcher("repay.jsp").forward(request, response);
            }
        } catch (Exception e){

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
