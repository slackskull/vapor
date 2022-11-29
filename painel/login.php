<?php

require("./modulos/conexao.php");

$user = $_POST['user'] ?? null;
$password = $_POST['password'] ?? null;

$query_adm = "SELECT id, nome, cpf, senha FROM administrador WHERE email = '{$user}'";

$administrador = mysqli_fetch_assoc(mysqli_query($conn, $query_adm));

if ($administrador == null) {
    header('location: index.php?error=Usuário e/ou senha inválido(s)');
}

$senha_confere = password_verify($password, $administrador['senha']);

if ($senha_confere == true) {
    session_start();
    unset($administrador['senha']);
    $_SESSION['administrador'] = $administrador;
    header('location: dashboard.php');
} else {
    header('location: index.php?error=Usuário e/ou senha inválido(s)');
}

?>