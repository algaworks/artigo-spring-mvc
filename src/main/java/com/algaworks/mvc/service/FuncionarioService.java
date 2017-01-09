package com.algaworks.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.algaworks.mvc.model.Funcionario;
import com.algaworks.mvc.repository.Funcionarios;

@Service
public class FuncionarioService {
	
	@Autowired
	private Funcionarios funcionarios;
	
	public void salvar(Funcionario funcionario) {
		funcionarios.save(funcionario);
	}
}