<%-- 
    Document   : listaUsuarios
    Created on : 08/04/2025, 15:35:18
    Author     : 364975
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Usuarios Cadastrados</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Acesso</th>
                <th colspan="2">Ações</th>
            </tr>
            <c:forEach var="usuario" items="${usuarios}">
                <tr>
                    <td>${usuario.id}</td>
                    <td>${usuario.nome}</td>
                    <td>${usuario.email}</td>
                    <td>
                        <c:if test="${usuario.acesso==1}">
                            Admin
                        </c:if>
                        <c:if test="${usuario.acesso!=1}">
                            Usuario
                        </c:if>
                    </td>
                    <td>
                        <a href="UsuarioController?action=alterar&id=${usuario.id}">Alterar</a>
                    </td>
                    <td>
                        <button onclick="deletarUsuario()" id="deletaButton">Excluir</button>
                    </td>
                </tr>
            </c:forEach>
    	</table>
        <script type="text/javascript">
            let btnObjeto = document.getElementById("deletaButton");
            function deletarUsuario() {
                let confirma = windown.confirm("Deseja deletar esse usuario?");
                
            }
        </script>
    </body>
</html>
