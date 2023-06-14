<?php
$host = "localhost";
$username = "root";
$password = "root";
$database = "login";
$conn = mysqli_connect($host, $username, $password, $database);
if (!$conn) {
    die("Connexion à la base de données échouée: " . mysqli_connect_error());
}

// Récupérer les données du formulaire d'inscription
$Nom = $_POST['nom'];
$username = $_POST['username'];
$password = $_POST['password'];

// Vérifier si l'utilisateur existe déjà dans la base de données
$sql1 = "SELECT * FROM user WHERE username='$username'";
$result1 = mysqli_query($conn, $sql1);
if (mysqli_num_rows($result1) > 0) {
    echo "Cette adresse e-mail est déjà utilisée par un autre utilisateur.";
    exit;
}

// Hasher le mot de passe
$hashedPassword = password_hash($password, PASSWORD_BCRYPT);

// Insérer les données de l'utilisateur dans la base de données
$sql1 = "INSERT INTO user (Nom, username, password) VALUES ('$Nom' ,' $username',  '$hashedPassword')";
if (mysqli_query($conn, $sql1)) {
    echo '<p style="font-size: 18px; color: green;">Inscription réussie.</p>';
    echo '<button style="padding: 10px 20px; background-color: #007bff; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onclick="window.location.href=\'http://localhost/projet/login/login1.php\'">Retourner à la page de login</button>';
} else {
    echo "Erreur: " . $sql1 . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
