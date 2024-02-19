<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@ include file="allCSS.jsp" %>
<%@ page import="java.sql.*, connpack.*" %>
<%-- <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> --%>
</head>
<body>    
         <!-- only for checking database is connect or not -->
         <%-- <%
	         Connection con = Myconnection.Mydb();
	         out.print(con);
         %> --%>

         
	     <div class="container-fluid">
	      <div class="row">       
	        <div class="col-md-3">
	             <form action="loginservlet" method="post">
	                
	                <h3 class="mt-4">Login</h3>
	                <label  class="mt-2"> UserName </label><br>
	                <input type="text" class="w-100 mt-2 border" name="uname"><br><br>
	
	                <label > Password </label><br>
	                <input type="text" class="w-100 mt-2 border"  name="passwd">
	                
	                <button class="btn btn-primary mt-4 w-100 mb-3">Login</button>
	                
	                <a href="index.html" >Back to Home</a>
	                
	                <%
		                String err = request.getParameter("error");
		                
		                if(err != null && err.equals("1"))
		                {
		            %>  
		                <p class="text-danger ms-4 mt-4">Invalid Username And Password! Try Again</p>
	                <%
		                }
	                %>  
	                
	               <%
		                String rs = request.getParameter("Registration");
		                
		                if(rs != null && rs.equals("success"))
		                {
		            %>  
		                <p class="text-danger ms-4 mt-4">Your Registration is Successful. Please Login</p>
	                <%
		                }
	                %> 
	                
	                
	             </form>
	        </div>
	      </div>
	    </div>
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
</body>
</html>