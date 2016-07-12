<%-- 
    Document   : content
    Created on : 12 juil. 2016, 10:34:23
    Author     : Louis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<div class="card">
    <div class="card-content">
        <span class="card-title">Circuits disponibles</span>
        <table id="tableCircuit">
            <thead>
                <tr>
                    <th data-field="id">Id</th>
                    <th data-field="dep">Départ</th>
                    <th data-field="arr">Arrivée</th>
                    <th data-field="date">Date</th>
                    <th data-field="action">Action</th>
                </tr>
            </thead>

            <tbody>      
            <c:forEach var="bettor" items="${bettors}" varStatus="vs">
                <tr>
                    <td>${vs.count}</td>
                    <td><a href="./bettor?id=${bettor.getIdBettor()}">${bettor.getLogin()}</a></td>
                    <td>${bettor.getCurrentPositionScore()}</td>
                    <td></td>
                    <td></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>                                                                     
    </div>
    <div class="card-action">
        <a href="./index">Voir tous les matchs</a>
    </div>
</div>