<%--
  Created by IntelliJ IDEA.
  User: reyti
  Date: 2023-09-05
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mesmodels.Evaluation" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Modifier l'Évaluation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
    <h2>Modifier l'Évaluation</h2>

    <%
        Evaluation evaluation = (Evaluation) request.getAttribute("evaluation");
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String formateDate = dateFormat.format(evaluation.getDateEvaluation().getTime());
    %>

    <form action="<%=request.getContextPath()%>/ModifierServlet" method="post">
        <input type="hidden" name="numero" value="<%= evaluation.getNumero() %>">

        <div class="mb-3">
            <label for="nom" class="form-label">Nom</label>
            <input type="text" class="form-control" id="nom" name="nom" value="<%= evaluation.getNom() %>">
        </div>

        <div class="mb-3">
            <label for="prenom" class="form-label">Prénom</label>
            <input type="text" class="form-control" id="prenom" name="prenom" value="<%= evaluation.getPrenom() %>">
        </div>

        <div class="mb-3">
            <label for="courriel" class="form-label">Courriel</label>
            <input type="email" class="form-control" id="courriel" name="email" value="<%= evaluation.getCourriel() %>">
        </div>

        <div class="mb-3">
            <label for="telephone" class="form-label">Téléphone</label>
            <input type="text" class="form-control" id="telephone" name="telephone" value="<%= evaluation.getTelephone() %>">
        </div>

        <div class="mb-3">
            <label for="sexe" class="form-label">Sexe</label>
            <select class="form-control" id="sexe" name="sexe">
                <option value="M" <%= evaluation.getSexe() == 'M' ? "selected" : "" %>>Masculin</option>
                <option value="F" <%= evaluation.getSexe() == 'F' ? "selected" : "" %>>Féminin</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="note" class="form-label">Note</label>
            <textarea class="form-control" id="note" name="note"><%= evaluation.getNote() %></textarea>
        </div>

        <div class="mb-3">
            <label for="dateEvaluation" class="form-label">Date d'Évaluation</label>
            <input type="text" class="form-control" id="dateEvaluation" name="dateEvaluation" value="<%= formateDate %>">
        </div>

        <div class="mb-3">
            <label for="commentaire" class="form-label">Commentaires</label>
            <textarea class="form-control" id="commentaire" name="comentaire"><%= evaluation.getCommentaires() %></textarea>
        </div>

        <button type="submit" class="btn btn-primary">Sauvegarder les modifications</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>

