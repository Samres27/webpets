<%-- 
    Document   : ---inicio
    Created on : 30 may. de 2022, 10:59:53
    Author     : yosoy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <script src="assets/js/jquery-1.11.3.min.js"></script> 
        <script src="assets/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
            <%@include file="css.jsp" %>
            <div><%@include file="headerPrincipal.jsp" %></div> 
    </head>
    <body>
        <div class="row">
            <div class="col-md-3 col-xs-2"></div>
            <div class="col-md-2 col-xs-3">
             <div class="col-md-1 col-xs-1"></div>
             <div class="col-md-11 col-xs-11">
           <img src="assets/images/avatars/Logo.png" class="img-rounded" width="127.33333" height="120">
           </br>
           <h4>Pets 4 Us</h4>
             </div>     
            </div>
            <div class="col-md-1 col-xs-6"></div>
            <div class="col-md-5 col-xs-6">
                    
                    <div class="col-xs-6 col-md-4">inicio</div>
                    <div class="col-xs-6 col-md-4">perfil</div>
                    <div class="col-xs-6 col-md-4">buscarAmigos</div>
                  

            </div>
            <div class="col-md-2 col-xs-6"></div>
            <div class="col-md-2 col-xs-3">
                <div class="col-md-2 col-xs-2">
                </br>
                </br>
             <img src="assets/images/avatars/avatar2.png" class="img-circle">
             </div>
                <div class="col-md-10 col-xs-10">
                </br>
                <h1>Usuario</h1>
            <form class="form-group">
                <button type="submit" class="btn btn-danger">Salir</button>               
            </form>
             </div> 
            </div>
        </div>
        <div class="container">
            setVisible
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-7">
                 <img src="assets/images/avatars/avatar2.png" class="img-circle">  usuario Amigo #11 
                 <h3>comentarioFoto </h3> 
                 </br>
                 <div class="col-md-1"></div>
                 <div class="col-md-5">
                 <img src="assets/images/avatars/avatar2.png" class="img-thumbnail" width="300" height="120">
            
                 </div> 
            </div> 
            </br><!-- comment -->
            </br><!-- comment -->
            </br><!-- comment -->
            </br><!-- comment -->
            </br>
            </br><!-- comment -->
            </br>
            </br><!-- comment -->
            </br><!-- comment -->
            </br><!-- comment -->
            </br><!-- comment -->
            </br>
            </br><!-- comment -->
            </br>
            <form class="form-group">
                <button type="submit" class="btn btn-danger">Publicar</button>               
            </form>
            
             
             
        </div>
        <div> <%@include file="footerPrincipal.jsp" %></div>
        <script type="text/javascript">
          jQuery(function($) {
           
                // $('#EditarMascota').modal()  ;                    // initialized with defaults
               
           });
      </script>
    </body>
</html>
