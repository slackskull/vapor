<?php

require('./modulos/conexao.php');

$name = mb_strtoupper($_POST['name-game']) ?? null;
$price = $_POST['price-game'] ?? null;
$image = $_POST['image-game'] ?? null;
$video = $_POST['movie-game'] ?? null;
$date_game = $_POST['date-game'] ?? null;
$developer = $_POST['dev-game'] ?? null;
$category = $_POST['category-game'] ?? null;
$description = $_POST['description-game'] ?? null;

$query_new_game_with_video = "INSERT INTO jogo (nome, valor, descricao, imagem_url, video_url, data_lancamento, desenvolvedora, id_categoria) VALUES ('{$name}', {$price}, '{$description}','{$image}', '{$video}', '{$date_game}', '{$developer}', {$category})";

$query_new_game_without_video = "INSERT INTO jogo (nome, valor, descricao, imagem_url, data_lancamento, desenvolvedora, id_categoria) VALUES ('{$name}', {$price}, '{$description}','{$image}', '{$date_game}', '{$developer}', {$category})";

if ($video == "") {
    mysqli_query($conn, $query_new_game_without_video);
} else {
    mysqli_query($conn, $query_new_game_with_video);
}

header('location: jogo.php');


?>