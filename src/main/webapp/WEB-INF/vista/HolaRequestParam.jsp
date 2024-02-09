<%-- 
    Document   : HolaRequesParam
    Created on : 09-feb-2024, 11:00:19
    Author     : Pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Probando @RequestParam</h1>
        <p>Su usa un doble RequestParam para indicar que el método pertenece a una clase controladora en concreto 
            y evitar errores de nombres duplicados en otros posibles controladores</p>
        <p>Llegan estos datos:</p>
        <p>Color: ${colorModelo}</p>
        <p>Número: ${numeroModelo}</p>
        
    </body>
</html>
