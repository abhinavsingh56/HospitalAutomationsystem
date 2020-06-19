<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String message=request.getParameter("message");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into form(name,email,message)values('"+name+"','"+email+"','"+message+"')");
response.sendRedirect("success.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>