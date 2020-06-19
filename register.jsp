<%-- 
    Document   : feedattendence
    Created on : 24 Oct, 2019, 8:04:09 PM
    Author     : win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register.jsp</title>
    </head>
    <body>
        <h1>register here</h1>
    </body>
</html>
<%-- 
    Document   : sports management system
    Created on : 23 Oct, 2019, 10:41:52 PM
    Author     : abhinav singh kushwah
--%>

<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid blue;
  padding: 2px;
}

#customers tr:nth-child(even){background-color:blue;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: blue;
  color: white;
}
</style>
</head>
<body bgcolor="skyblue">

<table id="customers">
  <tr>
    <th>name</th>
    <th>pid</th>
    <th>wardno</th>
    <th>docterallocated</th>
    <th>contactno</th>
    <th>address</th>
    
    
    <th>Feed Data</th>
  </tr>
  <tr>
  <form>  <td><input type="text" value="" name="name"></td>
    <td><input type="text" value="" name="pid"></td>
    <td><input type="text" value="" name="wardno"></td>
    <td><input type="text" value="" name=" docterallocated"></td>
     <td><input type="text" value="" name="contactno"></td>
      <td><input type="text" value="" name="address"></td>
   
 <td> <input type="submit" name="submit" value="feed"></td> 
  </form>
   
  </tr>
 </table>

    
    
    
    
    
    
    
    
    <%@page import="java.sql.*,java.util.*"%>

<%        
    
    
          String name=request.getParameter("name");
          String pid = request.getParameter("pid");
          String wardno=request.getParameter("wardno");
          String  docterallocated=request.getParameter(" docterallocated");
          String contactno=request.getParameter("contactno");
          String address=request.getParameter("address");
         
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into patient(name,pid,wardno, docterallocated,contactno,address)values('"+name+"','"+pid+"','"+wardno+"','"+docterallocated+"','"+contactno+"','"+address+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}



    
    
    
    
    
    
    
    
    
    
</body>
</html>

