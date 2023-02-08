<%-- 
    Document   : editarInformacion
    Created on : 6 may. de 2022, 09:26:51
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <link rel="stylesheet" type="text/css" href="assets/css/cssPublicaciones.css">
        <link rel="stylesheet" type="text/css" href="assets/css/Stylesheet.css">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <%@include file="head.jsp" %>
    </head>

        
	
 <body> 
     <%@include file="headerPrincipal.jsp" %>
     <div style="height: 100px"></div>
     <div class="row"> 
     
         <div class="col-md-4 col-xs-1"> </div>
         <div class="col-md-4 col-xs-10">
             
             <div class="diseno-formulario" style="height: auto">
                 
                 
             <form action="AniadirMascota" method="post" class="form-horizontal" >
                 <h1><strong>Agregar Mascota</strong></h1>
                 <hr style="border-color:black ">
                 
              <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nombre de mascota:
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="nombre" placeholder="Introduzca aqui el nombre de su mascota" class="diseño-bordes" style="width: 250px"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            
                                                                                           
                                                                                             <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Edad de mascota:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="edadMascota" placeholder="Introduzca aqui la edad de su mascota" class="diseño-bordes"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Tipo de mascota:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="especie" placeholder="Introduzca aqui el tipo de su mascota" class="diseño-bordes"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                                <button class="diseño-boton" style="border-radius: 30px" type="submit">
                                                                                                        <i class="fa fa save"></i>
                                                                                                    Añadir mascota
                                                                                                </button>
                                                                                            <div>
                                                                                                <%=(request.getAttribute("mensaje")!=null?request.getAttribute("mensaje"):"") %>
                                                                                            </div>
                                                                                            
                                                                                           
             </form>
             </div>
                                                                                            <div  style="height: 100px"></div>
                                                                                            <div class="diseno-formulario" style="height: auto">
                                                                                                
                                                                                            <form action="EditarInformacion" method="post" class="form-horizontal" >
                 <h1><strong>Editar información</strong></h1>
                 <hr style="border-color:black ">
                 
              <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nombre de usuario:
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="nombre_usuario" id="nickname" placeholder="Introduzca aqui su nombre de usuario" class="diseño-bordes" style="width: 250px"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Contraseña :
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="clave" id="clave" placeholder="Introduzca aqui su contraseña" class="diseño-bordes" style="width: 250px"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nueva Contraseña:
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="nuevaClave" id="nueva-clave" placeholder="Introduzca aqui su nueva contraseña" class="diseño-bordes"/>
                                                                                                </div>
                                                                                            </div>
                                                                                             <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nombres:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="nombres" id="NombredeUsuario" placeholder="Introduzca aqui sus nombres" class="diseño-bordes"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Apellidos:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="apellidos" id="Apellidos" placeholder="Introduzca aqui sus apellidos" class="diseño-bordes"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Fecha de Nacimiento:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="fecha_nacimiento" id="FechaDeNacimiento" placeholder="Introduzca aqui su fecha de nacimiento" class="diseño-bordes"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nacionalidad:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="nacionalidad" id="Nacionalidad" placeholder="Introduzca aqui su nacionalidad" class="diseño-bordes"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Sexo:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text/css" name="sexo" id="sexo" placeholder="Introduzca aqui su sexo" class="diseño-bordes"/>
                                                                                                </div>
                                                                                            </div>
                 
                                                                                                <button class="diseño-boton" style="border-radius: 30px" type="submit">
                                                                                                        <i class="fa fa save"></i>
                                                                                                    Editar
                                                                                                </button>
                                                                                            <div>
                                                                                                <%=(request.getAttribute("mensaje")!=null?request.getAttribute("mensaje"):"") %>
                                                                                            </div>
                                                                                            
                                                                                           
             </form>    
                                                                                                
                                                                                            </div>                                                                               
             
         </div>
         <div class="col-md-4"> </div>
     
     
     </div>
     
     
                                                                                            
		
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="assets/js/dataTables.buttons.min.js"></script>
		<script src="assets/js/buttons.flash.min.js"></script>
		<script src="assets/js/buttons.html5.min.js"></script>
		<script src="assets/js/buttons.print.min.js"></script>
		<script src="assets/js/buttons.colVis.min.js"></script>
		<script src="assets/js/dataTables.select.min.js"></script>

		
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		
		<script type="text/javascript">
                    jQuery(function($) {
                            validarSesionUsuario();
                            
                            	$('.btn-buscar-nickname').click(function(){
                                                                     
                                    var texto= $('#nickname').val();
                                    console.log(texto);
                                    //form es el formulario que contiene al boton, ejemplo: este jsp
                                    var form = $(this);
                                    var formInfo = form.serialize()+'&nickname='+texto;
                                    $.ajax({
                                        url:  'BuscarPublicacionesPorNicknameControlador',
                                        type: 'POST',
                                        data: formInfo
                                    })
                                    
                                    .done(function (data) {
                                        //si el proceso finalizo correctamente.
                                        console.log(data);
                                        let contenido = "";
                                        contenido = contenido + '<ul class="submenu" style="list-style-type: none;">';
                                        for (var i=0; i<data.length; i++){
                                            var publicaciones = data[i];
                                            
                                            contenido = contenido +    '<li class="publicacion_link" id="publicacion_'+publicaciones.publicacionId+'" style="line-height: 37px;">';
                                            contenido = contenido +     '<a class="link-list">';
                                            contenido = contenido + '<i class="menu-icon fa fa-caret-right"></i>';
                                            contenido = contenido +  publicaciones.nickname + " "+ publicaciones.fechaPublicacion;
                                            contenido = contenido +    '</a>';
                                            contenido = contenido +    '<b class="arrow"></b>';
                                            contenido = contenido +    '</li>';
                                        }
                                         contenido = contenido + '</ul>';
                                         
                                         //Ahora enviamos el contenido que es un html encerrado en un 'ul' que se enviara al campo div para mostrar
                                         //dicho div tiene un identificador de acceso que sera escrito abajo
                                        $('#listado_publicaciones').html(contenido);
                                        //Ahora cuando yo haga click en cada uno de los <li> obtendre el id de la publicacion
                                        $('.publicacion_link').click(function(){
                                            
                                            //declaro una variable donde atrapo el id y con el ajax pido lo que me devuelve la funcion de arriba 
                                            // el .attr retorna el id del <li>
                                            
                                            var id=$(this).attr("id");
                                            
                                            //replace, reemplaza el texto publicacion_ por vacio.
                                            id=id.replace("publicacion_","");
                                            console.log('click'+id);
                                            
                                            //invoco una funcion que me retorne las publicaciones con el id que recupere 
                                            //tiene que retornar las publicaciones que tengan dicho id con sus multimedias si es que tuviesen
                                            recuperarPublicacion (form,id);
                                        });
                                    })
                                    .fail(function (data) {
                                        //Si ocurrio algun error durante el proceso
                                        console.log('error');
                                    })
                                    .always(function (data) {
                                        //Siempre se ejecutara haya o no error
                                    });

                                });
                                
			});
                        
                        function 
		</script>
	</body>
</html>




