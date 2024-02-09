/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pildoras.spring_mvc_videos026_033;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Pedro
 */
@Controller
public class Controlador {

    // metodo que devuelve el formulario
    //en requestmapping se pone el nombre de la url que devuelve el formulario. No tiene necesariamente que llamarse igual que el método
    @RequestMapping("")
    public String mostrarIniciovacio() {
        return "IndiceProyecto";
    }

    @RequestMapping("/inicio")
    public String mostrarInicio() {
        return "IndiceProyecto";
    }
}
