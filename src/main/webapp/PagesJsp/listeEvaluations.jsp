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
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liste des Projet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<!-- Variables -->
<c:url var="UrlAccueil" value="/HomeServlet"/>
<c:url var="UrlAjouter" value="/AjouterServlet"/>
<c:url var="UrlListe" value="/ListeServlet"/>
<c:url var="UrlContacter" value="/PagesJsp/contact.jsp"/>

    <!-- Menu -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="${UrlAccueil}">Accueil</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${UrlAjouter}">Ajouter évaluation</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=${UrlListe}>Liste évaluations</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${UrlContacter}">Nous contacter</a>
            </li>
        </ul>
    </nav>

    <div class="container">

        <c:choose>
            <c:when test="${empty listeEvaluation}">
                <p>Il n'y a pas des Evaluations.</p>
            </c:when>
            <c:otherwise>
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
                        <th>Actions</th>
                    </tr>

                    <c:forEach var="e" items="${listeEvaluation}">
                    <!-- Variables -->
                        <c:url var="UrlModifier" value="/ModifierServlet">
                            <c:param name="numero" value="${e.numero}"/>
                        </c:url>
                    <c:url var="UrlSupprimer" value="/SupprimerServlet">
                        <c:param name="numero" value="${e.numero}"/>
                    </c:url>

                        <tr>
                            <td>${e.numero}</td>
                            <td>${e.nom}</td>
                            <td>${e.prenom}</td>
                            <td>${e.courriel}</td>
                            <td>${e.telephone}</td>
                            <td>${e.sexe}</td>
                            <td>${e.note}</td>
                            <td>
                            <fmt:formatDate value="${e.dateEvaluation.time}" pattern="dd-MM-yyyy"/>
                            </td>
                            <td>${e.commentaires}</td>
                            <td>
                                <!-- Modifier Button -->
                                <a href="${UrlModifier}" class="btn btn-primary">Modifier</a>

                                <!-- Supprimer Button -->
                                <a href="${UrlSupprimer}" class="btn btn-danger" onclick="return confirm('Voulez-vous vraiment le supprimer ?');">Supprimer</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>