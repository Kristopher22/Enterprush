<%-- 
    Document   : validaRegistro
    Created on : 30-10-2018, 11:41:43
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@page import="Clases.Usuario"%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%
         
           try{
              
                
             String name=request.getParameter("name");
                String userN=request.getParameter("username");
                     String lastname =request.getParameter("lastname");
                       String rut = request.getParameter("rut");
                             String edad = request.getParameter("edad");
                                String Correo =request.getParameter("email");
                                    String sexo=request.getParameter("sexo");
                                        String fono=request.getParameter("fono");
                                String pass=request.getParameter("password");
                                   String pass2 = request.getParameter("password2");
                  Usuario u = new Usuario(name, lastname, rut, sexo,  edad, Correo, fono, userN, pass);
                  
                boolean insert = Clases.Usuario.Registrar(u);
                if(insert== true){
                
                   response.sendRedirect("Registrar.jsp");
                }
           }catch(Exception e ){
                    out.print("<h1>no funcox2</h1>");
               
           }
                
                
         /*       
                
                if(sexo== null){
                    sexo = "s";
                }
                
                String query = "SELECT * FROM user";
                ResultSet rs = st.executeQuery(query);
                
                if(userN.equals("") || pass.equals("") || pass2.equals("") || 
                   name.equals("") || lastname.equals("") || sexo.equals("s") ||
                   Correo.equals("")){
                    
                    RequestDispatcher rd = request.getRequestDispatcher("Registro.jsp");
                    request.setAttribute("msg","Falta ingresar datos");
                    rd.forward(request, response);
                    insert = false;
                }
                
                if(!pass.equals(pass2)){
                    RequestDispatcher rd = request.getRequestDispatcher("Registro.jsp");
                    request.setAttribute("msg","Las contraseñas no coinciden");
                    rd.forward(request, response);
                    insert = false;
                }
                
                while(rs.next()){
                    if(rs.getString("username").equals(userN)){
                        RequestDispatcher rd = request.getRequestDispatcher("Registro.jsp");
                        request.setAttribute("msg","Ese nombre de usuario ya existe");
                        rd.forward(request, response);
                        insert = false;
                    }
                    
                    if(rs.getString("correo").equals(Correo)){
                        RequestDispatcher rd = request.getRequestDispatcher("Registro.jsp");
                        request.setAttribute("msg","Ese Correo ya esta registrado");
                        rd.forward(request, response);
                        insert = false;
                    }
                }
                
                if(insert){
                    String query2 = "INSERT INTO user (username,password,name,lastname,rut,edad,sexo,fono,correo) "+
                                    "VALUES (?,?,?,?,?,?,?,?,?)";

                    PreparedStatement smt = conn.prepareStatement(query2);
                     smt.setString(1,userN);
            smt.setString(2,pass);
            smt.setString(3,name);
            smt.setString(4,lastname);
            smt.setString(5,rut);
            smt.setString(6,edad);
            smt.setString(7,sexo);
            smt.setString(8,fono);
            smt.setString(9,Correo);

                    smt.executeUpdate();
                    smt.close();
                    conn.close();
                    
                    out.println("<h1>Se ha registrado correctamente </h1>");
                    out.print("<a href=\"index.jsp\"> Volver a Inicio de sesion </a>");
                }
            }catch(SQLException e){
                e.toString();
            }catch(NullPointerException e){
                response.sendRedirect("Error.jsp");
            }  */
            
            %>
    </body>
</html>
