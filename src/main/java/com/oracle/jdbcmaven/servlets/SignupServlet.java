package com.oracle.jdbcmaven.servlets;

import beans.Client;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import java.util.List;

public class SignupServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String email = req.getParameter("email");
        String pwd = req.getParameter("pwd");
        String pwd_conf = req.getParameter("pwd_conf");
        HttpSession session = req.getSession();
        String error = "";
        
        if (!pwd.equals(pwd_conf)) {
            error = "La confirmation de mot de passe ne correspond pas";
            session.setAttribute("error", error);
            
        } else {
            Client c = new Client();
            c.setNom(email);
            c.setPrenom(pwd);
            
            Dao<Client> dao = new Dao<>();
            
            dao.startOperation();
            List<Client> results = dao.getBy(Client.class, "nom = ?", email);
            
            
            if (results.isEmpty()) {
                dao.saveOrUpdate(c);
                session.setAttribute("client", c);
            } else {
                error = "L'adresse mail est déjà présente dans la base de données";
                session.setAttribute("errorSignUp", error);
            }
            dao.endOperation();
        }
        
        
        String baseUrl = req.getRequestURL().toString().substring(0, req.getRequestURL().toString().lastIndexOf("/")+1 );
        resp.sendRedirect(baseUrl);

    }
}