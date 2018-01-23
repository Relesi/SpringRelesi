<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>SpringRelesi Referências</title>

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<table>
    <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Sobrenome</th>
        <th>Ação</th>
    </tr>
    <c:forEach var="list" items="${lists}">
        <tr>
            <td>${list.id}</td>
            <td>${list.nome}</td>
            <td>${list.sobrenome}</td>
            <td>
                
                <a href="/view/${list.id}">Visualizar</a>
                <a href="/delete/${list.id}">Deletar</a>
                <a href="/Edit/${list.id}">Editar</a>
            </td>
        </tr>
    </c:forEach>
</table>
<hr/>

    <form method="post" action="/save">
    Nome:<br>
    <input type="text" name="nome" />
    <br>
    Sobrenome:<br>
    <input type="text" name="sobrenome" />
    <br><br>
    <input type="submit" value="Submit">
</form>

</body>
</html>
