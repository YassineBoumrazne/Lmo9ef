package com.example.lmo9ef.Model;

public class Seller extends User {
    private String jobTitle;
    private float price;
    private int experience;

    public Seller(String lastName, String firstName, String sexe, String birthDay, String phoneNumber, String address, String email, String password, String pay, String city, String jobTitle, float price, int experience) {
        super(lastName, firstName, sexe, birthDay, phoneNumber, address, email, password, pay, city);
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

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }
}
