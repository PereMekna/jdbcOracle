<%-- 
    Document   : login
    Created on : 12 juil. 2016, 10:21:07
    Author     : Louis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<c:if test="${empty sessionScope.client }">
    <div class="row tabs-row">
        <ul class="tabs z-depth-1">
            <li class="tab col s6"><a href="#login">Se connecter</a></li>
            <li class="tab col s6"><a <c:if test="${!empty sessionScope.error}">class="active"</c:if> href="#register">S'inscrire</a></li>
            </ul>
        </div>
        <div class="card center">
            <div class="card-content">
                <div class="row">
                    <div id="login" class="col s12">
                    <c:if test="${!empty sessionScope.errorLogin}">
                        <div class="card center">
                            <div class="card-content">
                                <span class="red-text">${sessionScope.errorLogin}</span>
                            </div>
                        </div>    
                    </c:if>   
                    <c:remove var="errorLogin" scope="session" />  
                        <form role="form" method="post" action="login">
                            <div class="input-field">
                                <input type="text" class="input-field" id="email" name="email" />
                                <label for="email">Adresse e-mail</label>
                            </div>
                            <div class="input-field">
                                <input type="password" class="input-field" id="pwd" name="pwd" />
                                <label for="pwd">Mot de passe</label>
                            </div>
                            <p class="">
                                <input type="checkbox" id="remember" class="indigo darken-3" name="remember" />
                                <label for="test5">Se souvenir de moi</label>
                            </p>
                            <button type="submit" class="center btn waves-effect waves-light">Connexion</button>
                        </form>
                    </div>
                    <div id="register" class="col s12">
                    <c:if test="${!empty sessionScope.errorLogin}">
                        <div class="card center">
                            <div class="card-content">
                                <span class="red-text">${sessionScope.errorLogin}</span>
                            </div>
                        </div>    
                    </c:if>   
                    <c:remove var="errorLogin" scope="session" />          
                    <form role="form" method="post" action="signup">
                        <div class="input-field">
                            <input type="text" class="form-control" id="email_r" name="email">
                            <label class="control-label" for="email_r">Adresse e-mail</label>
                        </div>
                        <div class="input-field">
                            <input type="password" class="form-control" id="pwd_r" name="pwd">
                            <label class="control-label" for="pwd_r">Mot de passe</label>
                        </div>
                        <div class="input-field">
                            <input type="password" class="form-control" id="pwd_conf_r" name="pwd_conf">
                            <label class="control-label" for="pwd_conf_r">Confirmez le mot de passe</label>
                        </div>
                        <p class="">
                            <input type="checkbox" id="test4" class="indigo darken-3" />
                            <label for="test4">Se souvenir de moi</label>
                        </p>
                        <button type="submit" class="center btn waves-effect waves-light">Inscription</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${!empty sessionScope.client}">
    <div class="card center">
        <div class="card-content">
            <div class="row">
                <div id="login" class="col s12">
                    <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
                    <p class="succes">Vous êtes connecté(e) avec l'adresse : ${sessionScope.client.getNom()} ${sessionScope.client.getPrenom()}
                        <br /><a href="./logout">Déconnexion</a></p>
                </div>
            </div>
        </div>
    </div>
</c:if>
