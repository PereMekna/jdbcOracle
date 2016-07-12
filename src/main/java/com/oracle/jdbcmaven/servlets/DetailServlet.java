/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.oracle.jdbcmaven.servlets;

import beans.Circuit;
import dao.Dao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Loulou
 */
public class DetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Dao<Circuit> dao = new Dao<>();
        HttpSession session = req.getSession();
        String error = "";

        long id = Long.parseLong(req.getParameter("id"));
        Circuit cToShow;

        dao.startOperation();
        cToShow = (Circuit) dao.getById(Circuit.class, Long.parseLong(String.valueOf(id)));
        dao.endOperation();
        session.setAttribute("circuit", cToShow);
        String baseUrl = req.getRequestURL().toString().substring(0, req.getRequestURL().toString().lastIndexOf("/") + 1);
        resp.sendRedirect(baseUrl);
    }

}
