<?php
    $error= $_GET['error'] ?? null;
?>



<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/global.css">
    <link rel="stylesheet" href="./assets/normalize.css">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Vapor - Login</title>
</head>
<body>
    <div id="body-container">
        <form id="log" action="login.php" method="post">
            <div id="login">
                <h3>Login - Vapor</h3>
                <input class="input-log" type="text" name="user" placeholder="E-mail" required>
                <br></br>
                <input class="input-log" type="password" name="password" placeholder="Senha" required>
                <br></br>
                <button class="button-login" type="submit">LOGIN</button>

                <?php if ($error != null) { ?>
                <div class="error"><p><?=$error?></p></div>
                <?php } ?>
                
            </div>
        </form>
    </div>
</body>
</html>