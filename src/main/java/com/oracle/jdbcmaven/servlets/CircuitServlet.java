package com.oracle.jdbcmaven.servlets;

import beans.Circuit;
import beans.Client;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CircuitServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        Circuit c = new Circuit();
        if (req.getParameter("id")!=null) {
            c.setId(Long.parseLong(req.getParameter("id")));
        }
        c.setDescriptif(req.getParameter("descriptif"));
        c.setVilleDepart(req.getParameter("dep"));
        c.setPaysDepart(req.getParameter("pdep"));
        c.setVilleArrivee(req.getParameter("arr"));
        c.setPaysArrivee(req.getParameter("parr"));
        
        DateFormat sourceFormat = new SimpleDateFormat("dd MM yyyy");
        String dateAsString = req.getParameter("date");
        try {
            c.setDateDepart(sourceFormat.parse(dateAsString));
        } catch (ParseException ex) {
            Logger.getLogger(CircuitServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        c.setDuree(BigDecimal.valueOf(Double.parseDouble(req.getParameter("duree"))));
        c.setPlacesDispo(Long.parseLong(req.getParameter("places")));
        c.setPrix(Long.parseLong(req.getParameter("prix")));

        HttpSession session = req.getSession();
        String error = "";

        Dao<Circuit> dao = new Dao<>();

        dao.startOperation();
        dao.saveOrUpdate(c);
        session.setAttribute("circuits", dao.getAll(Circuit.class));
        dao.endOperation();
        
        
        
        String baseUrl = req.getRequestURL().toString().substring(0, req.getRequestURL().toString().lastIndexOf("/")+1 );
        resp.sendRedirect(baseUrl);

    }
}