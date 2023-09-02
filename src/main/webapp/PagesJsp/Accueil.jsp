<%--
  Created by IntelliJ IDEA.
  User: reyti
  Date: 2023-09-02
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Page d'accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

    <!-- Bannière -->
    <div class="jumbotron text-center">
        <h1>Bienvenu à la page d'accueil</h1>
    </div>

    <!-- Menu -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href=<%=request.getContextPath()+"/HomeServlet"%>>Accueil</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=<%=request.getContextPath()+"/AjouterServlet"%>>Ajouter évaluation</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=<%=request.getContextPath()+"/ListeServlet"%>>Liste évaluations</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=<%=request.getContextPath()+"/HomeServlet"%>>Nous contacter</a>
            </li>
        </ul>
    </nav>

    <!-- Contenu -->
    <div class="container mt-4">
        <h2>Bienvenue sur notre site web !</h2>
        <p>Ce site est dédié à ...</p>
        <!-- Vous pouvez ajouter des images ici -->
        <img src="exemple-image.jpg" alt="Exemple d'image" class="img-fluid">
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
