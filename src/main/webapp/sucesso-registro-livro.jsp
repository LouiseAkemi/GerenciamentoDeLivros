<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 7/29/2022
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
<html>
<head>
    <title>Sucesso registro livro</title>
    <meta charset="utf-8">
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
            padding: 10px;
            text-align: left;
            font-size: 20px;
            color: white;
            margin: 5px;
        }

        nav {
            background-color: #FFFFFF;
            padding: 10px;
            text-align: left;
            font-size: 10px;
            color: black;
            margin: 5px;
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

        .content-table{
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 10px;
            min-width: 400px;
            border-radius: 5px 5px 0 0;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }

        .content-table thead tr{
            background-color: #FF1493;
            color: #FFFFFF;
            text-align: left;
            font-weight: bold;
        }

        .content-table th,
        .content-table td{
            padding: 12px 15px;
        }

        .content-table tbody tr{
            border-bottom: 1px solid #dddddd
        }

        .content-table tbody tr:nth-of-type(even){
            background-color: #f3f3f3
        }

        .content-table tbody tr:last-of-type{
            border-bottom: 2px solid #FF1493
        }
    </style>
</head>
<body>
<header>
    <h3>Último Livro Registrado</h3>
    <h5>Titulo: ${livroSalvo.titulo}</h5>
    <h5>Autor: ${livroSalvo.autor}</h5>
</header>
    <nav>
        <h1>Lista de Livros Registrados</h1>
        <table class="content-table">
            <thead>
                <tr>
                    <th>Titulo</th>
                    <th>Autor</th>
                </tr>
            </thead>
            <c:forEach var="livros" items="${livrosLista}">
            <tbody>
                <tr>
                    <td>${livros.titulo}</td>
                    <td>${livros.autor}</td>
                </tr>
            </tbody>
            </c:forEach>
        </table>
    </nav>
    <a href="registro-livro.jsp" class="button button1">Registrar um novo livro</a>
</body>
</html>
