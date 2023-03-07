package com.example.lmo9ef;

import java.io.*;

import com.example.lmo9ef.Model.Client;
import com.example.lmo9ef.Repository.AuthRepositroy;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "loginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    public void init() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        AuthRepositroy authRepositroy = new AuthRepositroy();

        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        PrintWriter out = response.getWriter();
//        out.println("Working...");
//        out.println(client.toStrings());

        try {
            int i = authRepositroy.login(email, password);
            if(i == 1){
                out.println("Working...");
                out.println("Client Login Successfuly...");
            }else if (i == 2){
                out.println("Working...");
                out.println("Seller problem de registration...");
            }else{
                out.println("Working...");
                out.println("problem de Login...");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}