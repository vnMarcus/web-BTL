package com.btl.code.dao;

import com.btl.code.db.DBConnection;
import com.btl.code.model.User;

import java.nio.charset.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement ps = null;


    public User login(String user, String pass){

        String query = "SELECT * FROM user where user_name = ? and password = ?;";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, hashPassword(pass));
            rs = ps.executeQuery();
            while (rs.next()){
                return new User(
                        rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );

            }
        } catch (Exception e){

        }

        return null;
    }

    public static String hashPassword(String password) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(password.getBytes(StandardCharsets.UTF_8));
            StringBuilder hexString = new StringBuilder();
            for (byte b : hash) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }


    public boolean register(String user_name,String fullname,String password,String phone_number,String email,String address) {
        String query = "INSERT INTO user (user_name, fullname, password, phone_number, email, address) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user_name);
            ps.setString(2, fullname);
            ps.setString(3, hashPassword(password));
            ps.setString(4, phone_number);
            ps.setString(5, email);
            ps.setString(6, address);

            int result = ps.executeUpdate();
            return result > 0;
        } catch (Exception e){
            e.printStackTrace();
        }

        return false;
    }

    public boolean updatePassword(String email, String newpass){
        // if get error add SET SQL_SAFE_UPDATES = 0 in your sql
        String query = "update user set password = ? where email = ?;";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,hashPassword(newpass));
            ps.setString(2, email);
            int result = ps.executeUpdate();
            return result > 0;
        } catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }


    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
//        userDAO.register("john.doe","John Doe","p@ssword1","1234567890","johndoe@example.com","123 Main St, Anytown USA");
//        userDAO.register("jane.doe","Jane Doe","p@ssword2","0987654321","janedoe@example.com","456 Park Ave, Anytown USA");
//        userDAO.register("bob.smith","Bob Smith","p@ssword3","5551234567","bobsmith@example.com","789 Elm St, Anytown USA");

        String username = "john.doe";
        String email = "vinhphieu098@gmail.com";

        System.out.println(userDAO.updatePassword(email, "4779"));
    }

}
