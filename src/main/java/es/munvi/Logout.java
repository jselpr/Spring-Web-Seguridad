/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.munvi;


import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author joselopezruiz
 */
@Controller
public class Logout {
    
    @RequestMapping(value = "/salir.do",method = RequestMethod.GET)
    public String salir(ModelMap modelo,HttpSession sesion){
        sesion.invalidate();
        Logger.getLogger("Logout").warning(sesion.toString());
        return "logout";
    }
    
}
