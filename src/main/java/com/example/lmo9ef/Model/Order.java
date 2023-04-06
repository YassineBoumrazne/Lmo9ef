package com.example.lmo9ef.Model;

import com.example.lmo9ef.Model.Enum.Etat;

import java.util.Date;

public class Order {
    private int id;
    private Date dateDeCommand;
    private float prix;
    private Date deleveryDate;
    private String dateDeDebut;
    private Date dateDeFin;
    private String description;
    private Etat etat;
    private int buyerId;
    private int sellerId;


    public int getId() {
        return id;
    }

    public Date getDateDeCommand() {
        return dateDeCommand;
    }

    public void setDateDeCommand(Date dateDeCommand) {
        this.dateDeCommand = dateDeCommand;
    }

    public float getPrix() {
        return prix;
    }

    public void setPrix(float prix) {
        this.prix = prix;
    }

    public Date getDeleveryDate() {
        return deleveryDate;
    }

    public void setDeleveryDate(Date deleveryDate) {
        this.deleveryDate = deleveryDate;
    }

    public String getDateDeDebut() {
        return dateDeDebut;
    }

    public void setDateDeDebut(String dateDeDebut) {
        this.dateDeDebut = dateDeDebut;
    }

    public Date getDateDeFin() {
        return dateDeFin;
    }

    public void setDateDeFin(Date dateDeFin) {
        this.dateDeFin = dateDeFin;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Etat getEtat() {
        return etat;
    }

    public void setEtat(Etat etat) {
        this.etat = etat;
    }

    public int getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(int buyerId) {
        this.buyerId = buyerId;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }
}
