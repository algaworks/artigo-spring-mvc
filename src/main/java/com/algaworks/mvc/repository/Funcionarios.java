package com.algaworks.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.algaworks.mvc.model.Funcionario;

public interface Funcionarios extends JpaRepository<Funcionario, Long> {

}
