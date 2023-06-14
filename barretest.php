<?php
$bdd = new PDO('mysql:host=localhost;dbname=login;', 'root', 'root');

if (isset($_GET['envoyer'])) { // Vérifier si le formulaire a été soumis
    if (!empty($_GET['s'])) {
        $recherche = htmlspecialchars($_GET['s']);
        $allusers = $bdd->query('SELECT * FROM personnel WHERE nom LIKE "%' . $recherche . '%"');
    } else {
        $allusers = $bdd->query('SELECT * from personnel');
    }
} else {
    $allusers = $bdd->query('SELECT * from personnel');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Recherche Avancée</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;

        }

        form {
            margin-bottom: 20px;
        }

        input[type="search"] {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .afficher_utilisateur {
            display: grid;
            grid-gap: 10px;
            grid-template-columns: 1fr 1fr;
            /* Deux colonnes de largeur égale */
            grid-template-rows: 1fr 1fr 1fr;
            /* Trois lignes de hauteur égale */
            grid-gap: 10px;
            /* Espacement entre les éléments de la grille */
        }

        p {
            margin: 0;
            padding: 5px;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
    </style>
</head>

<body>
    <form method="GET">
        <input type="search" id="search" name="s" placeholder="Recherche par le nom d'un prof" autocomplete="off" />
        <input type="submit" name="envoyer" />
    </form>
    <section class="afficher_utilisateur">
        <?php
        if (isset($_GET['envoyer']) && $allusers->rowCount() > 0) { // Vérifier si le formulaire a été soumis et s'il y a des résultats
            while ($nom = $allusers->fetch()) {
        ?>
                <p><?= $nom['nom']; ?></p>
                <p><?= $nom['prenom']; ?></p>
                <p><?= $nom['code_bureau']; ?></p>
                <p><?= $nom['email']; ?></p>
            <?php
            }
        } else {
            ?>
            <p>Aucun utilisateur trouvé</p>
        <?php
        }
        ?>
    </section>

</body>

</html>