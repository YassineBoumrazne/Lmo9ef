package com.example.lmo9ef;

import java.io.*;

import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.AuthRepositroy;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

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
            Object i = authRepositroy.login(email, password);
            System.out.println(i);
            if(i != null){
                HttpSession session = request.getSession(true);
                if (i instanceof Seller) {
                    Seller seller = (Seller) i;
                    session.setAttribute("loggedInUser", seller);
                    session.setAttribute("User", "Seller");
                    System.out.println("Seller");
                } else {
                    Customer customer = (Customer) i;
                    session.setAttribute("loggedInUser", customer);
                    session.setAttribute("User", "Customer");
                    System.out.println("Customer");
                }
                Cookie sessionCookie = new Cookie("JSESSIONID", session.getId()); // create a new cookie
                sessionCookie.setMaxAge(60*60); // set the cookie's expiration time in seconds (1 hour in this example)
                response.addCookie(sessionCookie); // add the cookie to the response
                out.println("Working...");
                out.println("Client Login Successfuly...");
                response.sendRedirect("index");
                System.out.println(i);
            }else{
                out.println("Working...");
                response.sendRedirect("signin.jsp");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}