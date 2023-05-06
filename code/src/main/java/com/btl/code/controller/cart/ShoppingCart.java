package com.btl.code.controller.cart;

import com.btl.code.dao.ProductDAO;
import com.btl.code.model.Cart;
import com.btl.code.model.Item;
import com.btl.code.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ShoppingCart", value = "/ShoppingCart")
public class ShoppingCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO p=new ProductDAO();
        ArrayList<Product> list=p.getAll();
        Cookie[] arr=request.getCookies();
        String txt="";
        if (arr!=null){
            for (Cookie o:arr){
                if(o.getName().equals("cart")){
                    txt+=o.getValue();
                }
            }
        }
        Cart cart=new Cart(txt,list);
        ArrayList<Item> items=cart.getItem();
        request.setAttribute("cart",cart);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO p=new ProductDAO();
        ArrayList<Product> list=p.getAll();
        Cookie[] arr=request.getCookies();
        String txt="";
        if (arr!=null){
            for (Cookie o:arr){
                if(o.getName().equals("cart")){
                    txt+=o.getValue();
                    response.addCookie(o);
                }
            }
        }
        String num=request.getParameter("num");
        String id=request.getParameter("id");
        if (txt.isEmpty()){
            txt=id+":"+num;
        }
        else {
            txt=txt+","+id+":"+num;
        }
        Cookie c=new Cookie("cart",txt);
        response.addCookie(c);
        Cart cart=new Cart(txt,list);
        request.getRequestDispatcher("cart.jsp").forward(request,response);


    }
}
