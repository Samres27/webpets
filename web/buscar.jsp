<%-- 
    Document   : registroUsuario
    Created on : 29 abr. de 2022, 18:08:03
    Author     : julia
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
        <title>Inicio</title>
       

        <%@include file="headerPrincipal.jsp" %>
        <%@include file="head.jsp" %>
        
        
        
    </head>
    <!--<body style="background-color: #F5F7F6 ">-->
    <body style="background-color: #F5F7F6 ">
         <div class="row">
             
       
           
            <div class="col-sm-2"></div>
            <div class="col-sm-8"id="contenidoBusqueda" >
                <div class="Publicacion">
                    <div class="col-sm-2">
                        <img id="fotoperfil" src="assets/images/avatars/avatar.png">
                    </div>
                    <div class="col-sm-3"><p1><b><font size="3">Nombre Usuario</font></b></p1></div>
                    <div class="col-sm-3"></div>
                    <div class="col-sm-4"><p1><b><font size="1">Fecha de publicacion:02/06/2022</font></b></p1></div>
                </div>
                <div class="col-sm-12 col-xs-12">
                    <p2><font size="2">Duis eget sagittis nunc. Aenean quis aliquet nisi, in porttitor lectus. Praesent ac placerat lectus, finibus condimentum tortor. Integer posuere at neque a ornare. Duis sapien eros, euismod quis ligula in, semper ultricies velit. Nunc lorem elit, varius nec metus vel, commodo euismod nunc. Fusce nec arcu imperdiet, porta lacus a, feugiat elit. Mauris fringilla ante sit amet arcu vestibulum, eu maximus dolor varius. Aliquam arcu augue, elementum et est et, convallis sodales neque.
                    </font></p2>
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <img id="fotopublicacion" src="assets/images/gallery/image-4.jpg" width="100%">
                </div>
                <div class="col-sm-1"></div>
                
                <div class="col-sm-9"></div>
                <button class="col-sm-3" id="boton2" >Comentar</button>
            </div>    
            <div class="col-sm-2"></div>
	
       
		

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
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

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
                   
			jQuery(function($) {
                            	$('.btn-buscar-pub').click(function(){
                                                                     
                                    var texto= $('#texto_busqueda').val();
                                    console.log(texto);
                                    
                                    var form = $(this);
                                    var formInfo = form.serialize()+'&texto_busqueda='+texto;
                                    $.ajax({
                                        url:  'BuscarControlador',
                                        type: 'POST',
                                        data: formInfo
                                    })
                                    
                                    .done(function (data) {
                                        //si el proceso finalizo correctamente.
                                        console.log(data);
                                        let contenido = "";
                                        contenido = contenido + '<ul class="submenu">';
                                        for (var i=0; i<data.length; i++){
                                            var publicacion = data[i];
                                            
                                            contenido = contenido +    '<li class="publicacion_link" id="publicacion_'+publicacion.publicacionId+'">';
                                            contenido = contenido +     '<a>';
                                            contenido = contenido + '<i class="menu-icon fa fa-caret-right"></i>';
                                            contenido = contenido +  publicacion.nickname;
                                            contenido = contenido +    '</a>';
                                            contenido = contenido +    '<b class="arrow"></b>';
                                            contenido = contenido +    '</li>';
                                           
                                        }
                                         contenido = contenido + '</ul>';
                                        $('#listado_publicaciones').html(contenido);
                                        $('.publicacion_link').click(function(){
                                            var id=$(this).attr("id");
                                            console.log('click'+id);
                                            
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
			})
                        
                        
                        
                        
		</script>
	</body>



 
</html>

