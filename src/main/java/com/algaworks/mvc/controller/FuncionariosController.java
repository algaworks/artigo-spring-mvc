package com.algaworks.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.algaworks.mvc.model.Funcionario;
import com.algaworks.mvc.repository.Funcionarios;
import com.algaworks.mvc.service.FuncionarioService;

@Controller
@RequestMapping("/funcionarios")
public class FuncionariosController {
	
	@Autowired
	private FuncionarioService funcionarioService;
	
	@Autowired
	private Funcionarios funcionarios;
	
	@ResponseBody
	@GetMapping("/todos")
	public List<Funcionario> todos() {
		return funcionarios.findAll();
	}
	
	@GetMapping
	public ModelAndView listar() {
		ModelAndView modelAndView = new ModelAndView("funcionario-lista.jsp");
		modelAndView.addObject("funcionarios", funcionarios.findAll());
		
		return modelAndView;
	}
	
	@GetMapping("/novo")
	public ModelAndView novo() {
		ModelAndView modelAndView = new ModelAndView("funcionario-formulario.jsp");
		modelAndView.addObject("funcionario", new Funcionario());
		
		return modelAndView;
	}
	
	@GetMapping("/edicao")
	public ModelAndView edicao(@RequestParam Long id) {
		ModelAndView modelAndView = new ModelAndView("funcionario-formulario.jsp");
		modelAndView.addObject("funcionario", funcionarios.findOne(id));
		
		return modelAndView;
	}
	
	@PostMapping("/salvar")
	public RedirectView salvar(Funcionario funcionario, RedirectAttributes redirectAttributes) {
		funcionarioService.salvar(funcionario);
		
		redirectAttributes.addFlashAttribute("mensagem", "Cadastro feito com sucesso!");
		
		return new RedirectView("/funcionarios", true);
	}
}