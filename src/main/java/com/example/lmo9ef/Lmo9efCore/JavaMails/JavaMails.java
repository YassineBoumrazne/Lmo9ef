package com.example.lmo9ef.Lmo9efCore.JavaMails;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class JavaMails {

    public void sendEmailNotifation(String customerFullName, String sellerEmail, String description, String tempRendezVous, String sellerFullName){

        String username = "lmo9ef@gmail.com";
        String password = "qvfhcfherclykaio";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        session.getProperties().put("mail.smtp.starttls.enable", "true");

        session.getProperties().put("mail.smtp.ssl.trust", "smtp.gmail.com");
        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("lmo9ef@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(sellerEmail));
            message.setSubject("New Order Received");
            message.setText("Dear "+ sellerFullName +",\n" +
                    "\n" +
                    "I hope this email finds you well. I am writing to inform you that you have received a new order from "+ customerFullName +", and they have provided the following description of their requirements: "+ description +".\n" +
                    "\n" +
                    "The customer has also provided a preferred date and time for the appointment through our scheduling platform, "+ tempRendezVous +".\n" +
                    "\n" +
                    "Best regards,\n" +
                    "El Moukef");

            // Send the email
            Transport.send(message);


        }catch (Exception e){
            System.out.println(e.getMessage());

        }
    }

}
