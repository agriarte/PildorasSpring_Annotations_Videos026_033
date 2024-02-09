<%-- 
    Document   : HolaAlumnosSpring
    Created on : 02-feb-2024, 0:30:45
    Author     : Pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hola Alumnos</title>
    </head>
    <body>
        <h1>Hola Alumnos</h1>
        
        <p>Hola ${param.nombreAlumno}. Bienvenido al curso de Spring!</p>
        
        <h3>Aquí ponemos otro formulario para seguir practicando</h3>
        <form action="procesarOtroFormulario" method="get">
            <label for="lenguajeLabel">Cual es tu lenguaje de programación favorito:</label>
            <input type="text" id="lenguajeLabel" name="lenguajeAlumno">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
