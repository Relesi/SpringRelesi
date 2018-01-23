package br.com.developer.SpringRelesi.controller;

import br.com.developer.SpringRelesi.model.UsuarioRepositorio;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Renato on 23/01/2018.
 */

@Controller
public class MainController {

    UsuarioRepositorio usuarioRepo;

    @RequestMapping("/")
    public ModelAndView doHome(){
       ModelAndView mv = new ModelAndView("index");
       mv.addObject( "lists",usuarioRepo.findAll());

        return mv;
    }
}
