<%-- 
    Document   : index
    Created on : 12 juil. 2016, 10:09:57
    Author     : Louis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <jsp:include page="inc/navbar.jsp" />
        <div class="container">
            <div class="row">
                <div class="col s12 m12 l12">
                    <jsp:include page="inc/content.jsp" />
                </div>
            </div>
            <div class="row">
                <div class="col s12 m12 l8">
                    <jsp:include page="inc/circuit.jsp" />
                </div>
                
                <div class="col s12 m12 l4">
                    <jsp:include page="inc/login.jsp" />
                </div>
            </div>
        </div>
        <!-- Compiled and minified JavaScript -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
        <script src="https:////cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript">
            
            $(document).ready(function () {
                $('ul.tabs').tabs();
                $('#tableCircuit').DataTable();
                $('.datepicker').pickadate({
                    selectMonths: true, // Creates a dropdown to control month
                    selectYears: 15 // Creates a dropdown of 15 years to control year
                });
            });
        </script>
    </body>
</html>
