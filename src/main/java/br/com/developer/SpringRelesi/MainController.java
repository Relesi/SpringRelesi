package br.com.developer.SpringRelesi;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Renato on 23/01/2018.
 */

@Controller
public class MainController {
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }
}
