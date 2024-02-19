package servletpack;

import java.io.IOException;

import Daopack.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import loginBean.User;

@WebServlet("/register")
public class Registerservlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uname = req.getParameter("uname");
		String Email = req.getParameter("email");
		String passwd = req.getParameter("passwd");
		
		User u = new User();
		u.setUname(uname);
		u.setEmail(Email);
		u.setPasswd(passwd);
		
		if(UserDao.addUser(u)){
			resp.sendRedirect("login.jsp?Registration=success");
		}
		else {
			resp.sendRedirect("register.jsp?error=1");
		}
		
	}
       
	
	
	
	
	
}
