<%-- 
    Document   : Comentar
    Created on : 10 may. de 2022, 21:52:01
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="assets/css/cssResponderComentario.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Es el titulo de la pagina en los jsp-->
        <title>Pet4Us</title>
        <!-- Incluye el css de la pagina-->
         <%@include file="head.jsp" %>
     <%@include file="headerPrincipal.jsp" %>
     
    </head>
    <body>
           
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8" style="background-color:white;">
                        <div id="secComentarios">
                            <div class="col-sm-2"><img id="fotoperfil" src="assets/images/avatars/avatar.png"></div>
                            <div class="col-sm-9" id ="comentarioPersonal">
                                <p1>
                                    <p2> Nombre Usuario</p2>
                                    <br>
                                    <br>
                                    Lorem ipsum dolor sit amet consectetur adipiscing elit mus lobortis pellentesque, ornare felis vel sem lacus neque bibendum dignissim leo urna
                                </p1>
                                <div class="col-sm-9"></div>
                                <button class="col-sm-3" id="boton2" >Responder</button>
                            </div>
                            <div class="col-sm-1"></div>
                            
                            <div id="respuestasComentario">
                                <div class="col-sm-2"><img id="fotoperfil" src="assets/images/avatars/avatar.png"></div>
                                <div class="col-sm-9" id ="comentarioPersonal">
                                    <p1>
                                        <p2> Nombre Usuario</p2>
                                        <br>
                                        <br>
                                        Lorem ipsum dolor sit amet consectetur adipiscing elit mus lobortis pellentesque, ornare felis vel sem lacus neque bibendum dignissim leo urna
                                    </p1>
                                </div>
                                <div class="col-sm-1"></div>
                            </div>
                        </div>
                        <div id="respuesta">
                            <form role="form">
                                <br>
                                <div class="form-group">
                                    <div class="col-sm-1"></div>
                                    <div class="col-sm-11"> 
                                         <input type="text" class="comentario" name="Comentario" value="" placeholder="Escribe un Comentario"/>
                                    </div>
                                </div>
                                <div class="col-sm-10"></div>
                                <button class="col-sm-2" id="boton1" >Publicar</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-2" ></div>
                </div>
            </div>
    </body>
</html>
