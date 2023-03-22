package com.btl.code.controller;

import com.btl.code.dao.UserDAO;
import com.btl.code.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("name");
        String password = request.getParameter("password");

        if (userName != null && password != null){
            UserDAO userDAO = new UserDAO();
            User a = userDAO.login(userName, password);


            if (a == null) {
                String ms="Ban nhap sai, de nghi nhap lai!";
                request.setAttribute("error", ms);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
//            request.getRequestDispatcher("home").forward(request, response);
                request.setAttribute ("name", userName);
                request.getRequestDispatcher ("main.jsp").forward (request, response);

            }
        }
    }
}
