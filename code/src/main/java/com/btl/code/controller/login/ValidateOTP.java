package com.btl.code.controller.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ValidateOTP", value = "/ValidateOtp")
public class ValidateOTP extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int value=Integer.parseInt(request.getParameter("otp"));
        HttpSession session=request.getSession();
        int otp=(int)session.getAttribute("otp");
        RequestDispatcher dispatcher=null;


        if (value==otp)
        {

            request.setAttribute("email", request.getParameter("email"));
            request.setAttribute("status", "success");
            dispatcher=request.getRequestDispatcher("newPassword.jsp");
            dispatcher.forward(request, response);

        }
        else
        {
            request.setAttribute("message","wrong otp");

            dispatcher=request.getRequestDispatcher("otp.jsp");
            dispatcher.forward(request, response);

        }
    }
}
