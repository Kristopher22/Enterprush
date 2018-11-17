
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
         
      String user = request.getParameter("txtuser");
      String pass = request.getParameter("txtpass");
      
      
      if( Usuario.Login(new Usuario(user,pass))){
          response.sendRedirect("Menu.jsp");
      }else{
          out.println("Cagaste");
      }
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
    /* try{
            ResultSet rs;
      
        Class.forName("com.mysql.jdbc.Driver");
                
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Enterprush","root","");
                String query = "SELECT username, password FROM user WHERE username = '"+user+"'AND password = '"+pass+"'";
                Statement st = conn.createStatement();
                rs = st.executeQuery(query);
      
   

                if (rs.next()){
                               HttpSession sc = (HttpSession) request.getSession();
                   sc.setAttribute("user",user);
                         sc.setAttribute("pass",pass);
                         
            response.sendRedirect("Menu.jsp");
                }else{
*/
%>
<script language="javascript" type="text/javascript">
    function revisar (){
        alert("Cállese viejo lesbiano");
        setTimeout (function () {document.location.href = "index.jsp"}, 0.00001);
    }
    document.writeln(revisar());
</script>
<%
    /*
                }
             }catch(SQLException e){
                 e.toString();
            }catch(NullPointerException e){
               System.out.println("Problemas "+ e.getMessage());
            }
            
      
      */
      
      


      
      %>
    </body>
</html>
