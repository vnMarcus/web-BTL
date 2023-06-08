package com.btl.code.controller;

import com.btl.code.dao.UserDao;
import com.btl.code.model.User;
import com.btl.code.util.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletChangePassword", value = "/changepassword")
public class ServletChangePassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("changepassword.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pre_password = request.getParameter("password");
        String new_password = request.getParameter("new_pass");
        String re_password = request.getParameter("re_pass");

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        User user = null;
        try {
            user = new UserDao().getUserByEmail(username.trim());
            new UserDao().updatePassword(user.getId(), HashPassword.hashPassword(new_password));

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        if (user == null) {
            request.setAttribute("status","9");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
        }
        else if (!user.getPassword().trim().equals(HashPassword.hashPassword(pre_password))){
            request.setAttribute("status","10");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
        }
        else {
            request.setAttribute("status","11");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
        }




    }
}
