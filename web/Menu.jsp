<%-- 
    Document   : Menu
    Created on : 26-10-2018, 11:37:06
    Author     : abdon_g501
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <link href="css/menu.css" rel="stylesheet" type="text/css"/>
      <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
      <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
      <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<!--<div class="row">
    <div class="col-sm-3">-->
<div class="nav-side-menu">

    <div class="brand">Gestión de Empresa</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">
                <li  data-toggle="collapse" data-target="#lst1" class="collapsed active">
                  <a href="#"><i class="fa fa-dashboard fa-lg"></i>Iniciar Actividad <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="lst1">
                    <li class="active"><a href="#">Alta de contratos</a></li>
                    
                      <li class="active"><a href="ControlPersonal.jsp">Control del Personal</a></li>
                        <li class="active"><a href="#">Sueldos</a></li>
                </ul>
                
                <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                  <a href="#"><i class="fa fa-search fa-lg"></i>Consultar <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="products">
                    <li><a href="#">Expediente</a></li>
                    <li><a href="#">Base de datos intermediarios</a></li>
                </ul>
 <li>
                  <a href="#">
                  <i class="fa fa-user fa-lg"></i> Conflicto de Interés (Anexo II)
                  </a>
                  </li>
                 <li>
                  <a href="#">
                  <i class="fa fa-user fa-lg"></i> Reportes
                  </a>
                  </li>
                <li  data-toggle="collapse" data-target="#Eval" class="collapsed active">
                  <a href="#"><i class="fa fa-search fa-lg"></i>Evaluaciones <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="Eval">
                    <li><a href="#">Anual</a></li>
                </ul>
                <li  data-toggle="collapse" data-target="#config" class="collapsed active">
                  <a href="#"><i class="fa fa-search fa-lg"></i>Configuración <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="config">
                    <li><a href="#">Cuestionarios</a></li>
                    <li><a href="#">Formatos</a></li>
                    <li><a href="#">Cuentas Email's</a></li>
                </ul>
                <li>
                  <a href="#">
                  <i class="fa fa-users fa-lg"></i> Sucursales
                  </a>
                </li>
            </ul>
     </div>
</div>

    </div>
    
    </div>
<!--</div> -->
    </body>
</html>
