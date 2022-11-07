package com.example.projetoweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.projetoweb.model.cadastroPessoa;

@Repository
public interface cadastroPessoaRepository extends JpaRepository<cadastroPessoa, Integer> {

}
