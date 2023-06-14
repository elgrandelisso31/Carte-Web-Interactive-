<?php
session_start();
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $db = new PDO('mysql:host=localhost;dbname=login', 'root', 'root');

    $sql = "SELECT * FROM user where username = '$username' ";
    $result = $db->prepare($sql);
    $result->execute();
    echo "$sql<br>";




    if ($result->rowCount() > 0) {
        echo "test1 ok<br>";
        $data = $result->fetchAll();

        echo $data[0]["password"] . "<br>";

        if ($password == $data[0]["password"]) {
            header("Location: http://localhost/projet/login/HallA.php");
        }

        $_SESSION['nom'] = $data[0]["Nom"];

        // Fermer la connexion à la base de données en utilisant la méthode null
        $db = null;

        // ...
    }



    // Fermer la connexion à la base de données
}
