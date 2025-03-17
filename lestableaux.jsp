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
        <h3>Exercices sur les tableaux</h3>
        <form action="#" method="post">
            <label for="input_numbers">Saisir au minimum 3 chiffres/nombres <b>séparés par un espace</b> :</label>
            <input type="text" id="input_numbers" name="input_numbers" pattern=".{5,}" required>
            <button type="submit">Calculer</button>
        </form>

        <%
            String input_numbers = request.getParameter("input_numbers");
        
            if (input_numbers != null && !input_numbers.isEmpty()) {
                String[] numbers_str = input_numbers.split(" ");
        
                int[] numbers = new int[numbers_str.length];
                
                for (int i = 0; i < numbers_str.length; i++) {
                    numbers[i] = Integer.parseInt(numbers_str[i]);
                }
                
                out.println(String.format("Le carré de la première valeur (%d) est : %d.<br />", numbers[0], numbers[0] * numbers[0]));
                
                out.println(String.format("La somme des deux premières valeurs est %d + %d = %d.<br />", numbers[0], numbers[1], numbers[0] + numbers[1]));
                
                int sum = 0;
                for (int i = 0; i < numbers.length; i++) {
                    sum += numbers[i];
                }
                out.println(String.format("La somme de toutes les valeurs est %d.<br />", sum));

                int max = numbers[0];
                for (int i = 1; i < numbers.length; i++) {
                    if (numbers[i] > max) {
                        max = numbers[i];
                    }
                }
                out.println(String.format("La valeur maximum est : %d.<br />", max));

                int min = numbers[0];
                for (int i = 1; i < numbers.length; i++) {
                    if (numbers[i] < min) {
                        min = numbers[i];
                    }
                }
                out.println(String.format("La valeur minimum est : %d.<br />", min));
            } else {
                out.println("<p>Veuillez entrer des nombres séparés par des espaces.</p>");
            }
        %>

        <a href="index.html">Retour au sommaire</a>
    </main>
</body>
</html>
