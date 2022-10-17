<%-- 
    Document   : javaBean
    Created on : 17 oct. 2022, 06:58:26
    Author     : Accent W2000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style><%@include file="/WEB-INF/css/styles.css"%></style>
    </head>
    <body>
        <%@ include file="header.jsp"%>
        
        <p>Test d'utilisation d'un Bean dans une JSP </p>
        <jsp:useBean id="etudiant" scope="request" class="test.Etudiant"/>
        
        <p>nom initial = <%=etudiant.getNom() %></p>  
        <p>nom prenom = <%=etudiant.getPrenom() %></p>   
        <p>matricule = <%=etudiant.getMatricule() %></p>
        
       
        <p>nom mis à jour = <%= etudiant.getNom() %></p>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
