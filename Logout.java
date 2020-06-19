
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @abhinav singh kushwah
 */
@WebServlet(urlPatterns = {"/logout"})
public class Logout extends HttpServlet {

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		session.removeAttribute("name");
		session.invalidate();
		response.sendRedirect("login.jsp");
	}


            
            
            
            
            
            
           
        }
    

   

