package com.example.lmo9ef.Controller;

import com.example.lmo9ef.Model.Categorie;
import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Repository.SellerRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BlogServlet", value = "/BlogServlet")
public class BlogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        SellerRepository sellerRepository = new SellerRepository();
        List<Categorie> Categories = sellerRepository.getCategories();
        List<SellerDTO> sellers = sellerRepository.SellersSearch(request.getParameter("category"), request.getParameter("city"));
        request.setAttribute("sellers", sellers);
        request.setAttribute("Categories", Categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher("blog.jsp");
        dispatcher.include(request, response);
    }


}
