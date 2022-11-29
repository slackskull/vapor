<?php

    require('./modulos/autenticacao.php');
    require('./modulos/conexao.php');

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
    <title>Dashboard - Vapor</title>
</head>
<body>
    <div id="modify-container">
        <div id="master-container">
            <div id="menu-container">
                    <div id="logo">
                        <a href="../index.php"><img src="./public/images/logo.png" alt="logo-vapor"></a>
                    </div>    
                    <div id="hello">
                        Olá, <?php $user_loged =explode(" ", $administrador['nome']); echo $user_loged[0]?>!
                    </div>
                    <div id="menu-content">
                        <div class="items"><a href="jogo.php" title="jogos">Jogos</a></div>
                        <div class="items"><a href="plataformas.php" title="plataforma">Plataformas</a></div>
                        <div class="items"><a href="idiomas.php" title="idiomas">Idiomas</a></div>
                        <div class="items"><a href="categorias.php" title="categorias">Categorias</a></div>
                        <div class="items"><a href="mensagens.php" title="mensagens">Mensagens</a></div>
                        <div class="items"><a href="novo-adm.php" title="novoadm">Novo Administrador</a></div>
                        <div class="items"><a href="index.php" title="sair">Sair</a></div>
                    </div>
            </div>
            <div id="header-container">
                <div id="header-content">Dashboard</div>
                <div id="dashboard-content">
                    