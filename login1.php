<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/x-icon" href="<?php echo 'C:\wamp64\www\projet\img\Evry.ico' ?>" />
    <link rel="stylesheet" href="login1.css" />
    <title>login</title>
</head>

<body>
    <div class="login-page">
        <div class="form">

            <form class="login-form" action="process1.php" method="POST">
                <h1>Connexion</h1>
                <input type="text" name="username" placeholder="Nom d'utilisateur" />
                <input type="password" name="password" placeholder="Mot de passe" />
                <input id="button" type="submit" value="login" name="submit" />
                <p class="message">
                    Pas encore inscrit ? <a href="http://localhost/projet/login/inscription1.php">Créer un compte</a>
                </p>

            </form>
        </div>
    </div>


</body>

</html>