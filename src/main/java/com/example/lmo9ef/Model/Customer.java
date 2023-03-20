package com.example.lmo9ef.Model;

import java.util.Date;

public class Customer extends User{

    public Customer(String lastName, String firstName, String sexe, String birthDay, String phoneNumber, String address, String email, String password, String pay, String city,String ImagePath) {
        super(lastName, firstName, sexe, birthDay, phoneNumber, address, email, password, pay, city,ImagePath);
    }

    public Customer(){
        this("", "", "", "", "", "", "", "", "", "","");
    }
}
