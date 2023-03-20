package com.example.lmo9ef;

import java.io.*;

import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Repository.AuthRepositroy;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "customerRegistreServlet", value = "/customerRegister")
public class CustomerRegistreServlet extends HttpServlet {
    public void init() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        AuthRepositroy authRepositroy = new AuthRepositroy();

        Customer customer = new Customer(request.getParameter("Nom"), request.getParameter("Prenom"), request.getParameter("Sexe"), request.getParameter("DateDeNaissance"), request.getParameter("NumTelephone"), request.getParameter("Addresse"), request.getParameter("Email"), request.getParameter("Password"), request.getParameter("Pays"), request.getParameter("Ville"),"imagepath");
        PrintWriter out = response.getWriter();

        try {
            int i = authRepositroy.customerRegister(customer);
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

    public void destroy() {
    }
}