package com.example.lmo9ef.Model.DTO;

public class SellerDTO {

    private String lastName;
    private String firstName;
    private String jobTitle;
    private float price;
    private String experience;
    private String address;

    public SellerDTO() {
    }

    @Override
    public String toString() {
        return "SellerDTO{" +
                "lastName='" + lastName + '\'' +
                ", firstName='" + firstName + '\'' +
                ", jobTitle='" + jobTitle + '\'' +
                ", price=" + price +
                ", experience='" + experience + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public SellerDTO(String lastName, String firstName, String jobTitle, float price, String experience, String address) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.jobTitle = jobTitle;
        this.price = price;
        this.experience = experience;
        this.address = address;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
