<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registrando Livros</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Style the header */
        header {
            background-color: #666;
            padding: 30px;
            text-align: center;
            font-size: 35px;
            color: white;
        }

        .button {
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .button1 {background-color: #4CAF50;}
        .button2 {background-color: #008CBA;}
    </style>
</head>
<body>
<header>
    <h2>Registrando Livros</h2>
</header>
    <a href="registro-livro.jsp" class="button button1">Registrar um novo livro</a>
    <a href="livro-servlet" class="button button2">Verificar lista de livros registrados</a>
</body>
</html>