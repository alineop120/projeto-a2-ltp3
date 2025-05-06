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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Lista de Usuarios Cadastrados</h1>
        <table>
        	<tr><th>ID</th><th>Nome</th><th>Email</th><th>Perfil</th><th colspan="2">Ações</th></tr>
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

        <script type="text/javascript">
            function deletarUsuario() {
                let confirma = windown.confirm("Deseja deletar esse Usuario de ID n°: "+id);
                if(confirma) {
                    windown.location.href="UsuarioController?action=deletar&id="+id;
                }
            }
            
            function alterarUsuario() {
                window.location.href="UsuarioController?action=alterar&id="+id;
            }
        </script>
    </body>
</html>
