<%-- 
    Document   : detail
    Created on : 12 juil. 2016, 23:02:34
    Author     : Loulou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="card">
    <div class="card-action">
        <a href="./">< Retournez voir les circuits</a>
    </div>
    <div class="card-content">
        <span class="card-title">Éditer circuit</span>
        <div class="row">
            <form class="col s12" method="post" action="circuit">
                <input type="hidden" name="id" value="${sessionScope.circuit.getId()}"/>
                <div class="row">
                    <div class="input-field col s12">
                        <textarea id="descriptif" class="materialize-textarea" name="descriptif">${sessionScope.circuit.getDescriptif()}</textarea>
                        <label for="descriptif">Descriptif</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="dep" type="text" name="dep" value="${sessionScope.circuit.getVilleDepart()}">
                        <label for="dep">Ville départ</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="pdep" type="text" name="pdep" value="${sessionScope.circuit.getPaysDepart()}">
                        <label for="pdep">Pays départ</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="arr" type="text" name="arr" value="${sessionScope.circuit.getVilleArrivee()}">
                        <label for="arr">Ville d'arrivée</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="parr" type="text" name="parr" value="${sessionScope.circuit.getPaysArrivee()}">
                        <label for="parr">Pays d'arrivée</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="date" type="date" class="datepicker" name="date" value="${sessionScope.circuit.getDateDepart()}">
                        <label for="date">Date départ</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="places" type="text" name="places" value="${sessionScope.circuit.getPlacesDispo()}">
                        <label for="places">Places disponibles</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="duree" type="text" name="duree" value="${sessionScope.circuit.getDuree()}">
                        <label for="duree">Durée</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="prix" type="text" name="prix" value="${sessionScope.circuit.getPrix()}">
                        <label for="prix">Prix</label>
                    </div>
                </div>
                <div class="row">
                    <div class="row">
                        <div class="input-field col s12">
                            <button class="btn waves-effect waves-light right" type="submit" name="action">Éditer
                                <i class="mdi-content-send right"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </form>
                        
        </div>
    </div>
</div>
