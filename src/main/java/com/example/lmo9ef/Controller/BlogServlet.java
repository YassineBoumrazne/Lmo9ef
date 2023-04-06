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
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BlogServlet", value = "/BlogServlet")
public class BlogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SellerRepository sellerRepository = new SellerRepository();
        HttpSession session = request.getSession();

        int page = 1;
        int recordsPerPage = 4;

        if (request.getParameter("page") != null)
            page = Integer.parseInt(request.getParameter("page"));

        List<SellerDTO> sellers = sellerRepository.SellersSearch((String) request.getParameter("category") ,(String) request.getParameter("city"), (page - 1) * recordsPerPage, recordsPerPage);
        List<Categorie> Categories = sellerRepository.getCategories();
        List<String> cities = new ArrayList<>();
        cities.add("Agadir");
        cities.add("Safi");
        cities.add("Taroudant");
        cities.add("Casablanca");
        cities.add("Rabat");

        int numberOfRecords = sellerRepository.getNoOfRecords();
        int numberOfPages = (int)Math.ceil(numberOfRecords * 1.0 / recordsPerPage);

        request.setAttribute("sellers", sellers);
        request.setAttribute("noOfPages", numberOfPages);
        request.setAttribute("currentPage", page);
        request.setAttribute("Categories", Categories);
        request.setAttribute("cities", cities);

        RequestDispatcher view = request.getRequestDispatcher("blog.jsp");
        view.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*doGet(request, response);

        SellerRepository sellerRepository = new SellerRepository();
        HttpSession session = request.getSession(true);

        String category = request.getParameter("category");
        String city = request.getParameter("city");

        List<Categorie> Categories = sellerRepository.getCategories();
        List<SellerDTO> sellers = sellerRepository.SellersSearch(category, city, 1, 3);
        int numberOfRecords = sellerRepository.getNoOfRecords();
        int numberOfPages = (int)Math.ceil(numberOfRecords * 1.0 / 3);

        session.setAttribute("category", category);
        session.setAttribute("city", city);

        request.setAttribute("sellers", sellers);
        request.setAttribute("Categories", Categories);
        request.setAttribute("noOfPages", numberOfPages);
        request.setAttribute("currentPage", 1);

        RequestDispatcher dispatcher = request.getRequestDispatcher("blog.jsp");
        dispatcher.include(request, response);*/
    }

}
