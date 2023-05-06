package com.btl.code.dao;

import com.btl.code.db.DBConnection;
import com.btl.code.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {
    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement ps = null;

    public ProductDAO() {
    }

    public ArrayList<Product> getAll(){
        ArrayList<Product> res=new ArrayList<>();
        String query="SELECT * FROM Product";
        try{
             conn=new DBConnection().getConnection();
             ps=conn.prepareStatement(query);
             rs=ps.executeQuery();
             while (rs.next()){
                 int id=rs.getInt("id");
                 double price=rs.getDouble("price");
                 String name=rs.getString("product_name");
                 String images=rs.getString("images");
                 String desc=rs.getString("descriptions");
                 Product temp=new Product(id,name,price,images,desc);
                 res.add(temp);
             }
        }catch (Exception e){
            e.printStackTrace();
        }
        return res;
    }
    public Product getProductById(int i){
        String query="SELECT * FROM Product WHERE id=?";
        try{
            conn=new DBConnection().getConnection();
            ps=conn.prepareStatement(query);
            ps.setInt(1,i);
            rs=ps.executeQuery();
            if (rs.next()){
                int id=rs.getInt("id");
                double price=rs.getDouble("price");
                String name=rs.getString("product_name");
                String images=rs.getString("images");
                String desc=rs.getString("descriptions");
                return (new Product(id,name,price,images,desc));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
