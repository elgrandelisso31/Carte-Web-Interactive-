<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="website icon" type="png" href="C:\wamp64\www\projet\img\logo.png">
    <link rel="stylesheet" href="inscription1.css" />
    <title>Inscription</title>
</head>

<body>
    <div class="login-page">
        <div class="form">

            <form class="login-form" action="process2.php" method="POST">
                <h1>Inscription</h1>
                <input type="text" name="nom" placeholder="Nom" />
                <input type="text" name="username" placeholder="Email" />
                <input type="password" name="password" placeholder="Mot de passe" />
                <input id="button" type="submit" value="login" name="submit" />
                <p class="message">
                    Vous avez deja un compte ? <a href="http://localhost/projet/login/login1.php">Connectez-vous ici</a>
                </p>

            </form>
        </div>
    </div>
</body>

</html>