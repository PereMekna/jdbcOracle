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
        <table id="tableCircuit" class="display">
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
            <c:forEach var="circuit" items="${circuits}" varStatus="vs">
                <tr>
                    <td>${circuit.getId()}</td>
                    <td>${circuit.getVilleDepart()} - ${circuit.getPaysDepart()}</td>
                    <td>${circuit.getVilleArrivee()} - ${circuit.getPaysArrivee()}</td>
                    <td>${circuit.getDateDepart()}</td>
                    <td><a href="./detail?id=${circuit.getId()}">Éditer</a> <a href="./delete?id=${circuit.getId()}">Supprimer</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>                                                                     
    </div>
    <div class="card-action">
        <a class="js-scrollTo" href="#add">Ajouter un circuit</a>
    </div>
</div>