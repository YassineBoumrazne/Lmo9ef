package com.example.lmo9ef;

import com.example.lmo9ef.Model.Categorie;
import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.IndexRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProfileServlet", value = "/Profile")
public class ProfileServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
                HttpSession session = request.getSession(false);
                if (session != null && session.getAttribute("loggedInUser") != null) {
                        System.out.println("inProfileServlet");
                        IndexRepository indexRepository = new IndexRepository();

                        List<Categorie> Categories = indexRepository.getCategories();

                        List<String> Experiences = indexRepository.getExperience();

                        request.setAttribute("Categories", Categories);
                        request.setAttribute("Experiences", Experiences);


                        Object logedInUser = session.getAttribute("loggedInUser");
                        if (logedInUser instanceof Seller){
                                System.out.println("seller");
                                Seller logedInS = (Seller) logedInUser;
                                request.setAttribute("user", logedInS);
                                System.out.println(logedInS.getPassword() + " password");
                                RequestDispatcher dispatcher = request.getRequestDispatcher("profileSeller.jsp");
                                dispatcher.forward(request, response);
                        }else{
                                System.out.println(" Customer");
                                Customer logedInC = (Customer) logedInUser;
                                request.setAttribute("user", logedInC);
                                System.out.println(logedInC.getEmail() + " email");
                                RequestDispatcher dispatcher = request.getRequestDispatcher("profileCustomer.jsp");
                                dispatcher.forward(request, response);
                        }
                } else {
                        response.sendRedirect("signin.jsp");
                }






        }
        catch(Exception ex){

        }
        }
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }
        }
