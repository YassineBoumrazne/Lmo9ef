package com.example.lmo9ef.Repository;

import com.example.lmo9ef.Model.Evaluation;
import com.example.lmo9ef.Repository.connectivity.ConnectionClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EvaluationRepository {
    public List<Evaluation> retreiveData(int idSeller) {
        ConnectionClass connectionClass = new ConnectionClass();
        try (Connection connection = connectionClass.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT e.Id, e.Commentaire, e.Notation, e.BuyerId, c.Nom, c.Prenom,c.Ville,c.Pays,c.ImagePath, e.DateDeCreation FROM Evaluation e JOIN Customer c ON e.BuyerId = c.Id WHERE e.SellerId = ?");
        ) {
            preparedStatement.setInt(1, idSeller); // Set the parameter value
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Evaluation> listEvaluation = new ArrayList<>();
            while (resultSet.next()) {
                Evaluation evaluation = new Evaluation();
                evaluation.setId(resultSet.getInt("Id"));
                evaluation.setCommentaire(resultSet.getString("Commentaire"));
                evaluation.setNotation(resultSet.getInt("Notation"));
                evaluation.setBuyerId(resultSet.getInt("BuyerId"));
                evaluation.setBuyerName(resultSet.getString("Nom") + " " + resultSet.getString("Prenom"));
                evaluation.setBuyerVillePays(resultSet.getString("Ville") + ", " + resultSet.getString("Pays"));
                evaluation.setBuyerPic(resultSet.getString("ImagePath"));
                evaluation.setDate(resultSet.getDate("DateDeCreation"));
                listEvaluation.add(evaluation);
            }
            return listEvaluation;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return new ArrayList<>();
    }

    public int evaluationPost(Evaluation evaluation) {
        ConnectionClass connectionClass = new ConnectionClass();
        try (Connection connection = connectionClass.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Evaluation(Notation, Commentaire, BuyerId, SellerId) VALUES (?,?,?,?)")) {
            preparedStatement.setInt(1, evaluation.getNotation());
            preparedStatement.setString(2, evaluation.getCommentaire());
            preparedStatement.setInt(3, evaluation.getBuyerId());
            preparedStatement.setInt(4, evaluation.getSellerId());
            return preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return 0;
    }
}
