package com.example;


import javax.servlet.*;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

public class BMIInputFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;

        try {
            double chieuCao = Double.parseDouble(req.getParameter("chieuCao"));
            double canNang = Double.parseDouble(req.getParameter("canNang"));

            if (chieuCao > 0 && canNang > 0) {
                chain.doFilter(request, response);
            } else {
                request.setAttribute("error", "Chiều cao và cân nặng phải lớn hơn 0.");
                request.getRequestDispatcher("bmi.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Dữ liệu không hợp lệ.");
            request.getRequestDispatcher("bmi.jsp").forward(request, response);
        }
    }
}
