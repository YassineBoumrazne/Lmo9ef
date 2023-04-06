package com.example.lmo9ef.Controller;

import com.example.lmo9ef.Lmo9efCore.JavaMails.JavaMails;
import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Model.Enum.Etat;
import com.example.lmo9ef.Model.Order;
import com.example.lmo9ef.Model.User;
import com.example.lmo9ef.Repository.OrderRepository;
import com.example.lmo9ef.Repository.SellerRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "CommandeServlet", value = "/Commande")
public class CommandeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("commandeDetails.jsp");
        int sellerId = Integer.parseInt(request.getParameter("sellerId"));
        request.setAttribute("sellerId", sellerId);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            OrderRepository orderRepository = new OrderRepository();
            SellerRepository sellerRepository = new SellerRepository();
            JavaMails javaMails = new JavaMails();

            int sellerId = Integer.parseInt(request.getParameter("sellerId"));
            String Description = request.getParameter("description");
            String tempRendezVous = request.getParameter("tempRendezVoua");
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
            order.setDescription(Description);
            order.setDateDeDebut(tempRendezVous);

            orderRepository.commander(order);
            javaMails.sendEmailNotifation(logedInUser.getFirstName()+" "+logedInUser.getLastName(), seller.getEmail(), Description, tempRendezVous, seller.getFirstName()+" "+seller.getLastName());
            response.sendRedirect("index");
        }
        catch(Exception ex){

        }
    }
}
