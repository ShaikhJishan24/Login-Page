<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<%@ include file="allCSS.jsp" %>
</head>
<body>
	     <div class="container-fluid">
	      <div class="row">
	        <div class="col-md-3 " style="height: 63vh">
	             <form action="register" method="post">
	
	                <h3 class="mt-4">Register</h3>
	                <label  class="mt-2"> UserName </label><br>
	                <input type="text" class="w-100 mt-2 border" name="uname"><br><br>
	
	                <label class="email"> Email </label><br>
	                <input type="email" class="w-100 mt-2 border" name="email"><br><br> 
	
	                <label > Password </label><br>
	                <input type="text" class="w-100 mt-2 border" name="passwd">
	                
	                <button class="btn btn-primary mt-4 w-100 mb-3">Register</button>
	                <a href="index.html" class="">Back to Home</a>
	                
	                
	                <%
	                String err = request.getParameter("error");
	                if(err != null && err.equals("1"))
	                { 	                
	                %>
	                  <p style="color: red;">Registration failed. Please try again.</p>
	                <% 
	                }              
	                %>
	                
	                
	                
	                
	                
	                
	                
	                
	                
	                
	                
	                
	                
	             </form>
	        </div>
	      </div>
	    </div>
</body>
</html>