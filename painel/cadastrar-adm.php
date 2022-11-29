<?php

require('./modulos/conexao.php');

$name_adm = ucfirst(mb_strtolower($_POST['name-adm'])) ?? null;
$cpf_adm = $_POST['cpf-adm'] ?? null;
$email_adm = $_POST['email-adm'] ?? null;
$password_adm = $_POST['password-adm'] ?? null;

$options = [
    'cost' => 10,
];

$secure_password = password_hash($password_adm, PASSWORD_DEFAULT, $options);

$consultar_email = "SELECT email FROM administrador WHERE email = '{$email_adm}'";
$consultar_cpf = "SELECT cpf FROM administrador WHERE cpf = '{$cpf_adm}'";

$query_novo_administrador = "INSERT INTO administrador (nome, cpf, email, senha) VALUES ('{$name_adm}', {$cpf_adm}, '{$email_adm}','{$secure_password}')";

$usuario_por_email = mysqli_fetch_assoc(mysqli_query($conn, $consultar_email));
$usuario_por_cpf = mysqli_fetch_assoc(mysqli_query($conn, $consultar_cpf)); 

if ($usuario_por_email == null && $usuario_por_cpf == null) {
    mysqli_query($conn, $query_novo_administrador);
    header('location: novo-adm.php?success=Administrador cadastrado com sucesso!');
    die();
}

if ($usuario_por_email != null && $usuario_por_cpf != null) {
    header('location: novo-adm.php?error=Email e CPF já cadastrado, procure o admistrador!');
    die();
}

if ($usuario_por_cpf != null) {
    header('location: novo-adm.php?error=CPF já cadastrado, procure o admistrador!');
    die();
}

if ($usuario_por_email != null) {
    header('location: novo-adm.php?error=Email já cadastrado, procure o admistrador!');
    die();
}


?>