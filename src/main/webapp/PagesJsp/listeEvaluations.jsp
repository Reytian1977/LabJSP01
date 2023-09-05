<%--
  Created by IntelliJ IDEA.
  User: reyti
  Date: 2023-09-05
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mesmodels.Evaluation" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liste des Projet</title>
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

    <div class="container">
        <% List<Evaluation> evaluations = (List<Evaluation>) request.getAttribute("listeEvaluation"); %>

        <% if(evaluations == null || evaluations.isEmpty()){ %>
        <p>Il n'y a pas des Evaluations.</p>
        <% } else { %>
        <table class="table">
            <tr>
                <th>Numéro</th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>Courriel</th>
                <th>Telephone</th>
                <th>Sexe</th>
                <th>Note</th>
                <th>Date Evaluation</th>
                <th>Commentaires</th>
            </tr>
            <% for (Evaluation e: evaluations) { %>
            <tr>
                <td><%= e.getNumero() %></td>
                <td><%= e.getNom() %></td>
                <td><%= e.getPrenom() %></td>
                <td><%= e.getCourriel() %></td>
                <td><%= e.getTelephone() %></td>
                <td><%= e.getSexe() %></td>
                <td><%= e.getNote() %></td>
                <td><%
                    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                    Calendar dateEvaluation = e.getDateEvaluation();
                    String formateDate = dateFormat.format(dateEvaluation.getTime());
                %>
                <%=formateDate%></td>
                <td><%= e.getCommentaires() %></td>
            </tr>
            <% } %>
        </table>
        <% } %>
    </div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>