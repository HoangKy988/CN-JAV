package com.example;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BMIServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            double chieuCao = Double.parseDouble(request.getParameter("chieuCao"));
            double canNang = Double.parseDouble(request.getParameter("canNang"));

            double bmi = canNang / (chieuCao * chieuCao);

            request.setAttribute("bmi", bmi);
            RequestDispatcher rd = request.getRequestDispatcher("bmi.jsp");
            rd.forward(request, response);
        } catch (NumberFormatException e) {
            response.sendRedirect("bmi.jsp");
        }
    }
}
