package com.oracle.jdbcmaven.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import java.util.List;

/**
 *
 * @author Alexy Duquesnoy
 */
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        HttpSession session = req.getSession();
        String error = "";
        
        String email = req.getParameter("email");
        String pwd = req.getParameter("pwd");
        
        {
            error = "Login / mot de passe incorrect(s)";
            session.setAttribute("errorLogin", error);
        }
        
        String baseUrl = req.getRequestURL().toString().substring(0, req.getRequestURL().toString().lastIndexOf("/")+1 );
        resp.sendRedirect(baseUrl);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String baseUrl = req.getRequestURL().toString().substring(0, req.getRequestURL().toString().lastIndexOf("/")+1 );
        resp.sendRedirect(baseUrl);
    }

}