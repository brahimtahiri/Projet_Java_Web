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
        <h2>Application Java développée par Brahim TAHIRI</h2>
    </header>

    <main>
        <h3>Exercices sur les chaînes de caractères</h3>

        <form action="#" method="post">
            <label for="value">Saisir un texte (minimum 6 caractères)</label>
            <input type="text" id="value" name="value" pattern=".{6,}" required>
            <button type="submit">Afficher</button>
        </form>

        <%
            String value = request.getParameter("value");

            if (value != null && !value.isEmpty()) {
                out.print(String.format("La longueur de votre chaîne de caractères est de %d caractères.<br>", value.length()));

                out.print("<section>");
                out.print("<h3>Exercice 1 : Combien de 'E' dans notre chaîne de caractères ?</h3>");
                int number_of_e = 0;
                for (int i = 0; i < value.length(); i++) {
                    if (value.charAt(i) == 'e' || value.charAt(i) == 'E') {
                        number_of_e++;
                    }
                }
                out.print(String.format("Il y a, %d 'E', dans la chaîne de caractères. :", number_of_e));
                out.print("</section>");

                out.print("<section>");
                out.print("<h3>Exercice 2 : Affichage verticale</h3>");
                for (int i = 0; i < value.length(); i++) {
                    out.print(String.format("%s</br>", value.charAt(i)));
                }
                out.print("</section>");

                out.print("<section>");
                out.print("<h3>Exercice 3 : Retour à la ligne :</h3>");
                for (int i = 0; i < value.length(); i++) {
                    if (value.charAt(i) == ' ') {
                        out.print("<br />");
                    } else {
                        out.print(value.charAt(i));
                    }
                }
                out.print("</section>");

                out.print("<section>");
                out.print("<h3>Exercice 4 : Afficher une lettre sur deux :</h3>");
                boolean show_letter = true;

                for (int i = 0; i < value.length(); i++) {
                    if (show_letter) {
                        out.print(value.charAt(i));
                    }
                    show_letter = !show_letter;
                }
                out.print("</section>");

                out.print("<section>");
                out.print("<h3>Exercice 5 : La phrase en verlant</h3>");
                for (int i = value.length() - 1; i >= 0; i--) {
                    out.print(value.charAt(i));
                }
                out.print("</section>");

                out.print("<section>");
                out.print("<h3>Exercice 6 : Consonnes et voyelles</h3>");
                char[] vowels = {'a', 'e', 'i', 'o', 'u', 'y'};
                char[] consonants = {'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z'};

                int number_of_vowels = 0;
                int number_of_consonants = 0;

                String value_to_lower_case = value.toLowerCase();

                for (int i = 0; i < value_to_lower_case.length(); i++) {
                    char letter = value_to_lower_case.charAt(i);

                    for (char vowel : vowels) {
                        if (letter == vowel) {
                            number_of_vowels++;
                            break;
                        }
                    }

                    for (char consonant : consonants) {
                        if (letter == consonant) {
                            number_of_consonants++;
                            break;
                        }
                    }
                }
                out.print(String.format("<p>Nombre de voyelles: %d, nombre de consonnes: %d</p>", number_of_vowels, number_of_consonants));
                out.print("</section>");
            }
        %>

        <a href="index.html">Retour au sommaire</a>
    </main> 
</body>
</html>
