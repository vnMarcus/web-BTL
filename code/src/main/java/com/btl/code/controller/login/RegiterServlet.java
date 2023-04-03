package com.btl.code.controller.login;

import com.btl.code.dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegiterServlet", value = "/register")
public class RegiterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // get parameter from HTML
        String userName = request.getParameter("user_name");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String full_name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String phone_number = request.getParameter("phone_number");

//        System.out.println(userName + " " + full_name + " " + phone_number + " " +
//                email + " " + address + " " + password);

        // insert
        UserDAO userDAO = new UserDAO();
        boolean flag = userDAO.register(userName,full_name, password, phone_number, email, address);
        if (flag){
            request.setAttribute("status", "success");
        } else {
            request.setAttribute("status", "failed");
        }
        request.getRequestDispatcher("register.jsp").forward(request, response);

    }
}
