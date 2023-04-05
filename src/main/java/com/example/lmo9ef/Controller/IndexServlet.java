package com.example.lmo9ef.Controller;

import com.example.lmo9ef.Model.Categorie;
import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Repository.SellerRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "/Index", value = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SellerRepository sellerRepository = new SellerRepository();
        List<Categorie> Categories = sellerRepository.getCategories();

        request.setAttribute("Categories", Categories);

        String action = request.getServletPath();
        /*if(action.equals("/job-details")){
            int id = Integer.parseInt(request.getParameter("id"));
            SellerDTO sellerDTO = indexRepository.getSeller(id);
            request.setAttribute("seller", sellerDTO);
            RequestDispatcher dispatcher = request.getRequestDispatcher("job-details.jsp");
            dispatcher.forward(request, response);
        }
        else{*/
        List<SellerDTO> recentSellers = sellerRepository.recentSellers();
        List<SellerDTO> bestSellers = sellerRepository.bestSellers();
        request.setAttribute("recentSellers", recentSellers);
        request.setAttribute("bestSellers", bestSellers);
        request.setAttribute("Categories", Categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
        //}
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        SellerRepository sellerRepository = new SellerRepository();

        List<SellerDTO> listSeller = sellerRepository.recentSellers();
        request.setAttribute("listSeller", listSeller);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}
