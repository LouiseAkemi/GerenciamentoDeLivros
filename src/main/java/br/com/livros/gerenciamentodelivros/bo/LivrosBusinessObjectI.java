package br.com.livros.gerenciamentodelivros.bo;

import br.com.livros.gerenciamentodelivros.model.Livros;

import java.util.List;

public interface LivrosBusinessObjectI {
    Livros save(Livros cliente);
    List<Livros> findAll();
}
