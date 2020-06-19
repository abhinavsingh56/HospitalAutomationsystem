/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author abhinav
 */
@WebServlet(urlPatterns = {"/rlogin"})
public class rlogin extends HttpServlet {


  
     
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
      String email=request.getParameter("email");
      String password=request.getParameter("password");
      if(email.equals("recep")&&password.equals("123"))
      {
          response.sendRedirect("reception.jsp");
      }
      else{
          response.sendRedirect("error.html");
      }
        
    
}
    
}
