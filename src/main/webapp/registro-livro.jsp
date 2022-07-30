<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 7/27/2022
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrando Livro</title>
</head>
<body>
    <h1>Registrando Livro</h1>
    <fieldset>
        <legend>Informações do Livro</legend>
        <form action="livro-servlet" method="post">
            <div>
                <label for="idTitulo">Título:</label>
                <input type="text" id="idTitulo" name="titulo">
            </div>
            <div>
                <label for="idAutor">Autor:</label>
                <input type="text" id="idAutor" name="autor">
            </div>
            <input type="submit" value="Enviar">
        </form>
    </fieldset>
</body>
</html>
