package com.example.lmo9ef.Controller;

import com.example.lmo9ef.Model.Categorie;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.AuthRepositroy;
import com.example.lmo9ef.Repository.SellerRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

@WebServlet(name = "sellerRegistreServlet", value = "/sellerRegister")
public class SellerRegistreServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SellerRepository sellerRepository = new SellerRepository();

        List<Categorie> Categories = sellerRepository.getCategories();

        request.setAttribute("Categories", Categories);

        RequestDispatcher view = request.getRequestDispatcher("signup.jsp");
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        AuthRepositroy authRepositroy = new AuthRepositroy();

        Seller seller = new Seller(request.getParameter("Nom"), request.getParameter("Prenom"), request.getParameter("Sexe"), request.getParameter("DateDeNaissance"), request.getParameter("NumTelephone"), request.getParameter("Addresse"), request.getParameter("Email"), request.getParameter("Password"), request.getParameter("category"), Float. valueOf(request.getParameter("price")), request.getParameter("Experience"), request.getParameter("Ville"), request.getParameter("Pays"), request.getParameter("description"));
        PrintWriter out = response.getWriter();

        try {
            int i = authRepositroy.sellerRegister(seller);
            if(i == 1){
                response.sendRedirect("Profile");
                out.println("Working...");
                out.println("Registred  Successfuly...");
            }else{
                out.println("problem de registration...");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
