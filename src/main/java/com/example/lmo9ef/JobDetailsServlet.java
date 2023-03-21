package com.example.lmo9ef;

import com.example.lmo9ef.Model.DTO.SellerDTO;
import com.example.lmo9ef.Model.Enum.Etat;
import com.example.lmo9ef.Model.Order;
import com.example.lmo9ef.Model.User;
import com.example.lmo9ef.Repository.IndexRepository;
import com.example.lmo9ef.Repository.OrderRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.util.Properties;

@WebServlet(name = "JobDetailsServlet", value = "/JobDetails")
public class JobDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            IndexRepository indexRepository = new IndexRepository();
            int id = Integer.parseInt(request.getParameter("id"));
            SellerDTO sellerDTO = indexRepository.getSeller(id);
            request.setAttribute("seller", sellerDTO);
            RequestDispatcher dispatcher = request.getRequestDispatcher("job-details.jsp");
            dispatcher.forward(request, response);
        }
        catch(Exception ex){

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //test
        try{
            OrderRepository orderRepository = new OrderRepository();
            IndexRepository indexRepository = new IndexRepository();

            int sellerId = Integer.parseInt(request.getParameter("sellerId"));
            User logedInUser = (User) request.getSession().getAttribute("loggedInUser");
            if(logedInUser == null){
                response.sendRedirect("signin.jsp");
                return;
            }
            SellerDTO seller = indexRepository.getSeller(sellerId);

            Order order = new Order();
            order.setPrix(seller.getPrice());
            order.setBuyerId((logedInUser).getId());
            order.setEtat(Etat.en_attente);
            order.setSellerId(sellerId);

            orderRepository.commander(order);
            sendEmailNotifation();
            response.sendRedirect("index");
        }
        catch(Exception ex){

        }
    }

    private void sendEmailNotifation(){
        String username = "lmo9ef@gmail.com";
        String password = "Lmo#9ef@20&23";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");




        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        session.getProperties().put("mail.smtp.starttls.enable", "true");

        session.getProperties().put("mail.smtp.ssl.trust", "smtp.gmail.com");
        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("lmo9ef@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("yassine.loccase@gmail.com"));
            message.setSubject("Test Email");
            message.setText("This is a test email!");

            // Send the email
            Transport.send(message);


        }catch (Exception e){
            System.out.println(e.getMessage());

        }
    }
}
