/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pildoras.spring_mvc_videos026_033;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Pedro
 */
@Controller
public class HolaAlumnosControlador {

    // metodo que devuelve el formulario
    //en requestmapping se pone el nombre de la url que devuelve el formulario. No tiene necesariamente que llamarse igual que el método
   
    @RequestMapping("/muestraFormulario")
    public String muestraFormulario() {
        return "HolaAlumnosFormulario";
    }

    @RequestMapping("/procesarFormulario")
    public String procesarFormulario() {
        return "HolaAlumnosSpring";
    }

    // Este método maneja solicitudes HTTP dirigidas a "/procesarOtroFormulario".
    @RequestMapping("/procesarOtroFormulario")
    public String procesarOtroFormulario(HttpServletRequest request, Model modelo) {

        // Obtiene el valor del parámetro "lenguajeAlumno" de la solicitud HTTP.
        String mensaje = request.getParameter("lenguajeAlumno");

        // Concatena el valor obtenido para formar un mensaje.
        mensaje = "Tu lenguaje de programación favorito es " + mensaje;

        // Agrega el mensaje al modelo para que pueda ser utilizado en la vista.
        modelo.addAttribute("mensajeFinal", mensaje);

        // Devuelve el nombre de la vista que se debe mostrar ("SaludoFormulario2").
        return "SaludoFormulario2";
    }



}
