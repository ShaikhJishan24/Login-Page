package servletpack;

import java.io.IOException;

import Daopack.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginservlet")
public class lognservlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Uname = req.getParameter("uname");
		String passwd = req.getParameter("passwd");
		
		if(UserDao.isValidUser(Uname, passwd)) {
			HttpSession se = req.getSession();
			se.setAttribute("username", Uname);
			resp.sendRedirect("welcome.jsp");
		}
		else {
			resp.sendRedirect("login.jsp?error=1");
			System.out.println("Invalid Username and password");
			
		}
		
	}
    
	
	
	
	
}
