<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de caractères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<% String chaine = request.getParameter("chaine"); %>
<% if (chaine != null && chaine.length() >= 6) { %>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>
    
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>
    
    <% String sousChaine = chaine.substring(2, Math.min(6, chaine.length())); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>
    
    <% char recherche = 'e'; int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>
    
    <h2>Exercice 1 : Combien de 'e' dans notre chaine de caractères ?</h2>
    <% int countE = 0; for (char c : chaine.toCharArray()) { if (c == 'e') countE++; } %>
    <p>Le nombre de 'e' est : <%= countE %></p>
    
    <h2>Exercice 2 : Affichage verticale</h2>
    <p>
    <% for (char c : chaine.toCharArray()) { %>
        <%= c %><br>
    <% } %>
    </p>
    
    <h2>Exercice 3 : Retour à la ligne</h2>
    <p>
    <%= chaine.replace(" ", "<br>") %>
    </p>
    
    <h2>Exercice 4 : Afficher une lettre sur deux</h2>
    <p>
    <% for (int i = 0; i < chaine.length(); i += 2) { %>
        <%= chaine.charAt(i) %>
    <% } %>
    </p>
    
    <h2>Exercice 5 : La phrase en verlant</h2>
    <% StringBuilder verlant = new StringBuilder(chaine).reverse(); %>
    <p><%= verlant %></p>
    
    <h2>Exercice 6 : Consonnes et voyelles</h2>
    <% int voyelles = 0, consonnes = 0;
       String vowels = "aeiouyAEIOUY";
       for (char c : chaine.toCharArray()) {
           if (Character.isLetter(c)) {
               if (vowels.indexOf(c) != -1) voyelles++;
               else consonnes++;
           }
       }
    %>
    <p>Nombre de voyelles : <%= voyelles %></p>
    <p>Nombre de consonnes : <%= consonnes %></p>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
