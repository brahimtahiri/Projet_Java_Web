<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

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
        <h3>Travailler avec une Base de Données :</h3>

        <% 
            Connection connection = null;
            PreparedStatement preparedStatement = null;
            ResultSet resultSet = null;

            try {
                String url = "jdbc:mariadb://localhost:3306/films";
                String username = "cnam";
                String password = "cnam";
                Class.forName("org.mariadb.jdbc.Driver");

                connection = DriverManager.getConnection(url, username, password);

                String sql = "SELECT idFilm, titre, annee FROM Film WHERE annee >= 2000";
                preparedStatement = connection.prepareStatement(sql);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    String colonne1 = resultSet.getString("idFilm");
                    String colonne2 = resultSet.getString("titre");
                    String colonne3 = resultSet.getString("annee");

                    out.println("ID : " + colonne1 + ", Titre : " + colonne2 + ", Année : " + colonne3 + "<br>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (resultSet != null) resultSet.close();
                    if (preparedStatement != null) preparedStatement.close();
                    if (connection != null) connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>

        <h3>Exercice 1 : Les films entre 2000 et 2015</h3>
        <p>Extraire les films dont l'année est supérieure à 2000 et inférieure à 2015.</p>

        <h3>Exercice 2 : Année de recherche</h3>
        <p>Créer un champ de saisie permettant à l'utilisateur de choisir l'année de sa recherche.</p>

        <h3>Exercice 3 : Modification du titre du film</h3>
        <p>Créer un formulaire permettant de modifier le titre d'un film sur la base de son ID (ID choisi par l'utilisateur).</p>

        <h3>Exercice 4 : Ajouter un nouveau film</h3>
        <p>Créer un formulaire pour saisir un nouveau film dans la base de données.</p>

    </main>
</body>
</html>
