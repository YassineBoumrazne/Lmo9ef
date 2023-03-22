package com.example.lmo9ef;

import com.example.lmo9ef.Model.Evaluation;
import com.example.lmo9ef.Model.User;
import com.example.lmo9ef.Repository.EvaluationRepository;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "EvaluationServlet", value = "/EvaluationServlet")
public class EvaluationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int Notation = Integer.parseInt(request.getParameter("Notation"));
        int SellerId = Integer.parseInt(request.getParameter("sellerId"));

        User logedInUser = (User) request.getSession().getAttribute("loggedInUser");
        if(logedInUser == null){
            response.sendRedirect("signin.jsp");
            return;
        }

        EvaluationRepository evaluationRepository = new EvaluationRepository();



        Evaluation evaluation = new Evaluation(Notation,request.getParameter("Commentaire"),logedInUser.getId(),SellerId);
        evaluationRepository.evaluationPost(evaluation);


        response.sendRedirect("JobDetails?id="+SellerId);


    }
}
