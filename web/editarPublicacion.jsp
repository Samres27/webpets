<%-- 
    Document   : registroUsuario
    Created on : 29 abr. de 2022, 18:08:03
    Author     : julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="css.jsp" %>
    </head>
    <body>
        
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Gestión de Editorial</title>

		<meta name="description" content="Christian Gámez Udemy" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

                <%@include file="css.jsp" %>
                
	</head>

	<body class="no-skin">
		<div><%@include file="headerPrincipal.jsp" %></div> 
		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container');}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar');}catch(e){}
				</script>

				

				<div><%@include file="menuPrincipal.jsp" %></div>

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					

					<div class="page-content">
						

						<div class="page-header">
							<h1>
								Pruebas Unitarias Controlador
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
                                                                Red social
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<!-- /.row -->

								<div class="row">
									<div class="col-xs-12">
										<div class="table-header">
											Editar Publicacion
										</div>

										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
										 <form  class="form-horizontal" >
                                                                                       
                                                                                        <div class="form-group">
                                                                                            <label class ="col-sm-3 control-label no-padding-right">
                                                                                                 Usuario:

                                                                                            </label>
                                                                                            <div class="col-sm-9">
                                                                                                <input type="text" id="nickname" name="nickname" value="" placeholder="Nickname de usuario" />
                                                                                            </div>
                                                                                        </div>
                                                                                        <button class="btn btn-buscar-nickname" type="button">
                                                                                            <i class="fa fa-find"></i>
                                                                                            Buscar
                                                                                        </button>
                                                                                     
                                                                                 </form>  
										</div>
                                                                                <div class="row">
                                                                                    <div class="col-md-4">
                                                                                        <div id="listado_publicaciones">
                                                                                                
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-7">
                                                                                         <form action="EditarPublicacionControlador" method="post" class="form-horizontal" >
                                                                                                vista preliminar
                                                                                           <div id="publicacion" >

                                                                                           </div>
                                                                                           <div id="mensaje-de-edicion">

                                                                                           </div>
                                                                                            <button class="btn btn-success" type="submit">
                                                                                                <i class="fa fa save"></i>
                                                                                                Editar
                                                                                            </button>
                                                                                         </form>
                                                                                    </div>
                                                                                    
                                                                                </div>
                                                                                
                                                                                          
                                                                                <img id="img" src="" width="100%" />
                                                                                <div id="base"></div>

											
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			 <div> <%@include file="footerPrincipal.jsp" %></div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		

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
		<script src="assets/js/bootstrap.min.js"></script>

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
                        
                        function recuperarPublicacion(form,id){
                            //envio el formulario donde buscara el request y el aparametro que en el controlador va a hubicar "id = id->del parametro" 
                            var formInfo = form.serialize()+'&id='+id;
                            $.ajax({
                                        url:  'RecuperarPublicacionControlador',
                                        type: 'POST',
                                        data: formInfo
                                    })
                                    
                                    .done(function (data) {  
                                        //si el proceso finalizo correctamente.
                                        var publimostrar = data;
                                        console.log(data);
                                        
                                        let contenid = "";              
                                        contenid = contenid + '<div class="dark">';
                                       
                                            contenid = contenid +        '<small> Fecha de publicacion: '+publimostrar.fechaPublicacion+' </small>';
                                            contenid = contenid +        '<label class ="col-sm-7 control-label no-padding-right"> Contenido Publicacion:  </label>';
                                            contenid = contenid +        '<textarea id="texto_edicion" name="texto_edicion" rows="5" style="width:100%; justify-content: nomal;" >'+publimostrar.contenidoPublicacion+'</textarea>';
                                            contenid = contenid +        '<input type="hidden" id="publicacion_id" name="publicacion_id" value="'+id+'" />';
                                            contenid = contenid +        '<input type="hidden" id="idUsuario" name="idUsuario" value="'+publimostrar.usuarioId+'" />';

                                                    for (var j=0; j<publimostrar.multimedia.length; j++){
                                                contenid = contenid +         '<div >';
                                                contenid = contenid +              '<input class="files-upload" type="file" id="asd'+j+'"  />';
                                                contenid = contenid +                '<img class="nav-user-photo" id="img'+j+'" src="'+publimostrar.multimedia[j].contenidoMultimedia+'" width="100%" alt="imagen publicacion" />';
                                                contenid = contenid +              '<input type="hidden" class="multimedia-img" id="multimedia'+j+'" name="multimedia" value="'+publimostrar.multimedia[j].contenidoMultimedia+'" />';

                                                contenid = contenid +        '</div>';
                                                //para llamar a las imagnes les genero un id
                                                }
                                            
                                         
                                        
                                        contenid = contenid + '</div>';
                                        contenid = contenid +        '<div class="row">'; 
                                        contenid = contenid +        '<label class ="col-md-12 control-label no-padding-right"><small>Comentarios: </small> <i class="ace-icon fa fa-caret-down"></i></label>';
                                        contenid = contenid +        '<div class="row">';
                                        contenid = contenid +           '<button class="btn btn-warning btn-editar-pub" type="button">';
                                        contenid = contenid +                  '<i class="fa fa save"></i>';
                                        contenid = contenid +                      'Editar';
                                        contenid = contenid +           '</button>';
                                        
                                        contenid = contenid +        '</div>';
                                        contenid = contenid + '</div>';
                                         
                                         //Ahora enviamos el contenido que es un html encerrado en un 'ul' que se enviara al campo div para mostrar
                                         //dicho div tiene un identificador de acceso que sera escrito abajo
                                         
                                         
                                        $('#publicacion').html(contenid);
                                        
                                        
                                        for (let k=0; k<publimostrar.multimedia.length; k++){
                                            $("#asd"+k).change(function(){
                                            readImage( this, k);
                                             });
                                             //Leo las imagenes que tengo en el html, en el llamado al id por funcion
                                        }
                                        let userid= publimostrar.usuarioId;
                                        $('.btn-editar-pub').click(function(){
                                            editarpublicacion(form, id,userid);
                                        });
                                    })
                                    .fail(function (data) {
                                        //Si ocurrio algun error durante el proceso
                                        console.log('error');
                                    })
                                    .always(function (data) {
                                        //Siempre se ejecutara haya o no error
                                    });
                        }
                        //Realizo la funcion que lee los id de las imagenes 
                        function readImage(input,index) { console.log(index);
                            if ( input.files && input.files[0] ) {
                                var FR= new FileReader();
                                FR.onload = function(e) {
                                     $('#img'+index).attr( "src", e.target.result );
                                     $('#multimedia'+index).val( e.target.result );
                                };       
                                FR.readAsDataURL( input.files[0] );
                            }
                        }
                        
                        /*function editarpublicacion(form, id, idUsuario){
                            console.log('editar publicacion con idPublicacion'+id+'con  id user '+idUsuario);
                            console.log(form);
                            let arreglo = [];
                            
                            arreglo = $("input[name='multimedia[]']").map(function(){return $(this).val();}).get();
                                    console.log(arreglo);
                            let textorecuperado = $('#texto_edicion').val();
                                console.log(textorecuperado);
                            let formInfo = form.serialize()+'&id='+id + '&texto_pub='+textorecuperado +'&imagenes='+JSON.stringify(arreglo)+ '&idUsuario='+idUsuario;
                            console.log(formInfo);
                            $.ajax({
                                        url:  'EditarPublicacionControlador',
                                        type: 'POST',
                                        data: formInfo
                                    })
                                    
                                    .done(function (data) {
                                        $('#mensaje-de-edicion').html(data);
                                    })
                                    .fail(function (data) {
                                        //Si ocurrio algun error durante el proceso
                                        console.log('error');
                                    })
                                    .always(function (data) {
                                        //Siempre se ejecutara haya o no error
                                    });
                        }*/
    
                    function editarpublicacion(form, id, idUsuario){
                            console.log('editar publicacion con idPublicacion'+id+'con  id user '+idUsuario);
                            //console.log(form);
                            let arreglo = [];
                            let ids = $(".files-upload").map(function(){return $(this).attr("id");}).get();
                            console.log(ids);
                             var form_data = new FormData();
                              var totalfiles = document.getElementById('files').files.length;
                                for (var index = 0; index < totalfiles; index++) {
                                   form_data.append("files[]", document.getElementById('files').files[index]);
                                }
                             console.log(form_data);
                            
                            let textorecuperado = $('#texto_edicion').val();
                                console.log(textorecuperado);
                                
                           // let formInfo = form_data+'&id='+id + '&texto_pub='+textorecuperado + '&idUsuario='+idUsuario;
                          //  console.log(formInfo);
                            
                            $.ajax({
                                        url:  'EditarPublicacionControlador',
                                        type: 'POST',
                                        data: form_data
                                       
                                        //enctype: 'multipart/form-data'
                                    })
                                    
                                    .done(function (data) {
                                        $('#mensaje-de-edicion').html(data);
                                    })
                                    .fail(function (data) {
                                        //Si ocurrio algun error durante el proceso
                                        console.log('error');
                                    })
                                    .always(function (data) {
                                        //Siempre se ejecutara haya o no error
                                    });
                        }
    
                    
                        
                        
                        
                        
		</script>
	</body>
</html>


    </body>
</html>

