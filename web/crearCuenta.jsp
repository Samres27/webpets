<%-- 
    Document   : registroUsuario
    Created on : 29 abr. de 2022, 18:08:03
    Author     : julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <script src="assets/js/jquery-1.11.3.min.js"></script> 
        <script src="assets/js/bootstrap.min.js"></script>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>crearCuenta</title>
            <%@include file="css.jsp" %>
    </head>
    <body>
        <div style="height: 100px"></div>
            <div class="col-md-12 "style="margin:  20px">
                <div class="col-md-1"></div>
                <div class="col-md-4 " style="height: 60px">
                    <input type="text" class="form-control" style="height: 60px"id="inputNombre" placeholder="Nombre">
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-5 " style="height: 60px">
                    <input type="text" class="form-control" style="height: 60px"id="inputApellidos" placeholder="Apellidos">
                </div>
            </div>
            <div class="col-md-12 "style="margin:  20px">
                <div class="col-md-1"></div>
                <div class="col-md-10 " style="height: 60px">
                    <input type="text" class="form-control"style="height: 60px" id="inputUsuario" placeholder="Usuario">
                </div>
                
            </div>
            <div class="col-md-12 "style="margin:  20px">
                <div class="col-md-1"></div>
                <div class="col-md-10 " style="height: 60px">
                    <input type="text" class="form-control"style="height: 60px" id="inputContraseniaNueva" placeholder="Contraseña Nueva"style="height: 60px">
                </div>
            </div> 
            <div class="col-md-12 "style="margin:  20px">
                <div class="col-md-1"></div>
                <div class="col-md-5 " style="height: 60px">
                    <input type="date" class="form-control" style="height: 60px"id="inputDiaMesAnio" placeholder="Dia/mes/anio">
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-2 " style="height: 60px">
                    <label style="font-size:23px;line-height: 23px " >Fecha De nacimiento</label>
                </div>
            </div>
            <div class="col-md-12 "style="margin:  20px">
                <div class="col-md-1"></div>
                <div class="col-md-3 " style="height: 60px">
                    <select id="disabledSelect" class="form-control"style="height: 60px">
                        <option>Genero</option>
                        <option>Hombre</option><!-- masculino -->
                        <option>Mujer</option><!-- femenino -->
                    </select>
                </div>
                <div class="col-md-5"></div>
                <div class="col-md-2 " style="height: 60px">
                    <button type="submit" class="btn-block"style="height: 60px;border-radius: 100px;background-color: #FF8067  " >Crear</button>
                </div>
            </div>

        </div>
        <div class="row">
            
            
        </div>

		
			

			
		

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

