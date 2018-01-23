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
        <td>${lists.id}</td>
    </tr>

    <tr>
        <th>Nome</th>
        <td>${lists.nome}</td>
    </tr>

    <tr>
        <th>Sobrenome</th>
        <td>${lists.sobrenome}</td>
    </tr>

</table>
<a href="/">Voltar</a>

</body>
</html>
