package com.oracle.jdbcmaven.servlets;

import beans.Circuit;
import beans.Client;
import dao.Dao;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 *
 * @author Alexy Duquesnoy
 */
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Dao<Client> dao = new Dao<Client>();
        Dao<Circuit> daoCircuit = new Dao<>();
        HttpSession session = req.getSession();
        String error = "";
        
        String email = req.getParameter("email");
        String pwd = req.getParameter("pwd");
        
        dao.startOperation();
        daoCircuit.startOperation();
        List<Client> res = dao.getBy(Client.class, "nom = ? AND prenom = ?", email, pwd);
        List<Circuit> resCircuit = daoCircuit.getAll(Circuit.class);
        dao.endOperation();
        daoCircuit.endOperation();

        if (res.size() == 1) {
            session.setAttribute("client", res.get(0));
            session.setAttribute("circuits", resCircuit );
        } else {
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