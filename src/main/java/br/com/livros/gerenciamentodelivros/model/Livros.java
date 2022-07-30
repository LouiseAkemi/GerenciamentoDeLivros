package br.com.livros.gerenciamentodelivros.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Livros {
    private String titulo;
    private String autor;
}
