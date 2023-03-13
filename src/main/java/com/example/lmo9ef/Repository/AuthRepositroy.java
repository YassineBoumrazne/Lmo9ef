package com.example.lmo9ef.Repository;

import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.connectivity.ConnectionClass;

import java.sql.*;

public class AuthRepositroy {


    public int customerRegister(Customer customer){
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        int i = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Customer(Nom, Prenom, Sexe, DateDeNaissance, NumTelephone, Addresse, Email, Password) VALUES (?,?,?,?,?,?,?,?)");
            preparedStatement.setString(1, customer.getLastName());
            preparedStatement.setString(2, customer.getFirstName());
            preparedStatement.setString(3, customer.getSexe());
            preparedStatement.setString(4, customer.getBirthDay());
            preparedStatement.setString(5, customer.getPhoneNumber());
            preparedStatement.setString(6, customer.getAddress());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getPassword());

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
            preparedStatement.setInt(11, seller.getExperience());

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
            preparedStatement = connection.prepareStatement("SELECT * FROM Customer WHERE email = ? and password = ?");
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
