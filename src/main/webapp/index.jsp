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
        <div class="parallax-container hide-on-med-and-down">
            <div class="parallax"><img src="http://feel-planet.com/wp-content/uploads/2015/06/A-desert-oasis-in-Libya.jpg"></div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col s12 m12 l12">
                    <c:if test="${empty sessionScope.circuit}">
                        <jsp:include page="inc/content.jsp" />
                    </c:if>
                    <c:if test="${!empty sessionScope.circuit}">
                        <jsp:include page="inc/detail.jsp" />
                    </c:if>
                    <c:remove var="circuit" scope="session" />  
                </div>
            </div>
        </div>
        <div class="parallax-container hide-on-med-and-down">
            <div class="parallax"><img src="http://www.hotel-krabi.fr/wp-content/uploads/2015/02/une-plage-de-reve-a-Krabi.jpg"></div>
        </div>        
        <div class="container">
            <div class="row">
                <div class="col s12 m12 l8">
                    <jsp:include page="inc/circuit.jsp" />
                </div>
                
                <div class="col s12 m12 l4">
                    <jsp:include page="inc/login.jsp" />
                </div>
            </div>
        </div>
        <jsp:include page="inc/footer.jsp" />
        <!-- Compiled and minified JavaScript -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
        <script src="https:////cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script type="text/javascript">
            
            $(document).ready(function () {
                $('ul.tabs').tabs();
                $('#tableCircuit').DataTable();
                $('.datepicker').pickadate({
                    selectMonths: true, // Creates a dropdown to control month
                    selectYears: 15, // Creates a dropdown of 15 years to control year
                    format: 'dd mm yyyy'
                });
                $('.parallax').parallax();
                $('.js-scrollTo').on('click', function() { // Au clic sur un élément
			var page = $(this).attr('href'); // Page cible
			var speed = 750; // Durée de l'animation (en ms)
			$('html, body').animate( { scrollTop: $(page).offset().top - 100 }, speed, 'easeInOutQuart' ); // Go
			return false;
		});
            });
        </script>
    </body>
</html>
