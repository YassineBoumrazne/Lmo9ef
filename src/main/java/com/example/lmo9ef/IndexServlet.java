package com.example.lmo9ef;

import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Repository.IndexRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "/Index", value = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IndexRepository indexRepository = new IndexRepository();

        String action = request.getServletPath();
        /*if(action.equals("/job-details")){
            int id = Integer.parseInt(request.getParameter("id"));
            SellerDTO sellerDTO = indexRepository.getSeller(id);
            request.setAttribute("seller", sellerDTO);
            RequestDispatcher dispatcher = request.getRequestDispatcher("job-details.jsp");
            dispatcher.forward(request, response);
        }
        else{*/
            List<SellerDTO> recentSellers = indexRepository.recentSellers();
            List<SellerDTO> bestSellers = indexRepository.bestSellers();
            request.setAttribute("recentSellers", recentSellers);
            request.setAttribute("bestSellers", bestSellers);
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
        IndexRepository indexRepository = new IndexRepository();

        List<SellerDTO> listSeller = indexRepository.recentSellers();
        request.setAttribute("listSeller", listSeller);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}
