<?php

require('./modulos/conexao.php');

$id_mensagem = $_GET['id'] ?? null;

$query_delete_mensagem_site = "DELETE FROM mensagens_site WHERE id={$id_mensagem}";
$delete_mensagem_site = mysqli_query($conn, $query_delete_mensagem_site);

header("location: mensagens.php");
?>