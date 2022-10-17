<%-- 
    Document   : login
    Created on : 16 oct. 2022, 17:26:22
    Author     : Accent W2000
--%>

<%@page info="" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <style><%@include file="/WEB-INF/css/styles.css" %></style>
    </head>
    
    <body>

        <jsp:include page="header.jsp"></jsp:include>
        
         <div class="container col-md-8 col-md-offset-3" style="overflow: auto">
             
           <h1><%=getServletInfo()%></h1>
            
            <form  method="post">

                <div class="form-group">
                    <label for="uname">Nom:</label> <input type="text" class="form-control" id="username" placeholder="User Name" name="username" required>
                </div>

                <div class="form-group">
                    <label for="uname">Mot de passe:</label> <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                </div>

                <button type="submit" class="btn btn-primary">Se Connecter</button>
            </form>
         
            <%
              String name = request.getParameter("username");         
              String password = request.getParameter("password");

              if(name == null | password == null)
              {
                 out.println("<h4 style='color:red'>Une erreur c'est produite </h4>");
              }else{
                  response.sendRedirect("acceuil.jsp");
              }
          %>
        </div>
        
       

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
