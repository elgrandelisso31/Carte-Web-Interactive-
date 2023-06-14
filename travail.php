<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="" />
    <title>Mysql</title>
</head>

<body>

    <?php
    $serveur = "localhost";
    $login = "root";
    $pass = "windowsxp03";


    try {
        $connexion = new PDO("mysql:host=$serveur;dbname=login", $login, $pass);
        $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $requete1 = $connexion->prepare(
            "SELECT users.Nom, Salles.Prof
            FROM users 
            INNER JOIN Salles
            ON users.Nom = Salles.Prof"
        );

        $requete1->execute();
        $result = $requete1->fetchall();

        echo '<pre>';
        print_r($result);
        echo '</pre>';
        echo "Hello World";
    } catch (PDOException $e) {
        echo 'Echec : ' . $e->getMessage();
    }

    ?>
</body>

</html>