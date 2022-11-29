<?php

require('./modulos/conexao.php');

$id_jogo = $_POST['id_jogo'] ?? null;
$id_plataforma = $_POST['id_plataforma'] ?? null;

$query_adicionar_plataforma = "INSERT INTO jogo_plataforma (id_jogo, id_plataforma) VALUES ({$id_jogo},{$id_plataforma})";
mysqli_query($conn, $query_adicionar_plataforma);

header("location: editar-plataformas-jogo.php?id={$id_jogo}");

?>