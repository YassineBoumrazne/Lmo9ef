package com.example.lmo9ef;

import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Repository.IndexRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "IndexServlet", value = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType( "text/html" );
        IndexRepository indexRepository = new IndexRepository();

        List<SellerDTO> listSeller = indexRepository.retreiveData();
        PrintWriter out = response.getWriter();
        out.println(listSeller);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
