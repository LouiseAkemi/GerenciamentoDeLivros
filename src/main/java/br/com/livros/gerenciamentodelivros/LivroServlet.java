package br.com.livros.gerenciamentodelivros;

import br.com.livros.gerenciamentodelivros.bo.LivrosBusinessObjectI;
import br.com.livros.gerenciamentodelivros.model.Livros;
import br.com.livros.gerenciamentodelivros.bo.LivrosBusinessObjectI;
import br.com.livros.gerenciamentodelivros.bo.LivrosBusinessObjectImp;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "livroServlet", value = "/livro-servlet")
public class LivroServlet extends HttpServlet {

    private final LivrosBusinessObjectI livrosBusinessObject;

    @Inject
    public LivroServlet(LivrosBusinessObjectI livrosBusinessObjectI) {
        this.livrosBusinessObject = livrosBusinessObjectI;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Chamando método");
        Livros livro = criaLivro(request);

        Livros livroSalvo = livrosBusinessObject.save(livro);
        request.setAttribute("livroSalvo",livroSalvo);

        doGet(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Livros> livrosList = livrosBusinessObject.findAll();
        req.setAttribute("livrosLista",livrosList);
        livrosList.forEach(System.out::println);

        RequestDispatcher dispatcher = req.getRequestDispatcher("sucesso-registro-livro.jsp");
        dispatcher.forward(req,resp);

    }

    private Livros criaLivro(HttpServletRequest request){
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        Livros livro = new Livros(titulo, autor);
        return livro;
    }
}
