/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Usuario {

    /**
     * @return the rut
     */
    public String getRut() {
        return rut;
    }

    /**
     * @param rut the rut to set
     */
    public void setRut(String rut) {
        this.rut = rut;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the Apellidos
     */
    public String getApellidos() {
        return Apellidos;
    }

    /**
     * @param Apellidos the Apellidos to set
     */
    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    /**
     * @return the sexo
     */
    public String getSexo() {
        return sexo;
    }

    /**
     * @param sexo the sexo to set
     */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the edad
     */
    public String getEdad() {
        return edad;
    }

    /**
     * @param edad the edad to set
     */
    public void setEdad(String edad) {
        this.edad = edad;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    private String nombre;
     private String Apellidos;
      private String rut;
       private String sexo;
        private String edad;
         private String email;
          private String telefono;
           private String username;
            private String password;
           
            
            public Usuario(String nombre, String Apellidos, String rut,String sexo, String edad, String email, String telefono, String username, String password){
                this.nombre=nombre;
                this.Apellidos=Apellidos;
                this.rut=rut;
                this.sexo=sexo;
                this.edad=edad;
                this.email=email;
                this.telefono=telefono;
                this.username=username;
                this.password=password;
                
            }
           public Usuario(String username,String password){
               this.username= username;
               this.password= password;
               
           }
            
            static Connection conn = null;
            static PreparedStatement pstam=null;
            static ResultSet rs=null;
            static String query = null;
            
            public Usuario(){
                
            }
            
         public static boolean Login(Usuario l){
             
                query = "SELECT * from user where username = '"+l.getUsername()+"'AND password = '"+l.getPassword()+"'";
                try {
                    conn = datos.Conexion.conexion();
                   Statement st = conn.createStatement();
                   rs = st.executeQuery(query);
                   while(rs.next()){
                       return true;
                   }
                 conn.close();
             } catch (Exception e) {
             }
                return false;
         }
            public void cerrarsesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
                HttpSession s = request.getSession(true);
                s.invalidate();
                response.sendRedirect("index.jsp");
                
            }
            
    
                               
            
public static boolean Registrar (Usuario u){
   boolean respuesta = false;
   
    try {
        String query2 = "INSERT INTO user values(?,?,?,?,?,?,?,?,?);";
        conn = datos.Conexion.conexion();
        PreparedStatement pstam1= conn.prepareStatement(query2);
        pstam1.setString(1,u.getUsername());
        pstam1.setString(2,u.getPassword());
        pstam1.setString(3,u.getNombre());
        pstam1.setString(4,u.getApellidos());
        pstam1.setString(5,u.getRut());
        pstam1.setInt(6,Integer.parseInt(u.getEdad()));
        pstam1.setString(7,u.getSexo());
        pstam1.setString(8,u.getTelefono());
        pstam1.setString(9,u.getEmail());
        
        pstam1.executeUpdate();
        respuesta= true;
        conn.close();
        pstam1.close();
    } catch (Exception e) {
        respuesta = false;
    }
   return respuesta;
}

}
