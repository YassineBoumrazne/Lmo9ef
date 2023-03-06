package com.example.lmo9ef.Repository;

import com.example.lmo9ef.Model.Client;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.connectivity.ConnectionClass;

import java.sql.*;

public class AuthRepositroy {


    public int clientRegister(Client client){
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        int i = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO client(Nom, Prenom, Sexe, DateDeNaissance, NumTelephone, Addresse, Email, Password) VALUES (?,?,?,?,?,?,?,?)");
            preparedStatement.setString(1, client.getLastName());
            preparedStatement.setString(2, client.getFirstName());
            preparedStatement.setString(3, client.getSexe());
            preparedStatement.setString(4, client.getBirthDay());
            preparedStatement.setString(5, client.getPhoneNumber());
            preparedStatement.setString(6, client.getAddress());
            preparedStatement.setString(7, client.getEmail());
            preparedStatement.setString(8, client.getPassword());

            i = preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return i;
    }

    public int sellerRegister(Seller seller) {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        int i = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO seller(Nom, Prenom, Sexe, DateDeNaissance, NumTelephone, Addresse, Email, Password, JobTitle, Prix, Experience) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
            preparedStatement.setString(1, seller.getLastName());
            preparedStatement.setString(2, seller.getFirstName());
            preparedStatement.setString(3, seller.getSexe());
            preparedStatement.setString(4, seller.getBirthDay());
            preparedStatement.setString(5, seller.getPhoneNumber());
            preparedStatement.setString(6, seller.getAddress());
            preparedStatement.setString(7, seller.getEmail());
            preparedStatement.setString(8, seller.getPassword());
            preparedStatement.setString(9, seller.getJobTitle());
            preparedStatement.setFloat(10, seller.getPrice());
            preparedStatement.setString(11, seller.getExperience());

            i = preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return i;
    }

    public int login(String email, String password) {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        ResultSet resultSet;
        PreparedStatement preparedStatement;
        int i = 0;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM client WHERE email = ? and password = ?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                i = 1;
            } else {
                preparedStatement = connection.prepareStatement("SELECT * FROM seller WHERE email = ? and password = ?");
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    i = 2;
                } else {
                    i = 3;
                }
            }

            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return i;
    }

}
