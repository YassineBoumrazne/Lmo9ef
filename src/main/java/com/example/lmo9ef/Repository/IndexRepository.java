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
                sellerDTO.setExperience(resultSet.getString("Experience"));
                sellerDTO.setAddress(resultSet.getString("Addresse"));
                sellerDTO.setFirstName(resultSet.getString("Prenom"));
                sellerDTO.setLastName(resultSet.getString("Nom"));
                sellerDTO.setPrice(resultSet.getFloat("Prix"));
                sellerDTO.setJobTitle(resultSet.getString("JobTitle"));
                listSeller.add(sellerDTO);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return  listSeller;
    }
}
