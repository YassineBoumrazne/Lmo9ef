package com.example.lmo9ef.Repository;

import com.example.lmo9ef.Model.Categorie;
import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.connectivity.ConnectionClass;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
            preparedStatement.setString(4,   customer.getBirthDay());
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
            preparedStatement.setString(4,  seller.getBirthDay());
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

    public Object login(String email, String password) {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        ResultSet resultSet;
        PreparedStatement preparedStatement;
        Object loggedInUser = null;
        int i = 0;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM Customer WHERE email = ? and password = ?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                i = 1;
                Customer logedInC = new Customer();
                logedInC.setId(resultSet.getInt("Id"));
                logedInC.setFirstName(resultSet.getString("Prenom"));
                logedInC.setLastName(resultSet.getString("Nom"));
                logedInC.setSexe(resultSet.getString("Sexe"));
                logedInC.setBirthDay(resultSet.getString("DateDeNaissance"));
                logedInC.setPhoneNumber(resultSet.getString("NumTelephone"));
                logedInC.setAddress(resultSet.getString("Addresse"));
                logedInC.setEmail(resultSet.getString("Email"));
                logedInC.setPassword(resultSet.getString("Password"));
                logedInC.setVille(resultSet.getString("Pays"));
                logedInC.setPays(resultSet.getString("Ville"));
                loggedInUser = logedInC;
            } else {
                preparedStatement = connection.prepareStatement("SELECT * FROM seller WHERE email = ? and password = ?");
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    i = 2;
                    Seller logedInS = new Seller();

                    logedInS.setId(resultSet.getInt("Id"));
                    logedInS.setFirstName(resultSet.getString("Prenom"));
                    logedInS.setLastName(resultSet.getString("Nom"));
                    logedInS.setSexe(resultSet.getString("Sexe"));
                    logedInS.setBirthDay(resultSet.getString("DateDeNaissance"));
                    logedInS.setPhoneNumber(resultSet.getString("NumTelephone"));
                    logedInS.setAddress(resultSet.getString("Addresse"));
                    logedInS.setEmail(resultSet.getString("Email"));
                    logedInS.setPassword(resultSet.getString("Password"));
                    logedInS.setJobTitle(resultSet.getString("JobTitle"));
                    logedInS.setPrice(resultSet.getInt("Prix"));
                    logedInS.setJobTitle(resultSet.getString("JobTitle"));
                    logedInS.setExperience(resultSet.getString("Experience"));
                    logedInS.setVille(resultSet.getString("Ville"));
                    logedInS.setPays(resultSet.getString("Pays"));
                    logedInS.setDescription(resultSet.getString("Description"));
                    logedInS.setImagePath(resultSet.getString("ImagePath"));
                    logedInS.setWorkingTime(resultSet.getString("WorkingTime"));

                    loggedInUser = logedInS;
                } else {
                    loggedInUser = null;
                }
            }

            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return loggedInUser;
    }


}
