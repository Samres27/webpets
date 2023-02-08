<%-- 
    Document   : bienvenida
    Created on : 17 jun. de 2022, 17:19:48
    Author     : yosoy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="bienvenidahtml">
    <head>
        <link rel="stylesheet" type="text/css" href="assets/css/bienvenidos_style.css">
        <script src="assets/js/jquery-1.11.3.min.js"></script> 
        <script src="assets/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
        <%@include file="head.jsp" %>
    </head>
    <body class="bodySam">
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6 col-md-offset-4 foto" >
                        <img src="assets/images/gallery/FelizPersona.jpg" class="img-circle" width=100% height=100%>
                        
                    </div>
                </div>
                
                <div class="col-md-12 espacioTexto"></div>
                    <div class="col-md-8 col-md-offset-3 texto">
                        <h3 class="textTitulo">Ventajas</h3>
                        <p class="textParrado">1.-Facil de usar</p>
                        <p class="textParrado"> 2.-Conecta con personas parecidas a ti</p>
                        <p class="textParrado">  3.-Una comunidad apasionada</p>
                        
                    </div>
                
               
            </div>
             <div class="col-md-6">
                 <div class="row">
                     <div class="col-md-12 espacioRecuadro"></div>
                    <div class="recuadro col-md-7 col-xs-10 col-xs-offset-1">
                        <div class="textoRecuadro">
                            <h3 class="textRecuadroTitulo">¿Porque Crear Una Cuenta?</h3>
                            <p class="textRecuadroParrado">Pets 4 us es una red social que tiene una comunidad enorme y apasionada, lista para ver, compartir y celebrar todo lo que te gusta, y hemos preparado un espacio solo para ti.</p>
                            <p class="textRecuadroParrado">Pets 4 us no solo se limita a la interacción con otros, sino también la manera de conectarte con todo lo que te apasiona, con una comunidad selecta la cual es igual tiene tú mismos gustos.</p>
                        </div>
                        <div class=" col-md-8">
                               
                        </div>
                    </div>
                 </div>
                
            </div>
        </div>
         <div class="row">
                <div class="recudroRosa" col-md-7>

                </div>
         </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-8 col-xs-8 col-xs-offset-4 fotoPerros">
                <img src="assets/images/gallery/mascotas.jpg" class="img-rounded" width=100% height=100%>
            </div>            
        </div>
        <!-- segunda parte del panel -->
        <div class="fondoPlomo">
            <div class="row">
                <div class="mensajeFrase col-md-3 col-md-offset-1 col-xs-8 col-xs-offset-1 ">
                    <p class="textMensajeFrase">"todo el conocimiento, la totalidad de preguntas y respuestas se encuentra en el perro",Franz Kafka<p>
                    
                </div>
            </div>
            <div class="row">
                <div class="perro col-md-6 col-md-offset-3 col-xs-9 col-xs-offset-2">
                    <img src="assets/images/gallery/perroGatoEchado.png" class="imgPerro" width=100% height=100%>
                        
                </div>
            </div>
            
                <div class="fondoRosado col-md-6 col-md-offset-5 col-xs-10 col-xs-offset-1">
                        <div class="col-md-12 espacioFondoRosado"></div>
                        <div class="botonIngre col-md-3 col-md-offset-8 ">
                                <a class="botnIngresarRosa" href="inicioSesion.jsp" style="text-decoration: none"><p class="letraBotonIngresar">Ingresar</p></a>
                               
                         </div>
                </div>
            
            
                <div class="funcionesVentajas col-md-7 col-xs-12">
                       <div class="Ventaja col-md-3 col-md-offset-1 col-xs-6 col-xs-offset-3 ">
                           <div class="circuloPlomo">
                               <img src="assets/images/gallery/facil.png" class="imgVentaja" width=80% height=80%>
                      
                           </div>
                           <div class="espVentaja"><p class="textFacil">Facil</p></div>
                       </div>
                        <div class="Ventaja col-md-3 col-md-offset-1 col-xs-6 col-xs-offset-3">
                            <div class="circuloPlomo">
                                <img src="assets/images/gallery/rapido.png" class="imgVentaja" width=80% height=80%>
                      
                           </div>
                            <div class="espVentaja"><p class="textRapido">Rapido</p></div>
                       </div> 
                        <div class="Ventaja col-md-3 col-md-offset-1 col-xs-6 col-xs-offset-3">
                            <div class="circuloPlomo">
                               <img src="assets/images/gallery/seguro.png" class="imgVentaja" width=80% height=80%>
                      
                           </div>
                            <div class="espVentaja"><p class="textSeguro">Seguro</p></div>
                       </div> 
                </div>
            
        </div>
       
        </body>
</html>
