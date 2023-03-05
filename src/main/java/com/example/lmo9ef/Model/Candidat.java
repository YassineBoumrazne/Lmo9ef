package com.example.lmo9ef.Model;

import java.util.Date;

public class Candidat extends User{

    public Candidat(int id, String name, String firstName, String sexe, Date birthDay, String phoneNumber, String address, String email, String password) {
        super(id, name, firstName, sexe, birthDay, phoneNumber, address, email, password);
    }
}
