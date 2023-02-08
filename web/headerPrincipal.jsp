<div class="row">
    <div class="col-md-12">
     <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container" id="nav-container">
        <div class="navbar-header">
        <div class="pull-right">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
        </div>
        <div class="pull-left">
            <a class="navbar-brand hidden-md hidden-lg" href="#" style="padding: 4px 11px; margin-left: -48px;"><img alt="Logo" src="assets/images/avatars/avatar4.png" class="h-20px h-lg-30px " id="img-logo"></a>
            <a class="navbar-brand hidden-sm hidden-xs" href="#" style="padding: 4px 11px;"><img alt="Logo" src="assets/images/avatars/Logo.png" class="h-20px h-lg-30px" id="img-logo"></a>         
        </div>
            <div class="navbar-collapse collapse pull-right containerNav pullDown" style="padding-top: 10px;">
         <ul class="nav navbar-nav navbar-right ">
            <li class="active"><a href="#">Inicio</a></li>
            <li><a href="#about">Perfil</a></li>
            <li><a href="#contact">Añadir Amigos</a></li>
            <li><a href="#" class="hidden-md hidden-lg" >logout</a> </li>
         </ul>
        </div>
       </div>
          
          <div>
        <div class="pull-right padding-right-30px">        	
	         <form class="navbar-form pull-right" role="search">
	            <div class="input-group">
	               <input type="text" class="form-control search-input-header" placeholder="Search">
	               <div class="input-group-btn">
	                  <button type="submit" class="btn btn-default btn-buscar-pub"><span class="glyphicon glyphicon-search"></span></button>
	               </div>
                        
                          
                        
	            </div>  
                     <div class="input-group">
                         <a class="navbar-brand hidden-sm hidden-xs" href="#" style="padding: 0px 11px;"><img alt="Logo" src="assets/images/avatars/avatar4.png" class="h-20px h-lg-30px " id="img-logo"></a>  
                     <a href="#" class="btn btn-outline btn-circle example_d hidden-sm hidden-xs">log out</a>
                     </div>  
	         </form>
                    
        </div>
              
      </div>
      </div>
     </div>
    </div>
</div>


      <!--/.navbar-collapse -->

<script type="text/javascript">
    function validarSesionUsuario(){
        console.log("validar sesion");
         $.ajax({
            url:  'SesionControlador',
            type: 'POST',
            data: {}
        })

        .done(function (data) {
            console.log(data);
            if(data==='no'){
                let host=window.location.origin;
                
                window.location.href=host+'/webPets/iniciarSesion.jsp';
            }
            
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