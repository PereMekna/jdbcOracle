<%-- 
    Document   : navbar
    Created on : 12 juil. 2016, 10:15:27
    Author     : Louis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<div class="navbar-fixed">
    <nav class="white">
        <div class="container">
            <a href="./" class=" black-text text-lighter-3 brand-logo center"><span class="red-text">Agence</span> de voyage</a>
            <div class="nav-wrapper">
                <ul class="right hide-on-med-and-down black-text">
                    <c:if test="${empty sessionScope.client}">
                        <li><a class="js-scrollTo black-text" href="#login">Se connecter / s'inscire</a></li>
                    </c:if>
                    <c:if test="${not empty sessionScope.client}">
                        <li>Bienvenue ${sessionScope.client.getNom()} ${sessionScope.client.getPrenom()}</li>
                    </c:if>
                </ul>
            </div>
        </div>

    </nav>
</div>
