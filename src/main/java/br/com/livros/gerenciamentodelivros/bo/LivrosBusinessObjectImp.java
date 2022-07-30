package br.com.livros.gerenciamentodelivros.bo;

import br.com.livros.gerenciamentodelivros.dao.LivrosDAOI;
import br.com.livros.gerenciamentodelivros.dao.LivrosDAOImp;
import br.com.livros.gerenciamentodelivros.model.Livros;

import javax.inject.Inject;
import java.util.List;
import java.util.Objects;

public class LivrosBusinessObjectImp implements LivrosBusinessObjectI{
    private LivrosDAOI livrosDAO;

    @Inject
    public LivrosBusinessObjectImp(LivrosDAOI livrosDAOI) {
        this.livrosDAO = livrosDAOI;
    }

    @Override
    public Livros save(Livros livro) {
        valida(livro);
        return livrosDAO.save(livro);
    }

    private void valida(Livros livro) {
        if(livro.getTitulo().isEmpty()){
            throw new IllegalArgumentException("Título inválido");
        }
    }

    @Override
    public List<Livros> findAll() {
        return livrosDAO.findAll();
    }
}
