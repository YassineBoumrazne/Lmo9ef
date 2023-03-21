package com.example.lmo9ef.Repository;

import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Order;
import com.example.lmo9ef.Repository.connectivity.ConnectionClass;

import java.sql.*;
import java.time.LocalDateTime;

public class OrderRepository {
    public int commander(Order order){
        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        int i = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO `Order`(DateDeCommand, Prix, BuyerId, SellerId, Etat)VALUES (?,?,?,?,?)");
            preparedStatement.setTimestamp(1, Timestamp.valueOf(LocalDateTime.now()));
            preparedStatement.setFloat(2, order.getPrix());
            preparedStatement.setInt(3, order.getBuyerId());
            preparedStatement.setInt(4, order.getSellerId());
            preparedStatement.setString(5, order.getEtat().name());

            i = preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return i;
    }
}
