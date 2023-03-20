package com.example.lmo9ef;

import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.AuthRepositroy;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "UpdateProfileServlet", value = "/update")
public class UpdateProfileServlet extends HttpServlet {
    public void init() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        AuthRepositroy authRepositroy = new AuthRepositroy();
        HttpSession session = request.getSession(false);
        Object logedInUser = session.getAttribute("loggedInUser");


        try {
            if (logedInUser instanceof Seller){
                Seller logedInS = (Seller) logedInUser;
                logedInS.setEmail(request.getParameter("EmailS"));
                logedInS.setFirstName(request.getParameter("PrenomS"));
                logedInS.setLastName(request.getParameter("NomS"));
                logedInS.setBirthDay(request.getParameter("DateDeNaissanceS"));
                logedInS.setPhoneNumber(request.getParameter("NumTelephoneS"));
                logedInS.setAddress(request.getParameter("AddresseS"));
                logedInS.setPrice(Float.parseFloat(request.getParameter("HourlyRateS")));
                logedInS.setJobTitle(request.getParameter("CategorieS"));
                logedInS.setExperience(request.getParameter("ExperienceS"));
                logedInS.setVille(request.getParameter("VilleS"));
                logedInS.setPays(request.getParameter("PaysS"));
                logedInS.setDescription(request.getParameter("DescriptionS"));
                logedInS.setWorkingTime(request.getParameter("WorkingTimeS"));
                Seller i = authRepositroy.updateS(logedInS);
                session.setAttribute("loggedInUser", i);
            }else{
                Customer logedInC = (Customer) logedInUser;
                logedInC.setEmail(request.getParameter("EmailC"));
                logedInC.setFirstName(request.getParameter("PrenomC"));
                logedInC.setLastName(request.getParameter("NomC"));
                logedInC.setBirthDay(request.getParameter("DateDeNaissanceC"));
                logedInC.setPhoneNumber(request.getParameter("NumTelephoneC"));
                logedInC.setAddress(request.getParameter("AddresseC"));
                logedInC.setCity(request.getParameter("VilleC"));
                logedInC.setPay(request.getParameter("PaysC"));
                Customer i = authRepositroy.updateC(logedInC);
                session.setAttribute("loggedInUser", i);

            }
            response.sendRedirect("profile.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}