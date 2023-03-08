package com.example.lmo9ef;

import java.io.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.lmo9ef.Model.Client;
import com.example.lmo9ef.Repository.AuthRepositroy;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "registreServlet", value = "/register")
public class RegistreServlet extends HttpServlet {
    public void init() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        AuthRepositroy authRepositroy = new AuthRepositroy();

        Client client = new Client(request.getParameter("Nom"), request.getParameter("Prenom"), request.getParameter("Sexe"), request.getParameter("DateDeNaissance"), request.getParameter("NumTelephone"), request.getParameter("Addresse"), request.getParameter("Email"), request.getParameter("Password"));
        PrintWriter out = response.getWriter();
//        out.println("Working...");
//        out.println(client.toStrings());

        try {
            int i = authRepositroy.clientRegister(client);
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