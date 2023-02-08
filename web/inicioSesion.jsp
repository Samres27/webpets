

<%-- 
    Document   : inicioSesion
    Created on : 31 may. de 2022, 16:43:56
    Author     : julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <link rel="stylesheet" type="text/css" href="assets/css/inicioSesion_style.css">
        
        <script src="assets/js/jquery-1.11.3.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio sesión</title>
        <%@include file="head.jsp" %>
        
        
    </head>
    <!--<body style="background: #E4E6E9">-->
    <body class="bodyInicioSesion" ">
        <div class="row">          
            <div class="col-md-6 fotoEspacioPerrito">
                <div class="col-md-6 col-md-offset-4 col-xs-6 col-xs-offset-2" id="textInFoto">
                    <h1>Conectate!</h1>
                    <h4>Ven y unite a nuestra comunidad. Expande tu red y conoce gente nueva</h4>
                </div>> 
                <button type="button" class="diseño-boton" id="BotonCrearCuenta" data-toggle="modal" data-target="#CrearCuenta">Entra ahora, es gratis</button>
                <img id="perrito" src="assets/images/gallery/image (2).jpg" > 
            </div>
            
            
            <div class="col-md-1 col-xs-1"></div>
            
            
            <div class="col-md-4 col-xs-10" >
                   <div class="col-md-12" id="separacion" ></div>
                                    <div class="col-md-12 diseno-formulario" id="formularioInicio" style="height: 255px">

                                        <h2>Ingrese a su cuenta</h2>

                                        <form action="iniciarSesion" method="post">

                                          <div class="form-group">   
                                            <label for="Nombre">Nombre</label>
                                            <input type="text" class="form-control" id="user" name="user" placeholder="Introduzca aqui su nombre" required/>
                                          </div>



                                          <div class="form-group">
                                            <label for="Contraseña">Contraseña</label>
                                            <input type="password" class="form-control" id="clave" name="clave" placeholder="Introduzca aqui su contraseña" required/>
                                          </div>


                                             <a href="#" class="ingresar diseño-boton" >                                           
                                                 Ingresar
                                             </a>

                                            <div class="col-md-12">
                                                                <%=(request.getAttribute("mensaje")!=null?request.getAttribute("mensaje"):"") %>
                                             </div>
                                   </form>  

                                    </div>
                                   
                   <div id="mostrar-alerta"></div>

                                                              
            </div>
                               
                        <div class="col-md-1">
                            <div class="col-md-12" id="clase-separacion"></div>
                           
                        <div class="modal fade" id="CrearCuenta" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" action="CrearCuenta" method="post">
  <div class="modal-dialog" role="document" action="CrearCuenta" method="post">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Crear cuenta</h4>
      </div>
        
      <div class="modal-body">
          
       <form action="CrearCuenta" method="post" class="form-horizontal">
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nombres:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="nombres" placeholder="Nombre(s)" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Apellidos:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="apellidos" placeholder="Paterno y Materno" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nombre de usuario:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="nick_name" placeholder="ejm: Daniel666" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Contraseña:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="clave" placeholder="Contraseña" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Fecha de Nacimiento:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="fecha_nacimiento" placeholder="ejm: 2003-09-28" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nacionalidad:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="nacionalidad" placeholder="Bolivia" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Sexo:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="sexo" placeholder="Masculino o Femenino" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <button class="diseño-boton" type="submit">
                                                                                                <i class="fa fa save"></i>
                                                                                                Crear Cuenta
                                                                                            </button>
                                                                                            <div>
                                                                                                <%=(request.getAttribute("mensaje")!=null?request.getAttribute("mensaje"):"") %>
                                                                                                
                                                                                            </div>
                                                                                        </form>
      </div>
    </div>
  </div>
                            
    </div> 
