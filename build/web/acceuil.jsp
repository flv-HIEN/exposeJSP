<%-- 
    Document   : enrollement
    Created on : 16 oct. 2022, 17:19:42
    Author     : Accent W2000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style><%@include file="/WEB-INF/css/styles.css"%></style>
    </head>
    
    <body>
        <%@ include file="header.jsp"%>
        <section class="actions-list">
            <h1 class="actions-menu">Menu</h1>
            
            <ul class="list-items">
                <li onclick="hiddenContent(1)">Factoriel</li>    
                <li onclick="hiddenContent(2)">Nombre premier</li>            
                <li>Carre parfait</li>      
                <li>Vecteur colinéaire</li>
                <li>Produits de matrice</li>   
                <li>Système Linéaire</li>   
                <li>Regression</li>          
                
                
                <li> <a href="javaBean.jsp">Java Bean</a> </li>

            </ul>
        </section>
        
        <section class="actions-result">
            
            <div id="factoriel">
                
               <form method="GET">
                  <h1 style='padding-top:10px; padding-bottom:20px;'>Calcul du factoriel d'un entier</h1>

                    <div style="margin:7px 0px 0px 0px">
                    <label for="entier" style="font-weight: bold">Entrer un Entier: </label>
                    <input type="number" id="entier" name="entier" style="padding:5px; border-radius: 5px"/>
                    
                    <input type="number" id="debut" name="debut" placeholder="debut" style="padding:5px; border-radius: 5px"/>
 
                    
                   <button style="cursor:pointer" type="submit">
                           Se connecter
                   </button>
                   </div>
     
                </form>
                
                <%! 
                    // declaration de variable
                        long result = 0;
                    //fonction factoriel
                    
                    long fct(long entier){
                        if(entier<=1 ) return 1;
                        return entier*fct(entier-1); 
                    }
                %>
                
                <!-- tags de scripting -->
                <%
                   String entier = request.getParameter("entier");
                   String de = request.getParameter("debut");
                   
                   if(entier == null | de == null)
                   { 
                      out.println("<h1 style='margin-top:50px;' >Entier  Attendu!!!</h1>");  
                    

                   }else
                       
                   {
                       int nbre =Integer.parseInt(request.getParameter("entier")) ;           
                       int debut =Integer.parseInt(de) ;     

                       for(int i = debut; i<=nbre; i++){
                          result = fct(i);
                          
                          out.println( i+"! = " + result +"<br>");
                       }
                   }
                %>
            </div>
            
            <div id="premier">
                
                 <form method="GET">
                  <h1 style='padding-top:10px; padding-bottom:20px;'>Verifier si un Entier est premier</h1>

                    <div style="margin:7px 0px 0px 0px">
                    <label for="entier" style="font-weight: bold">Entrer un Entier: </label>
                    <input type="number" id="entier" name="entier" style="padding:5px; border-radius: 5px"/>
                   <button style="cursor:pointer" type="submit">
                           Se connecter
                   </button>
                   </div>
     
                </form>
                <!--
                    if n == 2:
                        return True
                    if n == 3:
                        return True
                    if n % 2 == 0:
                        return False
                    if n % 3 == 0:
                        return False

                    i = 5
                    w = 2

                    while i * i <= n:
                        if n % i == 0:
                            return False

                        i += w
                        w = 6 - w
                 return True
                -->
                

  
            </div> 
            
            <div id="parfait">
                
            </div>
            
            <div id="vectoriel">
                
            </div>

        </section>
        <jsp:include page="footer.jsp"></jsp:include>
        
        <script type="text/javascript">
            document.getElementById('premier').style.display = "none";

            function hiddenContent(tab){
                
                if(tab === 1){
                    let hide = document.getElementById('premier');
                    let display =  document.getElementById('factoriel');
                    
                    hide.style.display = "none";
                    display.style.display = "block";
                    
                }
                
                if(tab === 2){
                    let hide = document.getElementById('premier');
                    let display =  document.getElementById('factoriel');
                    
                    hide.style.display = "block";
                    display.style.display = "none";
                    
                }
            }
        </script>
    </body>
</html>
