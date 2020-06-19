<!DOCTYPE html>
<html lang="en">
<head>
  <title>welcome to bansal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>#btn {
  background-color: red; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
body{
    background-color: skyblue;
}
#pp{
    
    font-size: 50px;
    color: whitesmoke;
    
}
  </style>
</head>
<body>
    <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");

if(session.getAttribute("name")==null)
{
    
    response.sendRedirect("login.jsp");
}



%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Hospital</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="viewregisterdpatient.jsp">your Patient</a></li>
       <button form="form" type="submit" id=btn>logout</button>
    </ul>
  </div>
</nav>
  
<div class="container">
   <p id="pp">Welcome <%=session.getAttribute("name")%></p>
 
    
    
</div>
<form id="form" action="logout"></form>
</body>
</html>
