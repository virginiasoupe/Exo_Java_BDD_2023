<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" name="valeurA">
    <p>Saisir la valeur B : <input type="text" name="valeurB">
    <p>Saisir la valeur C : <input type="text" name="valeurC">
    <p>Saisir un nombre pour vérifier s'il est pair ou impair : <input type="text" name="valeurPairImpair">
    <p><input type="submit" value="Afficher">
</form>

<% String valeurA = request.getParameter("valeurA"); %>
<% String valeurB = request.getParameter("valeurB"); %>
<% String valeurC = request.getParameter("valeurC"); %>
<% String valeurPairImpair = request.getParameter("valeurPairImpair"); %>

<% if (valeurA != null && valeurB != null && valeurC != null) { %>
    <% int intA = Integer.parseInt(valeurA); %>
    <% int intB = Integer.parseInt(valeurB); %>
    <% int intC = Integer.parseInt(valeurC); %>
    
    <% if ((intC >= intA && intC <= intB) || (intC >= intB && intC <= intA)) { %>
        <p>Oui, C est compris entre A et B.</p>
    <% } else { %>
        <p>Non, C n'est pas compris entre A et B.</p>
    <% } %>
<% } %>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<% if (valeurPairImpair != null) { %>
    <% int intPairImpair = Integer.parseInt(valeurPairImpair); %>
    <% if (intPairImpair % 2 == 0) { %>
        <p>Le nombre <%= intPairImpair %> est pair.</p>
    <% } else { %>
        <p>Le nombre <%= intPairImpair %> est impair.</p>
    <% } %>
<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>

