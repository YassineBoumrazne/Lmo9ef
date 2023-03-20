package com.example.lmo9ef.Repository;

import com.example.lmo9ef.Model.Categorie;
import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.connectivity.ConnectionClass;

import java.sql.*;
import java.util.ArrayList;

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
                logedInC.setPay(resultSet.getString("Pays"));
                logedInC.setCity(resultSet.getString("Ville"));
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

    public Seller updateS(Seller S){
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("UPDATE `seller` SET `Nom` = ?, `Prenom` = ?, `Sexe` = ?, `NumTelephone` = ?, `Addresse` = ?, `Email` = ?, `Password` = ?, `JobTitle` = ?, `Prix` = ?, `Experience` = ?, `Ville` = ?, `Pays` = ?, `Description` = ?, `ImagePath` = ?, `WorkingTime` = ?, `DateDeNaissance` = ? WHERE `seller`.`Id` = ?");

            preparedStatement.setString(1, S.getLastName());
            preparedStatement.setString(2, S.getFirstName());
            preparedStatement.setString(3, S.getSexe());
            preparedStatement.setString(4, S.getPhoneNumber());
            preparedStatement.setString(5, S.getAddress());
            preparedStatement.setString(6, S.getEmail());
            preparedStatement.setString(7, S.getPassword());
            preparedStatement.setString(8, S.getJobTitle());
            preparedStatement.setFloat(9, S.getPrice());
            preparedStatement.setString(10, S.getExperience());
            preparedStatement.setString(11, S.getCity());
            preparedStatement.setString(12, S.getPay());
            preparedStatement.setString(13, S.getVille());
            preparedStatement.setString(14, S.getImagePath());
            preparedStatement.setString(15, S.getWorkingTime());
            preparedStatement.setString(16, S.getBirthDay());
            preparedStatement.setInt(   17, S.getId());
            preparedStatement.executeUpdate();

            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return  S;
    }

    public Customer updateC(Customer C){
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        PreparedStatement preparedStatement;

        try {
            preparedStatement = connection.prepareStatement("UPDATE `Customer` SET `Nom` = ?, `Prenom` = ?, `Sexe` = ?, `NumTelephone` = ?, `Addresse` = ?, `Email` = ?, `Password` = ?, `Ville` = ?, `Pays` = ?, `ImagePath` = ?, `DateDeNaissance` = ? WHERE `Customer`.`Id` = ?");


            preparedStatement.setString(1, C.getLastName());
            preparedStatement.setString(2, C.getFirstName());
            preparedStatement.setString(3, C.getSexe());
            preparedStatement.setString(4, C.getPhoneNumber());
            preparedStatement.setString(5, C.getAddress());
            preparedStatement.setString(6, C.getEmail());
            preparedStatement.setString(7, C.getPassword());
            preparedStatement.setString(8,C.getCity());
            preparedStatement.setString(9,C.getPay());
            preparedStatement.setString(10,C.getImagePath());
            preparedStatement.setString(11,C.getBirthDay());
            preparedStatement.setInt(   12,C.getId());
            preparedStatement.executeUpdate();

            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }


        return  C;
    }

    public ArrayList<Categorie> getCategories(){
        ArrayList<Categorie> Categories = new ArrayList<Categorie>();
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        ResultSet rs;
        PreparedStatement preparedStatement;
        int i = 0;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM `Categorie`");

            rs = preparedStatement.executeQuery();
            while(rs.next()) {
                Categorie cat = new Categorie(rs.getString("Title"),rs.getInt("NumOfSellers"));
                Categories.add(cat);
            }
            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return Categories;
    }

    public ArrayList<String> getExperience(){
        ArrayList<String> Experience = new ArrayList<String>();
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        ResultSet rs;
        PreparedStatement preparedStatement;
        int i = 0;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM `Experience`");

            rs = preparedStatement.executeQuery();

            while(rs.next()) {
                Experience.add(rs.getString("Title"));
            }

            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return Experience;
    }

}
