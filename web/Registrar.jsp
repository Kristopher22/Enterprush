<%-- 
    Document   : Registrar
    Created on : 26-10-2018, 0:14:21
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/registro.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
<!------ Include the above in your HEAD tag ---------->



<div class="container">
    <br>
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Create una Cuenta</h4>
	
	
        <form action="validaRegistro.jsp">
            <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="name" class="form-control" placeholder="Nombre" type="text">
    </div> 
            <!-- form-group// -->
            
           <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="username" class="form-control" placeholder="Usuario" type="text">
    </div> 
            <!-- form-group// -->
             
            
            <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="lastname" class="form-control" placeholder="Apellido" type="text">
    </div> 
            <!-- form-group// -->
            
            
         <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="rut" class="form-control" placeholder="Rut" type="text">
    </div> 
            <!-- form-group// -->   
            
            
          <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="edad" class="form-control" placeholder="Edad" type="text">
    </div> 
            <!-- form-group// -->   
            
            
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control" placeholder="Email " type="email">
    </div>
            <!-- form-group// -->
            
       <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
		</div>
		<select name="sexo" class="form-control">
			<option selected="sexo">Sexo</option>
                        <option value="hombre">Hombre</option>
			<option value="mujer">Mujer</option>
                        <option value="viejo lesbiano">Viejo lesbiano</option>
		</select>
	</div> <!-- form-group end.// -->
     
            
           
        
            
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		
    	<input name="fono" class="form-control" placeholder="Telefono o celular" type="text">
    </div> <!-- form-group// -->
 
    
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input  name="password" class="form-control" placeholder="Contraseña" type="password">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password2" class="form-control" placeholder="Repetir Contraseña" type="password">
    </div> <!-- form-group// -->                                      
    <div class="form-group">
        <input type="submit" class="btn btn-primary btn-block" value="Enviar">
    </div> <!-- form-group// -->
                 <%
        String ms = (String) request.getAttribute("msg");
            if(ms != null)
            out.println(ms);
            ms = null;
        
        
        %>
    
    <p class="text-center">Ya tienes Cuenta? <a href="index.jsp">Inicia Sesión</a> </p>                                                                 
</form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->

	
<br><br>
<article class="bg-secondary mb-3">  
<div class="card-body text-center">
    <h3 class="text-white mt-3">Bootstrap 4 UI KIT</h3>
<p class="h5 text-white">Components and templates  <br> for Ecommerce, marketplace, booking websites 
and product landing pages</p>   <br>
<p><a class="btn btn-warning" target="_blank" href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com  
 <i class="fa fa-window-restore "></i></a></p>
</div>
<br><br>
</article>
    </body>
</html>
