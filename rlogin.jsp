<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="signup.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="skyblue">
    <div class="login-box">
    
        <h1>login  here</h1>
        <form   action="rlogin" method="post">
            
            <input type="text" name="email" placeholder="Enter email">
          
           
         
            <input type="password" name="password" placeholder="Enter password">
         
            
 
            <input type="submit" name="btn" value="Login">
              
            </form>
      
    </div>
        <a href="index.html">home</a>
        <a href="docterregistration.jsp">register here</a>
    <style type="text/css">body{
    margin: 0;
    padding: 0;
   
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}
#an{
    margin-top: 600px;
}
.login-box{
    width: 320px;
    height: 300px;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
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


    </body>
</html>