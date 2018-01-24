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
<hr/>

<form method="post" action="/save">
    <input type="hidden" name="id" value="${lists.id}"/>
    Nome:<br>
    <input type="text" name="nome" value="${lists.nome}"/>
    <br>
    Sobrenome:<br>
    <input type="text" name="sobrenome" value="${lists.sobrenome}"/>
    <br><br>
    <input type="submit" value="Salvar">
</form>

</body>
</html>
