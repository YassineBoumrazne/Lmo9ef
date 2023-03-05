package com.example.lmo9ef.Model;

import java.util.Date;

public class Order {
    private int id;
    private Date createdDate;
    private boolean isCompleted;
    private float price;
    private Date duration;
    private String description;

    public Order(int id, Date createdDate, boolean isCompleted, float price, Date duration, String description) {
        this.id = id;
        this.createdDate = createdDate;
        this.isCompleted = isCompleted;
        this.price = price;
        this.duration = duration;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public boolean isCompleted() {
        return isCompleted;
    }

    public void setCompleted(boolean completed) {
        isCompleted = completed;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Date getDuration() {
        return duration;
    }

    public void setDuration(Date duration) {
        this.duration = duration;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
