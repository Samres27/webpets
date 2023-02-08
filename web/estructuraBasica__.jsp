<%--
    Document   : aniadirMascota
    Created on : 8 may. de 2022, 00:26:30
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Gestión de Editorial</title>

		<meta name="description" content="Christian Gámez Udemy" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

                
                
	</head>
    <body>
        <div><%@include file="headerPrincipal.jsp" %></div> 
        <h1>Hello World!</h1>
        <div class="row">
            <div class="col-md-4 add-border-div">Div 1</div>
            <div class="col-md-4">
                <nav>
                    <a class="menus-nav" href="#">Home</a>
                    <a class="menus-nav" href="#">About</a>
                    <a class="menus-nav" href="#">Blog</a>
                    <a class="menus-nav" href="#">Portefolio</a>
                    <a class="menus-nav" href="#">Contact</a>
                    <div class="animation start-home menus-nav"></div>
                </nav>
            </div>
            <div class="col-md-4 add-border-div">Div 3</div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 add-border-div">Div 4</div>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 add-border-div">Div 5</div>
      </div>
        
      <div> <%@include file="footerPrincipal.jsp" %></div>
    </body>
</html>
