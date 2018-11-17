<%-- 
    Document   : index
    Created on : 25-10-2018, 23:36:13
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <link href="css/Stile.css" rel="stylesheet" type="text/css"/>
        <title>EnterPrush</title>
        <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfGNt8MUyE9hzvlrraHzsyoyAQo2scpD4wpvFgXTb61g0oNgf8">
    </head>
<body>



<section class="login-block">
    <div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">Bienvenido</h2>
                    
                    
       <!------ Inicio del login ---------->             
  
  
 <form action="Validar.jsp" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1" class="text-uppercase">Usuario</label>
    <input  type="text"  name="txtuser" class="form-control" placeholder="">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1" class="text-uppercase">Contraseña</label>
    <input type="password" name="txtpass" class="form-control" placeholder="">
  </div>
 
  
  
  
    <div class="form-check">
    <label class="form-check-label">

       <input type="submit" class="btn btn-login float-right" value="Iniciar">
    </label>
  </div>
       <%
        String ms = (String) request.getAttribute("msg");
            if(ms != null){
            out.println(ms);
            ms = null;
        
            }
        %>
        
     
     <div>   <label class="btn-registrar">
             <a href="Registrar.jsp" class="btn btn-login float-right">REGISTRARSE</a>
            
            
        </label>
     </div>
     
   
    
       
</form>
                     <!------ Login ---------->
<div class="copy-text">Creado Por <a href="https://www.facebook.com/cristopherskate.espinoza">Cristopher Espinoza</a></div>
		</div>
		<div class="col-md-8 banner-sec">
                    
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                   <!------ indicadores ---------->
                 <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
                    <!------ Contenedor Slide ---------->   
            <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid" src="img/pexels-photo.jpg"alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>¿Quiénes somos?</h2>
            <p>Somos un grupo de trabajo que nos encargamos en ayudarte para que puedas administrar tu negocio de manera fácil y eficiente, por lo que te brindamos las herramientas necesarias para tener el control de tu local comercial.</p>
        </div>	
  </div>
    </div>
                
                
    <div class="carousel-item">
      <img class="d-block img-fluid" src="img/people-coffee-tea-meeting.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>¿Cuáles son nuestros servicios?</h2>
            <p>Los servicios que se ofrece son: </p>
        </div>	
    </div>
    </div>
                  <div class="carousel-item">
      <img class="d-block img-fluid" src="img/accounting-alone-analysis-938963.jpg"  alt="First slide">
      
      
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>This is Heaven</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
        </div>	
    </div>
    </div>

                     
                
                
                
                
            </div>	   
		    
		</div>
	</div>
</div>
</section>
    </body>
</html>
