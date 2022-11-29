<?php
    require('./modulos/conexao.php');

    $id_jogo = $_GET['id'] ?? null;

    $query_delete_jogo_plataforma = "DELETE FROM jogo_plataforma WHERE id_jogo = {$id_jogo}";

    $query_delete_jogo_idioma = "DELETE FROM jogo_idioma WHERE id_jogo = {$id_jogo}";

    $query_delete_jogo = "DELETE FROM jogo WHERE id = {$id_jogo}";

    mysqli_query($conn, $query_delete_jogo_plataforma);

    mysqli_query($conn, $query_delete_jogo_idioma);

    mysqli_query($conn, $query_delete_jogo);

    header("location: jogo.php");
?>