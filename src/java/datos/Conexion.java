/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package datos;


import java.sql.Connection;
import java.sql.DriverManager;



public class Conexion {
    static String url = "jdbc:mysql://localhost:3306/Enterprush"; 
    static String user = "root"; 
    static String pw = ""; 
   
    public static Connection conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection(url,user,pw);
           return conn;
        } catch (Exception e) {
            return null;
//System.out.print(e.getMessage());
        }
    }
    
}
