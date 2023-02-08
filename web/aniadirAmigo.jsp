<%-- 
    Document   : Agregar Amigo
    Created on : 8 may. de 2022, 14:14:19
    Author     : Deployment Software
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/aniadirAmigo.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Amigo</title>
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <%@include file="head.jsp" %>
    <%@include file="headerPrincipal.jsp" %>
    
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8" id="ColumnaPrincipal">
               
                <p2><b><font size="3">Solicitudes Recibidas</font></b></p2>
                
                <div class="col-sm-12">
                    <div class="col-sm-6 col-xs-12">
                        <div class="solicitudes">
                            
                            <div class="col-sm-4 col-xs-1"><img id="fotoperfil" src="assets/images/avatars/avatar.png"></div>
                            <div class="col-sm-8 col-xs-11"><p1><b><font size="3">Nombre Usuario</font> <br></b></p1></div>
                             
                             <div class="col-sm-12 col-xs-12">
                                 <div class="col-sm-2 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-3" id="boton1">Aceptar</button>
                                 <div class="col-sm-1 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-4" id="boton2">Rechazar</button>
                             </div>
                             
                        </div>
                        
                        
                        <div class="solicitudes">
                            
                            <div class="col-sm-4 col-xs-1"><img id="fotoperfil" src="assets/images/avatars/avatar.png"></div>
                            <div class="col-sm-8 col-xs-11"><p1><b><font size="3">Nombre Usuario <br></font></b></p1></div>
                             
                             <div class="col-sm-12 col-xs-12">
                                 <div class="col-sm-2 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-3" id="boton1">Aceptar</button>
                                 <div class="col-sm-1 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-4" id="boton2">Rechazar</button>
                             </div>
                             
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <div class="solicitudes">
                            
                            <div class="col-sm-4 col-xs-1"><img id="fotoperfil" src="assets/images/avatars/avatar.png"></div>
                            <div class="col-sm-8 col-xs-11"><p1><b><font size="3">Nombre Usuario</font></b></p1></div>
                             
                             <div class="col-sm-12 col-xs-12">
                                 <div class="col-sm-2 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-3" id="boton1">Aceptar</button>
                                 <div class="col-sm-1 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-4" id="boton2">Rechazar</button>
                             </div>
                             
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-12 col-xs-12">
                    <p2><b><font size="3"><br>Usuarios Encontrados</font></b></p2>
                </div>
                
                <div>
                    <div class="col-sm-6 col-xs-12">
                        <div class="solicitudes">
                            
                            <div class="col-sm-4"><img id="fotoperfil" src="assets/images/avatars/avatar.png"></div>
                            <div class="col-sm-8"><p1><b><font size="3">Nombre Usuario</font></b></p1></div>
                             
                            <div class="col-sm-12 col-xs-12">
                                 <div class="col-sm-2 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-3" id="boton1">Aceptar</button>
                                 <div class="col-sm-1 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-4" id="boton2">Rechazar</button>
                             </div>
                             
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <div class="solicitudes">
                            
                            <div class="col-sm-4"><img id="fotoperfil" src="assets/images/avatars/avatar.png"></div>
                            <div class="col-sm-8"><p1><b><font size="3">Nombre Usuario</font></b></p1></div>
                             
                             <div class="col-sm-12 col-xs-12">
                                 <div class="col-sm-2 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-3" id="boton1">Aceptar</button>
                                 <div class="col-sm-1 col-xs-1"></div>
                                 <button class="col-sm-4 col-xs-4" id="boton2">Rechazar</button>
                             </div>
                             
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>
</body>
</html>