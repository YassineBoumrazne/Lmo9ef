package com.example.lmo9ef;

import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Repository.IndexRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "/Index", value = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IndexRepository indexRepository = new IndexRepository();

        List<SellerDTO> recentSellers = indexRepository.recentSellers();
        List<SellerDTO> bestSellers = indexRepository.bestSellers();
        request.setAttribute("recentSellers", recentSellers);
        request.setAttribute("bestSellers", bestSellers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

}
