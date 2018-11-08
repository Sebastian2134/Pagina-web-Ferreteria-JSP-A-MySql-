<%-- 
    Document   : Registro
    Created on : 08-11-2018, 4:55:47
    Author     : Sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Registro</h1>
        <form action="guardar" method="post">
            Nombre:<input type="text" name="Nombre"><br/>
            Apellido:<input type="text" name="Apellido"><br/>
            Ciudad:<input type="text" name="Ciudad"><br/>
            Email:<input type="text" name="Email"><br/>
            <input type="submit" value="Guardar"><br/>
         </form>
    </body>
</html>
