package util;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author win 10
 */

    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;
/**
 *
 * @author LENOVO
 */
public class SqlUtil {
  public static Connection conn;
  public static Statement stmt;
  public static final String db_username="root";
  
    public static final String db_pass="abhi";
     public static final String db_url="jdbc:mysql://localhost:3306/hospital";
     
public static void connectDb() throws ClassNotFoundException, SQLException{
    Class.forName("com.mysql.jdbc.Driver");
      String db_password = "abhi";
  conn= DriverManager.getConnection(db_url,db_username,db_pass);
  stmt=conn.createStatement();
}

static boolean create(String query) throws SQLException
{
    boolean success=false;
    if(conn!=null)
    {
       success=stmt.execute(query);
    }
    return success;
}

public static  ResultSet read(String query) throws SQLException{
    ResultSet rs=null;
    if (query!=null) {
        rs=stmt.executeQuery(query);
    }
    return rs;
}

public static int insert(String query) throws SQLException{
    int result=-1;
    if (query!=null) {
       stmt.executeUpdate(query);
    }
    return result;
}

static int update(String query) throws SQLException{
    int result=-1;
    if (query!=null) {
        result=stmt.executeUpdate(query);
    }
    return result;
}

static int delete(String query) throws SQLException{
    int result=-1;
    if (query!=null) {
        result=stmt.executeUpdate(query);
    }
    return result;
}

    public static void close() throws SQLException{
    if (conn!=null) {
        conn.close();
    }
   if(stmt!=null){
       stmt.close();
   }
    
}

}


    

