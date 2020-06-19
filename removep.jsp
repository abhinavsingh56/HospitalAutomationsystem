<%-- 
    Document   : removedoc
    Created on : 15 Feb, 2020, 6:11:56 PM
    Author     : win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            ID<input type="text" placeholder="enter id to remove docter" name="id">
            
            
            <input type="submit" value="delete">
        </form>
    </body>
</html>
<%@page import="java.sql.*;"%>  
<%
  
 Connection conn=null;  
 Statement stmt=null;
try{
    String id=request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    conn=DriverManager.getConnection("jdbc:mysql://localhost/hospital","root","abhi");
    stmt=conn.createStatement();
    
    String sql="delete  from patient where pid='"+id+"'";
    stmt.execute(sql);
        
    }
catch(Exception e){
    out.print("oops"+e);
} 
conn.close();
stmt.close();




%>