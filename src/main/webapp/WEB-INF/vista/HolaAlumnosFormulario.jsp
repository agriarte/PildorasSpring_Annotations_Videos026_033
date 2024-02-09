<%-- 
    Document   : HolaAlumnosFormulario
    Created on : 02-feb-2024, 0:27:40
    Author     : Pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        <h1>Formulario</h1>

        <form action="procesarFormulario" method="get">
            <label for="nombreAlumno">Nombre:</label>
            <input type="text" id="nombreAlumno" name="nombreAlumno">
            <input type="submit" value="Enviar">
        </form>

    </body>
</html>
