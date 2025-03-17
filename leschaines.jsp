<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NFE114 - Projet Java Web</title>
</head>
<body>
    <header>
        <h2>Application Java développée par Brahim TAHIRI</h2>
    </header>
    <main>
        <h3>Exercices sur les chaines de charactères</h3>

        <form action="#" method="post">
            <label for="value">Saisir un texte (minimum 6 caractères)</label>
            <input type="number" id="value" name="value"  pattern=".{6,}">
            <button type="submit">Afficher</button>
        </form>

        <%
            String value = request.getParameter("value");

            if (value != null && !value.isEmpty()) {
                out.print(String.format("La longueur de votre chaîne de caractère est de %d caractères", value.length()));

                out.print("<h3>Exercice 1 : Combien de 'E' dans notre chaine de charactères ?</h3>")

                int number_of_e = 0;
        
                for (int i = 0; i < value.length(); i++) {
                    if (value.charAt(i) == 'e' || value.charAt(i) == 'E') {
                        number_of_e ++;
                    }
                }

                out.print(String.format("Il y a %d 'E' dans la chaîne de caractères.", number_of_e));
            }
        %>
    </main> 
</body>
</html>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de charactères</p>

<h2>Exercice 2 : Affichage verticale</h2>
<p>Ecrire le programme pour afficher le texte en vertical</br>
Exemple : Bonjour</br>
B</br>
o</br>
n</br>
j</br>
o</br>
u</br>
r</p>

<h2>Exercice 3 : Retour à la ligne</h2>
<p>La présence d'un espace provoque un retour à la ligne </br>
Exemple : L'hiver sera pluvieux</br>
L'hiver</br>
sera</br>
pluvieux</p>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte </br>
Exemple : L'hiver sera pluvieux</br>
Lhvrsr lvex</p>

<h2>Exercice 5 : La phrase en verlant</h2>
<p>Ecrire le programme afin d'afficher le texte en verlant </br>
Exemple : L'hiver sera pluvieux</br>
xueivulp ares revih'l</p>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
