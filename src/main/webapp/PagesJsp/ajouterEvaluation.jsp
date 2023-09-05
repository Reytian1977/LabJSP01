<%--
  Created by IntelliJ IDEA.
  User: reyti
  Date: 2023-09-04
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ajouter Une Evaluation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

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
                <a class="nav-link" href="<%=request.getContextPath()%>/PagesJsp/contact.jsp">Nous contacter</a>
            </li>
        </ul>
    </nav>

    <div class="container mt-4">
        <h2>Ajouter une évaluation</h2>
        <form  action="<%=request.getContextPath()+"/AjouterServlet"%>" method="post">

            <!-- Numéro, Nom, Prénom -->
            <div class="form-group">
                <label for="numero">Numéro:</label>
                <input type="text" class="form-control" id="numero" name="numero" required>
            </div>
            <div class="form-group">
                <label for="nom">Nom:</label>
                <input type="text" class="form-control" id="nom" name="nom" required>
            </div>
            <div class="form-group">
                <label for="prenom">Prénom:</label>
                <input type="text" class="form-control" id="prenom" name="prenom" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="telephone">Telephone:</label>
                <input type="text" class="form-control" id="telephone" name="telephone" required>
            </div>

            <!-- Date d'évaluation -->
            <div class="form-group">
                <label for="dateEvaluation">Date d'évaluation:</label>
                <input type="date" class="form-control" id="dateEvaluation" name="dateEvaluation" required>
            </div>

            <!-- Sexe -->
            <div class="form-group">
                <label>Sexe:</label><br>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="sexe" id="masculin" value="Masculin" required>
                    <label class="form-check-label" for="masculin">Masculin</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="sexe" id="feminin" value="Féminin">
                    <label class="form-check-label" for="feminin">Féminin</label>
                </div>
            </div>

            <!-- Commentaires -->
            <div class="form-group">
                <label for="comentaire">Commentaires:</label>
                <textarea class="form-control" id="comentaire" name="comentaire" rows="4"></textarea>
            </div>

            <!-- Note de l'évaluation -->
            <div class="form-group">
                <label for="note">Note:</label>
                <select class="form-control" id="note" name="note" required>
                    <option>Très bien</option>
                    <option>Bien</option>
                    <option>Moyen</option>
                    <option>Médiocre</option>
                </select>
            </div>

            <!-- Boutons -->
            <button type="submit" class="btn btn-primary">Envoyer</button>
            <button type="button" class="btn btn-danger" onclick="confirmerAnnulation()">Annuler</button>

        </form>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>