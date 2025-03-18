<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<% String chaine = request.getParameter("chaine"); %>
<% if (chaine != null) { %>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <% int[] nombres = new int[tableauDeChiffres.length]; %>
    <% for (int i = 0; i < tableauDeChiffres.length; i++) { nombres[i] = Integer.parseInt(tableauDeChiffres[i]); } %>
    
    <p>Le tableau contient <%= nombres.length %> valeurs.</p>
    <% for (int i = 0; i < nombres.length; i++) { %>
        <p>Chiffre <%= i + 1 %> : <%= nombres[i] %></p>
    <% } %>
    
    <h2>Exercice 1 : Le carré de la première valeur</h2>
    <p>Le carré de la première valeur est : <%= nombres[0] * nombres[0] %></p>
    
    <h2>Exercice 2 : La somme des 2 premières valeurs</h2>
    <p>La somme des deux premières valeurs est : <%= nombres[0] + nombres[1] %></p>
    
    <h2>Exercice 3 : La somme de toutes les valeurs</h2>
    <% int somme = 0; for (int n : nombres) { somme += n; } %>
    <p>La somme de toutes les valeurs est : <%= somme %></p>
    
    <h2>Exercice 4 : La valeur maximum</h2>
    <% int max = nombres[0]; for (int n : nombres) { if (n > max) max = n; } %>
    <p>La valeur maximale est : <%= max %></p>
    
    <h2>Exercice 5 : La valeur minimale</h2>
    <% int min = nombres[0]; for (int n : nombres) { if (n < min) min = n; } %>
    <p>La valeur minimale est : <%= min %></p>
    
    <h2>Exercice 6 : La valeur la plus proche de 0</h2>
    <% int procheZero = nombres[0]; for (int n : nombres) { if (Math.abs(n) < Math.abs(procheZero)) procheZero = n; } %>
    <p>La valeur la plus proche de 0 est : <%= procheZero %></p>
    
    <h2>Exercice 7 : La valeur la plus proche de 0 (2° version)</h2>
    <% int procheZero2 = nombres[0];
       for (int n : nombres) {
           if (Math.abs(n) < Math.abs(procheZero2) || (Math.abs(n) == Math.abs(procheZero2) && n > procheZero2)) {
               procheZero2 = n;
           }
       }
    %>
    <p>La valeur la plus proche de 0 est (en cas d'égalité, le positif est privilégié) : <%= procheZero2 %></p>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