</div>
        </div>
                        <script src="assets/js/jquery-2.1.4.min.js"></script>
                        <script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
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
           /* jQuery(function($) {
                $('.ingresar').click(function(){
                     var password= $('#clave').val();
                     var nickname= $('#user').val();
                    console.log(texto);

                    var form = $(this);
                    var formInfo = form.serialize()+'&texto_busqueda='+texto;
                                console.log("validar Sesion");
                                 $.ajax({
                                    url:  'iniciarSesion',
                                    type: 'POST',
                                    data: {}
                                })

                                .done(function (data) {
                                    console.log(data);
                                    let usuario=data;
                                    if(usuario.usuarioId===0){
                                        
                                        let host=window.location.origin;
                                        let contenido = "";
                                        contenido = contenido + '<ul class="submenu" style="list-style-type: none;">';
                                        for (var i=0; i<data.length; i++){
                                            var publicacion = data[i];
                                            
                                            contenido = contenido +    '<li class="publicacion_link" id="publicacion_'+publicacion.publicacionId+'" style="line-height: 37px;">';
                                            contenido = contenido +     '<a>';
                                            contenido = contenido + '<i class="menu-icon fa fa-caret-right"></i>';
                                            contenido = contenido +  publicacion.nickname;
                                            contenido = contenido +    '</a>';
                                            contenido = contenido +    '<b class="arrow"></b>';
                                            contenido = contenido +    '</li>';
                                        }
                                         contenido = contenido + '</ul>';
                                         
                                         //Ahora enviamos el contenido que es un html encerrado en un 'ul' que se enviara al campo div para mostrar
                                         //dicho div tiene un identificador de acceso que sera escrito abajo
                                        $('#listado_publicaciones').html(contenido);
                                       // window.location.href=host+'/webPets/iniciarSesion.jsp';
                                    }else{
                                        console.log('exito');
                                    }
                                    

                                })
                                .fail(function (data) {
                                    //Si ocurrio algun error durante el proceso
                                    console.log('error');
                                })
                                .always(function (data) {
                                    //Siempre se ejecutara haya o no error
                                });   
                                
                                
                                
                                
                                $.ajax({
                                    url:  'GetUsuario',
                                    type: 'POST',
                                    data: {}
                                })

                                .done(function (data) {
                                    console.log(data);
                                    let usuario=data;
                                    if(usuario.usuarioId===0){
                                        
                                        let host=window.location.origin;
                                        let contenido = "";
                                        contenido = contenido + '<ul class="submenu" style="list-style-type: none;">';
                                        for (var i=0; i<data.length; i++){
                                            var publicacion = data[i];
                                            
                                            contenido = contenido +    '<li class="publicacion_link" id="publicacion_'+publicacion.publicacionId+'" style="line-height: 37px;">';
                                            contenido = contenido +     '<a>';
                                            contenido = contenido + '<i class="menu-icon fa fa-caret-right"></i>';
                                            contenido = contenido +  publicacion.nickname;
                                            contenido = contenido +    '</a>';
                                            contenido = contenido +    '<b class="arrow"></b>';
                                            contenido = contenido +    '</li>';
                                        }
                                         contenido = contenido + '</ul>';
                                         
                                         //Ahora enviamos el contenido que es un html encerrado en un 'ul' que se enviara al campo div para mostrar
                                         //dicho div tiene un identificador de acceso que sera escrito abajo
                                        $('#listado_publicaciones').html(contenido);
                                       // window.location.href=host+'/webPets/iniciarSesion.jsp';
                                    }else{
                                        console.log('exito');
                                    }
                                    

                                })
                                .fail(function (data) {
                                    //Si ocurrio algun error durante el proceso
                                    console.log('error');
                                })
                                .always(function (data) {
                                    //Siempre se ejecutara haya o no error
                                });    
                                
                                
                                
                                
                                
                                
                                
                                
                            
                }); 
	});*/
        
        
        jQuery(function($) {
                $('.ingresar').click(function(){
                     var password= $('#clave').val();
                     var nickname= $('#user').val();
                    console.log(password + ' y '+nickname);
                    
                    var form = $(this);
                    var formInfo = form.serialize()+'&clave='+password +'&user='+nickname;
                                console.log("validar Sesion");
                                 $.ajax({
                                    url:  'iniciarSesion',
                                    type: 'POST',
                                    data: formInfo
                                })

                                .done(function (data) {
                                    console.log(data);
                                    let mensaje=data;
                                        if(mensaje==='ok'){
                                            let host=window.location.origin;
                                            window.location.href=host+'/webPets/index.jsp';
                                        }else{
               
                                                let contenido = "";
                                                contenido = contenido + '<div class="alert alert-danger" role="alert">';
                                                contenido = contenido +     mensaje;
                                                contenido = contenido + '</div>';
                                                $('#mostrar-alerta').html(contenido);  
                                            }
                                    

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
		</script>
                <div class="col-xs-4 col-xs-offset-3"> <%@include file="footerPrincipal.jsp" %></div>
    </body>
    
</html>