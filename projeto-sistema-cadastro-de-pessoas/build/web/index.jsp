<%-- 
    Document   : index
    Created on : 01/04/2025, 14:26:39
    Author     : 364975
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Cadastro de Pessoas</title>
    </head>
    <body>
        <h1>Cadastrar Pessoas</h1>
        <form method="post" action="UsuarioController">
            <label>Nome</label>
            <input type="text" name="nome"/>
            <br/>
            <label>Email</label>
            <input type="email" name="email"/>
            <br/>
            <label>Senha</label>
            <input type="password" name="senha"/>
            <br/>
            <label>Acesso</label>
            <select name="nivel">
            <option value="1">Admin</option>
            <option value="2">Usuário</option>
            </select>
            <input type="submit" value="Enviar"/>
        </form>

    </body>
</html>
