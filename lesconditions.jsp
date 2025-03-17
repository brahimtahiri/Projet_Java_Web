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
        <h1>Exercices sur les conditions</h1>
        <form action="#" method="post">
            <label for="value_1">Saisir la valeur 1 (A):</label>
            <input type="number" id="value_1" name="value_1">
            <br />
            <label for="value_2">Saisir la valeur 2 (B) :</label>
            <input type="number" id="value_2" name="value_2">
            <br />
            <label for="value_3">Saisir la valeur 3 (C):</label>
            <input type="number" id="value_3" name="value_3">
            <br />
            <button type="submit">Afficher</button>
        </form>

        <%
            String value_1_str = request.getParameter("value_1");
            String value_2_str = request.getParameter("value_2");
            String value_3_str = request.getParameter("value_3");

            if (value_1_str != null && value_2_str != null && value_3_str != null &&
                !value_1_str.isEmpty() && !value_2_str.isEmpty() && !value_3_str.isEmpty()) {

                int value_1 = Integer.parseInt(value_1_str);
                int value_2 = Integer.parseInt(value_2_str);
                int value_3 = Integer.parseInt(value_3_str);

                out.println("<h3>Exercice 1 : Comparaison</h3>");

                String message;
                if (value_1 <= value_3 && value_3 <= value_2) {
                    message = "est";
                } else {
                    message = "n'est pas";
                }

                out.print(String.format("%d %s compris entre %d et %d.<br />", value_3, message, value_1, value_2));

                out.println("<h3>Exercice 2 : Pair ou impair ?</h3>");

                if (value_3 % 2 == 0) {
                    message = "pair";
                } else {
                    message = "impair";
                }

                out.print(String.format("%d est un nombre %s.<br />", value_3, message));
            }
        %>
    </main>
</body>
</html>
