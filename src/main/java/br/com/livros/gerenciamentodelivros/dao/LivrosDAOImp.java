package br.com.livros.gerenciamentodelivros.dao;

import br.com.livros.gerenciamentodelivros.model.Livros;
import java.util.ArrayList;
import java.util.List;

public class LivrosDAOImp implements LivrosDAOI{
    private static List<Livros> bancoLivros = new ArrayList<>();

    @Override
    public Livros save(Livros livro) {
        bancoLivros.add(livro);
        return livro;
    }

    @Override
    public List<Livros> findAll() {
        return bancoLivros;
    }
}
