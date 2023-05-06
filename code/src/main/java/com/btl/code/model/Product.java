package com.btl.code.model;

public class Product {
    private int id;
    private String name;
    private double price;
    private String image;
    private String desc;

    public Product(int id, String name, double price, String image, String desc) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.image = image;
        this.desc = desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
