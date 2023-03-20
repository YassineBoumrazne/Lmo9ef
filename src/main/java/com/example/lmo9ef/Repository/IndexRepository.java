package com.example.lmo9ef.Repository;

import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Repository.connectivity.ConnectionClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IndexRepository {

    public List<SellerDTO> retreiveData() {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement;
        List<SellerDTO> listSeller = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM seller");

            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                SellerDTO sellerDTO = new SellerDTO();
                sellerDTO.setId(resultSet.getInt("Id"));
                sellerDTO.setExperience(resultSet.getString("Experience"));
                sellerDTO.setAddress(resultSet.getString("Addresse"));
                sellerDTO.setFirstName(resultSet.getString("Prenom"));
                sellerDTO.setLastName(resultSet.getString("Nom"));
                sellerDTO.setPrice(resultSet.getFloat("Prix"));
                sellerDTO.setJobTitle(resultSet.getString("JobTitle"));
                sellerDTO.setVille(resultSet.getString("Ville"));
                sellerDTO.setPays(resultSet.getString("Pays"));
                listSeller.add(sellerDTO);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return  listSeller;
    }

    public List<SellerDTO> recentSellers() {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement;
        List<SellerDTO> listSeller = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM seller order by DateDeCreation DESC limit 6");

            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                SellerDTO sellerDTO = new SellerDTO();
                sellerDTO.setId(resultSet.getInt("Id"));
                sellerDTO.setExperience(resultSet.getString("Experience"));
                sellerDTO.setAddress(resultSet.getString("Addresse"));
                sellerDTO.setFirstName(resultSet.getString("Prenom"));
                sellerDTO.setLastName(resultSet.getString("Nom"));
                sellerDTO.setPrice(resultSet.getFloat("Prix"));
                sellerDTO.setJobTitle(resultSet.getString("JobTitle"));
                sellerDTO.setVille(resultSet.getString("Ville"));
                sellerDTO.setPays(resultSet.getString("Pays"));
                sellerDTO.setDescription(resultSet.getString("Description"));
                sellerDTO.setImagePath(resultSet.getString("ImagePath"));
                listSeller.add(sellerDTO);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return  listSeller;
    }

    public List<SellerDTO> bestSellers() {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement;
        List<SellerDTO> listSeller = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM seller ORDER BY RAND() limit 4");

            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                SellerDTO sellerDTO = new SellerDTO();
                sellerDTO.setId(resultSet.getInt("Id"));
                sellerDTO.setExperience(resultSet.getString("Experience"));
                sellerDTO.setAddress(resultSet.getString("Addresse"));
                sellerDTO.setFirstName(resultSet.getString("Prenom"));
                sellerDTO.setLastName(resultSet.getString("Nom"));
                sellerDTO.setPrice(resultSet.getFloat("Prix"));
                sellerDTO.setJobTitle(resultSet.getString("JobTitle"));
                sellerDTO.setVille(resultSet.getString("Ville"));
                sellerDTO.setPays(resultSet.getString("Pays"));
                sellerDTO.setDescription(resultSet.getString("Description"));
                sellerDTO.setImagePath(resultSet.getString("ImagePath"));
                listSeller.add(sellerDTO);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return  listSeller;
    }
    public SellerDTO getSeller(int idSeller) {
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement;
        SellerDTO sellerDTO = new SellerDTO();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM seller where Id = ?");
            preparedStatement.setInt(1, idSeller);

            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                sellerDTO.setId(resultSet.getInt("Id"));
                sellerDTO.setExperience(resultSet.getString("Experience"));
                sellerDTO.setAddress(resultSet.getString("Addresse"));
                sellerDTO.setFirstName(resultSet.getString("Prenom"));
                sellerDTO.setLastName(resultSet.getString("Nom"));
                sellerDTO.setPrice(resultSet.getFloat("Prix"));
                sellerDTO.setJobTitle(resultSet.getString("JobTitle"));
                sellerDTO.setVille(resultSet.getString("Ville"));
                sellerDTO.setPays(resultSet.getString("Pays"));
                sellerDTO.setDescription(resultSet.getString("Description"));
                sellerDTO.setSexe(resultSet.getString("Sexe"));
                sellerDTO.setBirthDay(resultSet.getString("DateDeNaissance"));
                sellerDTO.setNumTelephone(resultSet.getString("NumTelephone"));
                sellerDTO.setEmail(resultSet.getString("Email"));
                sellerDTO.setWorkingTime(resultSet.getString("WorkingTime"));
                sellerDTO.setImagePath(resultSet.getString("ImagePath"));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return  sellerDTO;
    }
}
