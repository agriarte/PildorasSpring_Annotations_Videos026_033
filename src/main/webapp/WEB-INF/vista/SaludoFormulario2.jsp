<%-- 
    Document   : saludoFormulario2
    Created on : 06-feb-2024, 17:10:52
    Author     : Pedro
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo Formulario</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/recursos/css/miestilo.css"/>
    </head>
    <body>
        <h1>Ya terminamos...</h1>
        <p> recuperamos el dato del formulario por HttpServletRequest</p>
        <p> Esto está dentro de un atributo de modelo en formato clave valor: ${mensajeFinal}</p>
        <br>

        <p>Se prueba la carga de elementos estáticos por método antiguo de configuración XML. Los ejemplos del curso están un poco desfasados y dan errores difíciles de encontrar.</p>

        <p> Path del contexto: ${pageContext.request.contextPath} </p><br>

        <img src= " ${pageContext.request.contextPath}/recursos/imagenes/logoNegro.png" alt="logo"/>



        <p><b>Contenido del directorio en el contexto ${pageContext.request.contextPath}:</b></p>
        <%
            // Obtiene la ruta física del directorio asociado al contexto
            String directorioContexto = getServletContext().getRealPath("/");

            // Construye la ruta completa al directorio que quieres mostrar
            String rutaCompleta = directorioContexto;

            File directorio = new File(rutaCompleta);

            // Verifica si el directorio existe y es un directorio
            if (directorio.exists() && directorio.isDirectory()) {
                String[] archivos = directorio.list();
                for (String archivo : archivos) {
                    out.println("<p>" + archivo + "</p>");
                }
            } else {
                out.println("<p>El directorio no existe o no es un directorio válido.</p>");
            }
        %>

        <p>/recursos/imagenes/logoNegro.png y /recursos/css/miestilo.css dentro de /webapp (el contexto)</p>
        
        <h3>Otro Formulario para practicar @RequestParam</h3>
        <p> Atención al action del form. No debe ponerse / para hacer rutas relativas al contexto."
        <form action="secundario/procesarOtroFormulario2" method="get">
            <label for="colorLabel">Color?: </label>
            <input type="text" id="colorLabel" name="color">
            <label for="colorLabel">Número?: </label>
            <input type="text" id="numerojeLabel" name="numero">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
