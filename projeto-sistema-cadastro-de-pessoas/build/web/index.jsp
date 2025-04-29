<%-- 
    Document   : index
    Created on : 01/04/2025, 14:26:39
    Author     : 364975
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Cadastro de Pessoas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
        <style>
            #cadastro{
                width: 30%;
                margin: auto;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Navbar</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="UsuarioController">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Dropdown
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li><a class="dropdown-item" href="#">Another action</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div>
            </div>
          </nav>
        
        <h1>Cadastro</h1>
        <form id="cadastro" method="post" action="UsuarioController">
            <input type="hidden" name="id" value="${usuario.id != null ? usuario.id : 0}"/>
            <div class="mb-3">
                <label class="form-label">Nome: </label>
                <input class="form-control" type="text" name="nome" value="${usuario.nome != null ? usuario.nome : ''}"/>
            </div>

            <div class="mb-3">
                <label class="form-label">Email: </label>
                <input class="form-control" type="email" name="email" value="${usuario.email != null ? usuario.email : ''}"/>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Senha: </label>
                <input class="form-control" type="password" name="senha" value="${usuario.senha != null ? usuario.senha : ''}"/>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Acesso: </label>
                <select name="nivel">
                    <option value="1">Admin</option>
                    <option value="2">Usuário</option>
                </select>
            </div>
            
            <input type="submit" value="Cadastrar"/>
        </form>
    </body>
</html>
