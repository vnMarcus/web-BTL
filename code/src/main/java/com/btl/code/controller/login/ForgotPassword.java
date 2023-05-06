package com.btl.code.controller.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.*;

@WebServlet(name = "ForgotPassword", value = "/forgot")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        final String username = "test.smartstore.1@gmail.com"; // thay bằng địa chỉ email của bạn
        final String password = "khkjoocsrudpwktr"; // thay bằng mật khẩu của bạn
        RequestDispatcher dispatcher = null;
        int otpvalue = 0;
        HttpSession mySession = request.getSession();

        if (email!=null || !email.equals("")) {
            Random rand = new Random();
            otpvalue = rand.nextInt(900000) + 100000;
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", "smtp.gmail.com"); // thay bằng SMTP host của bạn
            props.put("mail.smtp.port", "587"); // thay bằng SMTP port của bạn

            Session session = Session.getInstance(props,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                        }
                    });

            try {

                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress("test.smartstore.1@gmail.com")); // thay bằng địa chỉ email của bạn
                message.setRecipients(Message.RecipientType.TO,
                        InternetAddress.parse(email)); // thay bằng địa chỉ email của người nhận
                message.setSubject("Your OTP");
                message.setText("your OTP is: " + otpvalue);

                Transport.send(message);

            } catch (MessagingException e) {
                throw new RuntimeException(e);
            }
            dispatcher = request.getRequestDispatcher("otp.jsp");
            request.setAttribute("message","OTP is sent to your email id");
            //request.setAttribute("connection", con);
            mySession.setAttribute("otp",otpvalue);
            mySession.setAttribute("email",email);
            dispatcher.forward(request, response);
        }
    }
}
