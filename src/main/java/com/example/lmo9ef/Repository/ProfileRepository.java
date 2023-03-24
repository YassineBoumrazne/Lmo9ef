package com.example.lmo9ef.Repository;

import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.connectivity.ConnectionClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProfileRepository {

    public Seller UpdateSeller(Seller S){
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
            preparedStatement.setString(11, S.getVille());
            preparedStatement.setString(12, S.getPays());
            preparedStatement.setString(13, S.getDescription());
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

    public Customer UpdateCustomer(Customer C){
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
            preparedStatement.setString(8,C.getVille());
            preparedStatement.setString(9,C.getPays());
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
}
