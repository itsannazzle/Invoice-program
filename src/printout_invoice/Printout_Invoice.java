/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package printout_invoice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author ASUS
 */
public class Printout_Invoice {
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      // post();
    }
    
    public static Connection getConnection() throws Exception{
        try{
            String driver = "com.mysql.cj.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/inv";
            String username = "root";
            String password = "";
           Class.forName(driver);
           Connection con = DriverManager.getConnection(url, username, password);
           System.out.println("Connected");
           return con;
        } catch (Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public static void post(){
        String var1 = "admin";
        String var = "admin";
        
        try{
            Connection con = getConnection();
            PreparedStatement post = con.prepareStatement("INSERT INTO admin (username,password) VALUES ('"+var1+"','"+var+"')");
            post.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
        } finally {
            System.out.println("post complete");
        }
    }
    }

