<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NFE114 - Projet Java Web</title>
</head>
<body>
    <header>
        <h2>Application Flask développée par Brahim TAHIRI</h2>
    </header>

    <main>
        <h1>Exercices sur les boucles</h1>
        
        <form action="#" method="post">
            <label for="value">Saisir le nombre d'étoiles :</label>
            <input type="number" id="value" name="value">
            <button type="submit">Afficher</button>
        </form>
        
        <% 
            String valueStr = request.getParameter("value");

            if (valueStr != null && !valueStr.isEmpty()) {
                out.println("<h2>Exercice 1 : Le carré d'étoiles</h2>")


                int value = Integer.parseInt(valueStr);

                for (int i = 1; i <= value; i++) {
                    for (int j = 1; j <= value; j++) {
                        out.print("*");
                    }
                    out.println("<br />");
                }
            }

            if (valueStr != null && !valueStr.isEmpty()) {
                out.println("<h2>Exercice 2 : Triangle rectangle gauche</h2>")

                int value = Integer.parseInt(valueStr);

                for (int i = 1; i <= value; i++) {
                    for (int j = 1; j <= i; j++) {
                        out.print("*");
                    }
                    out.println("<br />");
                }
            }

            if (valueStr != null && !value.isEmpty()) {
                out.println("<h2>Exercice 3 : Triangle rectangle inversé</h2>")

                int value = Integer.parseInt(valueStr);

                for (int i = 5; i > 0; i--) {
                    for (int j = 1; j <= i; j++) {
                        out.print("*");
                    }
                out.println("<br>");
        }
            }
        %>

        <h2>Exercice 4 : Triangle rectangle 2</h2>
        <p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
        <p>Exemple si l'utilisateur saisie la valeur 5</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>

        <h2>Exercice 5 : Triangle isocele</h2>
        <p>Ecrire le code afin de produire un triangle isocele</p>
        <p>Exemple si l'utilisateur saisie la valeur 5</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>

        <h2>Exercice 6 : Le demi losange</h2>
        <p>Ecrire le code afin de produire un losange</p>
        <p>Exemple si l'utilisateur saisie la valeur 5</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
        <p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

        <h2>Exercice 7 : La table de multiplication</h2>
        <p>Ecrire le code afin de créer une table de multiplication</p>
        <p>Exemple si l'utilisateur saisie la valeur 5</p>
        <p>5 x 1 = 5</p>
        <p>5 x 2 = 10</p>
        <p>5 x 3 = 15</p>
        <p>5 x 4 = 20</p>
        <p>5 x 5 = 25</p>

        <a href="index.html">Retour au sommaire</a>
    </main>
</body>
</html>
