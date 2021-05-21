<%-- 
    Document   : index
    Created on : 19/05/2021, 08:03:46 PM
    Author     : hecto
--%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Scanner"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="stylesjspp.css">
        <title>Contact to me</title>
        <div class="titulo">
            <img src="Fotos/shrek.jpg">
            <h1>Bienvenido</h1>
        </div>
    </head>
    <body>
        <%!
        
        %>
        
        <div class="Cuerpo">
            <h1>Gestona tus contactos con Contact to me</h1>
        </div>
        <div class="formulario">
            <form method="POST" action="Servlet" target="_blank">
                <p>Nombre: <input type="text" name="nombre" id="nombre" size="80" class="texto"></p>
                <P>Telefono: <input type="text" name="telefono" id="telefono" size="70" class="texto"></P>
                <p>Genero:
                    <input type="radio" name="genero" value="hombre" > Hombre
                    <input type="radio" name="genero" value="mujer" > Mujer
                </p>
                <p>
                    <input type="submit" value="Guardar" class="boton">
                    <input type="reset" value="Borrar" class="boton">
                </p>
            </form>
        </div>
        <!--Obtenemos las variables nombre y telefono-->
        <jsp:useBean id="minombre" scope="session" 
          class="Propiedades.User" />
        <jsp:setProperty name="minombre" property="name" />

        <jsp:useBean id="mitelefono" scope="session" 
          class="Propiedades.User" />
        <jsp:setProperty name="mitelefono" property="phone" />
        <div class="Datos">
                <table class="tablaDatos">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Telefono</th>
                            <th>Genero</th>
                        </tr>
                    </thead>
                    <%
                        
                        
                    %>
                    
                    <% int i;
                            for(i=0;i<10;i++){%>
                    <tbody>
                        <th><%out.print(request.getAttribute("name"));%></th>
                        <th><%out.print(request.getAttribute("phone"));%></th>
                        <th></th>
                    </tbody>
                     <%}%>
                </table>
            </div>
        <p>Contactos aqui</p>
        <p>Aqui iria el menu, creo</p>
    
</html>
