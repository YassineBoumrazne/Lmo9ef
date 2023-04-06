package com.example.lmo9ef.Model;

public class Seller extends User {
    private String jobTitle;
    private float price;
    private String experience;
    private String Ville;
    private String Pays;
    private String Description;

    private String WorkingTime;


    public Seller(int id, String name, String firstName, String sexe, String birthDay, String phoneNumber, String address, String email, String password, String jobTitle, float price, String experience, String Ville, String Pays, String Description, String ImagePath, String WorkingTime) {
        super(name, firstName, sexe, birthDay, phoneNumber, address, email, password, Pays, Ville,ImagePath);
        this.jobTitle = jobTitle;
        this.price = price;
        this.experience = experience;
        this.Ville        = Ville;
        this.Pays         = Pays;
        this.Description  = Description;
        this.WorkingTime  = WorkingTime;
    }

    public Seller(String name, String firstName, String sexe, String birthDay, String phoneNumber, String address, String email, String password, String jobTitle, float price, String experience, String Ville, String Pays, String Description) {
        super(name, firstName, sexe, birthDay, phoneNumber, address, email, password, Pays, Ville,"ImagePath");
        this.jobTitle = jobTitle;
        this.price = price;
        this.experience = experience;
        this.Ville        = Ville;
        this.Pays         = Pays;
        this.Description  = Description;
    }
    public Seller(){
        this(0,"LastName","","","","","","","","",100,"","","","","","");
    }

    public Seller(String nom, String prenom, String sexe, String dateDeNaissance, String numTelephone, String addresse, String email, String password, String pays, String ville, String jobTitle, int i, String exp) {
        this(0,nom,prenom,sexe,dateDeNaissance,numTelephone,addresse,email,password,jobTitle,i,exp,ville,pays,"","","");
    }


    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }


    public String getWorkingTime() {
        return WorkingTime;
    }

    public void setWorkingTime(String workingTime) {
        WorkingTime = workingTime;
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
