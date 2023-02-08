<%-- 
    Document   : editarMascota
    Created on : 8 may. de 2022, 01:29:41
    Author     : Daniel
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
											Editar Mascota
										</div>

										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
                                                                                        <form action="EditarMascota" method="post" class="form-horizontal">
                                                                                            
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                      Nombre de usuario :
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="nickname" value="Jaro"/>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                      Contraseña
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="clave" value="" placeholder="1234" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                      Nuevo nombre de mascota:
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="nombre" value="" placeholder="Lucifer" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nueva edad de mascota :
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="edadMascota" value="10" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nuevo sexo de Mascota:
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="sexoMascota" value="Macho"  />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <label class ="col-sm-3 control-label no-padding-right">
                                                                                                     Nueva especie :
                                                                                                     
                                                                                                </label>
                                                                                                <div class="col-sm-9">
                                                                                                    <input type="text" name="especie" value="Caiman" />
                                                                                                </div>
                                                                                            </div>
                                                                                            <button class="btn btn-warning" type="submit">
                                                                                                <i class="fa fa save"></i>
                                                                                                Guardar
                                                                                            </button>
                                                                                            <div>
                                                                                                <%=(request.getAttribute("mensaje")!=null?request.getAttribute("mensaje"):"") %>
                                                                                                
                                                                                            </div>
                                                                                        </form>
											</div>

											
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
                            
                        });
                      
                        
                        
                        
		</script>
	</body>
</html>


    </body>
</html>
