package com.example.lmo9ef.Model;

import java.util.Date;

public class Seller extends User {
    private String jobTitle;
    private float price;
    private String experience;

    public Seller(int id, String name, String firstName, String sexe, String birthDay, String phoneNumber, String address, String email, String password, String jobTitle, float price, String experience) {
        super(name, firstName, sexe, birthDay, phoneNumber, address, email, password);
        this.jobTitle = jobTitle;
        this.price = price;
        this.experience = experience;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }
}
