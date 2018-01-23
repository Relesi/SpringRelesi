package br.com.developer.SpringRelesi.controller;

import br.com.developer.SpringRelesi.model.Usuario;
import br.com.developer.SpringRelesi.model.UsuarioRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    UsuarioRepositorio usuarioRepo;

    @RequestMapping("/")
    public ModelAndView doHome(){
       ModelAndView mv = new ModelAndView("index");
       mv.addObject( "lists",usuarioRepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("nome") String nome, @RequestParam("sobrenome") String sobrenome){
        ModelAndView mv = new ModelAndView("redirect:/");
        Usuario users = new Usuario();
        users.setNome(nome);
        users.setSobrenome(sobrenome);
        usuarioRepo.save(users);
        return mv;
    }
}
