<%-- 
    Document   : addCircuit
    Created on : 12 juil. 2016, 10:40:20
    Author     : Louis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="card" id="add">
    <div class="card-content">
        <span class="card-title">Ajouter circuit</span>
        <div class="row">
            <form class="col s12" method="post" action="circuit">
                <div class="row">
                    <div class="input-field col s12">
                        <textarea id="descriptif" class="materialize-textarea" name="descriptif"></textarea>
                        <label for="descriptif">Descriptif</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="dep" type="text" name="dep">
                        <label for="dep">Ville départ</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="pdep" type="text" name="pdep">
                        <label for="pdep">Pays départ</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="arr" type="text" name="arr">
                        <label for="arr">Ville d'arrivée</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="parr" type="text" name="parr">
                        <label for="parr">Pays d'arrivée</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="date" type="date" class="datepicker" name="date">
                        <label for="date">Date départ</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="places" type="text" name="places">
                        <label for="places">Places disponibles</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="duree" type="text" name="duree">
                        <label for="duree">Durée</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="prix" type="text" name="prix">
                        <label for="prix">Prix</label>
                    </div>
                </div>
                <div class="row">
                    <div class="row">
                        <div class="input-field col s12">
                            <button class="btn waves-effect waves-light right" type="submit" name="action">Submit
                                <i class="mdi-content-send right"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>