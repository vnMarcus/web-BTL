package com.btl.code.controller.login;

import com.btl.code.dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NewPassword", value = "/newPassword")
public class NewPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("re_password");
        RequestDispatcher dispatcher = null;
        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)){
            try {
                UserDAO userDAO = new UserDAO();
                boolean flag = userDAO.updatePassword((String) session.getAttribute("email"), newPassword);
                if (flag){
                    request.setAttribute("status", "resetSuccess");
                    System.out.println("Sucess");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                }
                else {
                    request.setAttribute("status", "resetFailed");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                }

                dispatcher.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }
}
