<%-- 
    Document   : p1
    Created on : 1 abr. de 2022, 18:15:13
    Author     : julia
--%>
<%@ page import="dao.Conexion" %>
<%@ page import="dao.Basedatos" %>
<%@ page import="model.Usuario" %>
<%@page import="java.sql.*" %>
<%@ page import ="java.io.PrintWriter" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>actualizar</h1>
        <% out.println("Hello world! -- From JSP"); 
        
        Usuario u = new Usuario();
       u.setNombre("Lucho");
        boolean result = Basedatos.registrarUser(u);
        
        Connection con = Conexion.conectar();
       
        if(con==null){
            out.println("no funciona");
            }else{
            out.println("listo");
            if(result){
             out.println("Se registro");
            }
            }
        
        
       %>
       
    </body>
</html>
