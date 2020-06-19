<%-- 
    Document   : newjsp
    Created on : 14 Jun, 2019, 9:26:11 AM
    Author     : win 10
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="signup.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="skyblue">
        
        <h1>WELCOME TO OUR DOCTER'S COMMUNITY</h1>
    <div class="login-box">
   
        <h1>Register yourself here</h1>
            <form>
            
            <input type="text" name="name" placeholder="Enter name">
          
           
         
            <input type="text" name="email" placeholder="Enter email">
            <input type="text" name="password" placeholder="Set password">
         
            <input type="text" name="contactno" placeholder="contact no">
          
            <input type="text" name="sp" placeholder="Enter speciality">
            <input type="text" name="id" placeholder="Enter id">
 
            <input type="submit" name="btn" value="Register">
              
            </form>
        
        
        </div>
    <style type="text/css">body{
    margin: 0;
    padding: 0;
   
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}
.login-box{
    width: 320px;
    height: 550px;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
    margin-bottom: 20px;
}

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}
.login-box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.login-box input{
    width: 100%;
    margin-bottom: 20px;
}
.login-box input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.login-box input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #1c8adb;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.login-box input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}

.login-box a{
    text-decoration: none;
    font-size: 14px;
    color: #fff;
}
.login-box a:hover
{
    color: #39dc79;
}

</Style>



<%@page import="java.sql.*,java.util.*"%>

<%
          String name = request.getParameter("name");
          String email=request.getParameter("email");
           String password=request.getParameter("password");
          String contactno=request.getParameter("contactno");
          String sp=request.getParameter("sp");
          String id=request.getParameter("id");
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into docter(name,email,password,contactno,sp,id)values('"+name+"','"+email+"','"+password+"','"+contactno+"','"+sp+"','"+id+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>





        
    </body>
</html>
