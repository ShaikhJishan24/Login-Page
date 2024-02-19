<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome Page</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

      <%
       
      if (session != null && session.getAttribute("username") != null) {
          // Get the username from the session
          String uname = (String) session.getAttribute("username");
      
      %>

      <div class="container-fluid">
        <div class="row">
          <div class="col-md-5">
               <h1 class="mt-4">Welcome <%= uname %></h1>
               <p > We're dilighted to have you on our platform</p>
               <p >Explore, leran and connect with our vibrant community!</p>
               <p>feel free to stay as long as you like and when you are ready</p>
               <p>you can <a href="logout.jsp">LogOut</a> Securely</p>
              
          </div>
        </div>
      </div>
      
      <%
      } 
    	  else {
    		  response.sendRedirect("login.jsp");
    	  }
        
 
      %>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>