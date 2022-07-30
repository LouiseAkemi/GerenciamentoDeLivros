package br.com.livros.gerenciamentodelivros.dao;

import br.com.livros.gerenciamentodelivros.model.Livros;
import java.util.List;

public interface LivrosDAOI {
    Livros save(Livros cliente);
    List<Livros> findAll();
}
