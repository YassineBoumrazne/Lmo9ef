package com.example.lmo9ef.Controller;

import com.example.lmo9ef.Model.Customer;
import com.example.lmo9ef.Model.Seller;
import com.example.lmo9ef.Repository.AuthRepositroy;
import com.example.lmo9ef.Repository.ProfileRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@WebServlet(name = "UpdateProfileServlet", value = "/update")
@MultipartConfig
public class UpdateProfileServlet extends HttpServlet {
    public void init() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AuthRepositroy authRepositroy = new AuthRepositroy();
        ProfileRepository profileRepository = new ProfileRepository();
        HttpSession session = request.getSession(false);
        Object logedInUser = session.getAttribute("loggedInUser");


        try {
            if (logedInUser instanceof Seller){
                Seller logedInS = (Seller) logedInUser;

                // Get the file part from the request
                Part filePart = request.getPart("file-1S");
                // Get the file name and content type
                String fileName = filePart.getSubmittedFileName();
                // Create a unique file name using timestamp
                String uniqueFileName = logedInS.getImagePath();
                if (fileName != ""){
                    uniqueFileName = System.currentTimeMillis() + "_" + fileName;
                    String uploadPath = "C:\\Users\\anasStilinski\\IdeaProjects\\newer versions\\2\\src\\main\\webapp\\assets\\img\\photos\\" + uniqueFileName;
                    FileOutputStream fos= new FileOutputStream(uploadPath);
                    InputStream is= filePart.getInputStream();
                    byte[] data = new byte[is.available()];
                    is.read(data);
                    fos.write(data);
                    fos.close();
                }


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
                logedInS.setImagePath(uniqueFileName);
                Seller i = profileRepository.UpdateSeller(logedInS);
                session.setAttribute("loggedInUser", i);
            }else{
                Customer logedInC = (Customer) logedInUser;

                // Get the file part from the request
                Part filePart = request.getPart("file-1C");

                // Get the file name and content type
//                String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
//                String contentType = filePart.getContentType();
//
//                // Create a unique file name using timestamp
//                String uniqueFileName = System.currentTimeMillis() + "_" + fileName;

                logedInC.setEmail(request.getParameter("EmailC"));
                logedInC.setFirstName(request.getParameter("PrenomC"));
                logedInC.setLastName(request.getParameter("NomC"));
                logedInC.setBirthDay(request.getParameter("DateDeNaissanceC"));
                logedInC.setPhoneNumber(request.getParameter("NumTelephoneC"));
                logedInC.setAddress(request.getParameter("AddresseC"));
                logedInC.setVille(request.getParameter("VilleC"));
                logedInC.setPays(request.getParameter("PaysC"));
//                logedInC.setImagePath(uniqueFileName);
                System.out.println(request.getParameter("PrenomC") + " firstneame update");
                Customer i = profileRepository.UpdateCustomer(logedInC);
                session.setAttribute("loggedInUser", i);

            }
            response.sendRedirect("Profile");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}