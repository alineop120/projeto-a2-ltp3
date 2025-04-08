<%-- 
    Document   : listaUsuarios
    Created on : 08/04/2025, 15:35:18
    Author     : 364975
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Usuarios</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Perfil</th>
                <th colspan="2">Ações</th>
            </tr>
            <c:forEach var="usuario" items="${usuarios}">
                <tr>
                    <td>${usuario.id}</td>
                    <td>${usuario.nome}</td>
                    <td>${usuario.email}</td>
                    <td>
                        <c:if test="${usuario.nivelAcesso==1}">
                            Admin
                        </c:if>
                        <c:if test="${usuario.nivelAcesso!=1}">
                            Usuario
                        </c:if>
                    </td>
                    <td>Alterar</td>
                    <td>Excluir</td>
                </tr>
            </c:forEach>
    	</table>
    </body>
</html>
