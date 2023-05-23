package Servlet;

import Model.Ticket;
import Service.Webservice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletSearchTicket", value = "/ServletSearchTicket")
public class ServletSearchTicket extends HttpServlet {
    @Override
//    Đào Long Vũ bước 3
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String lctto = request.getParameter("selectionbox1");
        String lctend = request.getParameter("selectionbox2");
        String trainid = request.getParameter("name");
        if (trainid != null) {
            ArrayList<Ticket> test = Webservice.getInstance().searchTicket(trainid);
            request.setAttribute("ketqua", test);
            request.getRequestDispatcher("ketquatimkiem.jsp").forward(request, response);
        } else if (lctto != null || lctend != null) {
            ArrayList<Ticket> test = Webservice.getInstance().searchTicket(lctto, lctend);
            request.setAttribute("ketqua", test);
            request.getRequestDispatcher("ketquatimkiem.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }


}
