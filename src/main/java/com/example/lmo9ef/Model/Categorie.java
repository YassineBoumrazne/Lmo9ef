package com.example.lmo9ef.Model;

public class Categorie {

    public Categorie(String title, int numOfSellers) {
        Title = title;
        NumOfSellers = numOfSellers;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public int getNumOfSellers() {
        return NumOfSellers;
    }

    public void setNumOfSellers(int numOfSellers) {
        NumOfSellers = numOfSellers;
    }

    String Title;
    int NumOfSellers;
}
