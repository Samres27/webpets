package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    public static Connection conectar(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/petsdb", "root", "1358");
        } catch(ClassNotFoundException e){
            return null;
        }catch(SQLException ex) {
            return null;
        }
             
    }
}


