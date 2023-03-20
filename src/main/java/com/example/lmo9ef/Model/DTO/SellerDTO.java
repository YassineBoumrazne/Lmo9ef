package com.example.lmo9ef.Model.DTO;

public class SellerDTO {

    private int id;
    private String lastName;
    private String firstName;
    private String jobTitle;
    private float price;
    private String experience;
    private String address;
    private String pays;
    private String ville;
    private String description;
    private String sexe;
    private String birthDay;
    private String email;
    private String numTelephone;
    private String workingTime;
    private String ImagePath;

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

    public SellerDTO(int id, String ImagePath, String lastName, String firstName, String jobTitle, float price, String experience, String address, String pays, String ville, String description, String sexe, String birthDay, String email, String numTelephone, String workingTime) {
        this.id = id;
        this.lastName = lastName;
        this.firstName = firstName;
        this.jobTitle = jobTitle;
        this.price = price;
        this.experience = experience;
        this.address = address;
        this.pays = pays;
        this.ville = ville;
        this.description = description;
        this.sexe = sexe;
        this.birthDay = birthDay;
        this.email = email;
        this.numTelephone = numTelephone;
        this.workingTime = workingTime;
        this.ImagePath = ImagePath;
    }

    public String getImagePath() {
        return ImagePath;
    }

    public void setImagePath(String imagePath) {
        ImagePath = imagePath;
    }

    public String getWorkingTime() {
        return workingTime;
    }

    public void setWorkingTime(String workingTime) {
        this.workingTime = workingTime;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumTelephone() {
        return numTelephone;
    }

    public void setNumTelephone(String numTelephone) {
        this.numTelephone = numTelephone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPays() {
        return pays;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
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
