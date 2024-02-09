/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pildoras.spring_mvc_videos026_033;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Pedro
 */
@Controller
@RequestMapping("/secundario")
public class Controlador3 {
// Este método maneja solicitudes HTTP dirigidas a "/secundario/procesarOtroFormulario".
// Se usa un doble RequestMapping para diferenciar la clase a la que pertenece el método

    @RequestMapping("/procesarOtroFormulario2")
    public String procesarOtroFormulario2(@RequestParam("color") String color, @RequestParam("numero") String numero, Model modelo) {

        // Concatena el valor del parámetro "color" para formar un mensaje.
        color = "Tu color es " + color;

        // Concatena el valor del parámetro "numero" para formar un mensaje.
        numero = "Tu número es " + numero;

        // Agrega la información al modelo en formato Clave/Valor para que pueda ser utilizado en la vista.
        modelo.addAttribute("colorModelo", color);
        modelo.addAttribute("numeroModelo", numero);

        // Devuelve el nombre de la vista que se debe mostrar ("HolaRequestParam").
        return "HolaRequestParam";
    }

}
 