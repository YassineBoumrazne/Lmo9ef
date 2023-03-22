package com.example.lmo9ef.Model;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

public class Evaluation {
    private int id;
    private int notation;
    private String commentaire;
    private String buyerName;
    private String buyerVillePays;
    private String buyerPic;
    private Date date;
    private int buyerId;
    private int sellerId;

    public Evaluation(int notation, String commentaire, int buyerId, int sellerId) {
        this.notation = notation;
        this.commentaire = commentaire;
        this.buyerId = buyerId;
        this.sellerId = sellerId;
    }

    public Evaluation() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNotation() {
        return notation;
    }

    public void setNotation(int notation) {
        this.notation = notation;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public String getBuyerName() {
        return buyerName;
    }

    public void setBuyerName(String buyerName) {
        this.buyerName = buyerName;
    }

    public String getBuyerVillePays() {
        return buyerVillePays;
    }

    public void setBuyerVillePays(String buyerVillePays) {
        this.buyerVillePays = buyerVillePays;
    }

    public String getBuyerPic() {
        return buyerPic;
    }

    public void setBuyerPic(String buyerPic) {
        this.buyerPic = buyerPic;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

    public String getTimeAgo() {
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime creationTime = LocalDateTime.ofInstant(this.date.toInstant(), ZoneId.systemDefault());
        Duration duration = Duration.between(creationTime, now);

        if (duration.toMinutes() < 60) {
            return String.format("%d minutes ago", duration.toMinutes());
        } else if (duration.toHours() < 24) {
            return String.format("%d hours ago", duration.toHours());
        } else {
            return String.format("%d days ago", duration.toDays());
        }
    }
}
