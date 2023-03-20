package com.example.lmo9ef;

import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.AuthRepositroy;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet(name = "sellerRegistreServlet", value = "/sellerRegister")
public class SellerRegistreServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        AuthRepositroy authRepositroy = new AuthRepositroy();

        Seller seller = new Seller(request.getParameter("Nom"), request.getParameter("Prenom"), request.getParameter("Sexe"), request.getParameter("DateDeNaissance"), request.getParameter("NumTelephone"), request.getParameter("Addresse"), request.getParameter("Email"), request.getParameter("Password"), request.getParameter("Pays"), request.getParameter("Ville"), "jobTitle", 999, ">2");
        PrintWriter out = response.getWriter();

        try {
            int i = authRepositroy.sellerRegister(seller);
            if(i == 1){
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
