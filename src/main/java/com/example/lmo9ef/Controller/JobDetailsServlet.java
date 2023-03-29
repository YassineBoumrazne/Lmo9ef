package com.example.lmo9ef.Controller;

import com.example.lmo9ef.Lmo9efCore.JavaMails.JavaMails;
import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Model.Enum.Etat;
import com.example.lmo9ef.Model.Evaluation;
import com.example.lmo9ef.Model.Order;
import com.example.lmo9ef.Model.User;
import com.example.lmo9ef.Repository.EvaluationRepository;
import com.example.lmo9ef.Repository.SellerRepository;
import com.example.lmo9ef.Repository.OrderRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


import java.io.IOException;
import java.util.List;

@WebServlet(name = "JobDetailsServlet", value = "/JobDetails")
public class JobDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            User logedInUser = (User) request.getSession().getAttribute("loggedInUser");
            if(logedInUser == null){
                response.sendRedirect("signin.jsp");
                return;
            }
            SellerRepository sellerRepository = new SellerRepository();
            int id = Integer.parseInt(request.getParameter("id"));
            SellerDTO sellerDTO = sellerRepository.getSeller(id);
            request.setAttribute("seller", sellerDTO);

            EvaluationRepository evaluationRepository = new EvaluationRepository();
            List<Evaluation> evaluations = evaluationRepository.retreiveData(id);
            request.setAttribute("evaluations", evaluations);

            RequestDispatcher dispatcher = request.getRequestDispatcher("job-details.jsp");
            dispatcher.forward(request, response);



        }
        catch(Exception ex){

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //test
        try{
            OrderRepository orderRepository = new OrderRepository();
            SellerRepository sellerRepository = new SellerRepository();
            JavaMails javaMails = new JavaMails();

            int sellerId = Integer.parseInt(request.getParameter("sellerId"));
            User logedInUser = (User) request.getSession().getAttribute("loggedInUser");
            if(logedInUser == null){
                response.sendRedirect("signin.jsp");
                return;
            }
            SellerDTO seller = sellerRepository.getSeller(sellerId);

            Order order = new Order();
            order.setPrix(seller.getPrice());
            order.setBuyerId((logedInUser).getId());
            order.setEtat(Etat.en_attente);
            order.setSellerId(sellerId);

            orderRepository.commander(order);
            javaMails.sendEmailNotifation(logedInUser.getFirstName(), logedInUser.getLastName(), seller.getEmail());
            response.sendRedirect("index");
        }
        catch(Exception ex){

        }
    }
}
