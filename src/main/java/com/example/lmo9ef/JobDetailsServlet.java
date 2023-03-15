package com.example.lmo9ef;

import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Repository.IndexRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "JobDetailsServlet", value = "/JobDetails")
public class JobDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            IndexRepository indexRepository = new IndexRepository();
            int id = Integer.parseInt(request.getParameter("id"));
            SellerDTO sellerDTO = indexRepository.getSeller(id);
            request.setAttribute("seller", sellerDTO);
            RequestDispatcher dispatcher = request.getRequestDispatcher("job-details.jsp");
            dispatcher.forward(request, response);
        }
        catch(Exception ex){

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
