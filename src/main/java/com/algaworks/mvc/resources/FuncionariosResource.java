package com.algaworks.mvc.resources;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.algaworks.mvc.model.Funcionario;
import com.algaworks.mvc.repository.Funcionarios;

@RestController
@RequestMapping("/api/funcionarios")
public class FuncionariosResource {
	
	@Autowired
	private Funcionarios funcionarios;
	
	@GetMapping
	public List<Funcionario> todos() {
		return funcionarios.findAll();
	}
	
	@GetMapping("/{id}")
	public Funcionario buscar(@PathVariable Long id) {
		return funcionarios.findOne(id);
	}
}
