package com.btl.code.model;

import java.util.*;

public class Cart {
    private ArrayList<Item> item;
    private double shipping=0;


    public Cart() {
        this.item = new ArrayList<>();
    }
    public Cart(String txt,ArrayList<Product> list){
        this.item=new ArrayList<>();
        try{
            if(txt!=null && txt.length()!=0){
                String[] a=txt.split(",");
                for (String i:a){
                    String[] n=i.split(":");
                    int id=Integer.parseInt(n[0]);
                    int quantity=Integer.parseInt(n[1]);
                    Product p=getProductByID(id,list);
                    Item t=new Item(p,quantity);
                    item.add(t);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public ArrayList<Item> getItem() {
        return item;
    }
    public Item getItemById(int id){
        for (Item i:item){
            if (i.getProduct().getId()==id)
                return i;
        }
        return null;
    }
    public int getQuantityById(int id){
        return getItemById(id).getQuantity();
    }
    public void addItem(Item i){
        if (getItemById(i.getProduct().getId())!=null){
            Item x=getItemById(i.getProduct().getId());
            x.setQuantity(x.getQuantity()+i.getQuantity());
        }
        else {
            item.add(i);
        }
    }
    public void removeItem(int i){
        if (getItemById(i)!=null)
            item.remove(getItemById(i));
    }

    public double getTotal() {
        return shipping+getCartSubTotal();
    }

    public double getShipping() {
        return shipping;
    }
    public void setShipping(double shipping) {
        this.shipping = shipping;
    }
    public double getCartSubTotal() {
        double temp=0;
        for (Item i:item)
            temp+=i.getSubTotal();
        return temp;
    }
    private Product getProductByID(int id,ArrayList<Product> list){
        for (Product i:list){
            if (i.getId()==id)
                return i;
        }
        return null;
    }
}
