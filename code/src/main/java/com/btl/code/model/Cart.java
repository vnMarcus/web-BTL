package com.btl.code.model;

import java.util.*;

public class Cart {
    private Map<Item,Integer> item;
    private double total;
    private double shipping;
    private double cartSubTotal;


    public Cart() {
        this.item = new HashMap<>();
        this.total=0;
        this.cartSubTotal=0;
        this.shipping=0;
    }
    public void addToCart(Item i){
        if (item.containsKey(i)){
            item.put(i,item.get(i)+1);
        }
        else item.put(i,1);
    }
    public void removeFromCart(Item i){
        item.remove(i);
    }
    public void updateQuantity(Item i, int quantity){
        if (quantity>0){
            item.put(i,quantity);
        }
        else {
            removeFromCart(i);
        }
    }

    public double getTotal() {
        this.total=cartSubTotal+shipping;
        return this.total;
    }

    public double getShipping() {
        return shipping;
    }

    public void setShipping(double shipping) {
        this.shipping = shipping;
    }

    public double getCartSubTotal() {
        this.cartSubTotal=0;
        for (Map.Entry<Item,Integer> entry : item.entrySet()){
            this.cartSubTotal=this.cartSubTotal+ entry.getValue().getPrice()*entry.getKey();
        }
        return this.cartSubTotal;
    }
}
