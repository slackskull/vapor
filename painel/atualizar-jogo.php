<?php

require('./modulos/conexao.php');

$id_game = $_POST['id_jogo'] ?? null;
$name = $_POST['name-game'] ?? null;
$price = $_POST['price-game'] ?? null;
$image_url = $_POST['image-game'] ?? null;
$video_url = $_POST['movie-game'] ?? null;
$date_game = $_POST['date-game'] ?? null;
$dev_game = $_POST['dev-game'] ?? null;
$id_category = $_POST['category-game'] ?? null;
$description = $_POST['description-game'] ?? null;

if ($video_url == "" || $video_url == null) {

    $query_delete_video_url = "UPDATE jogo SET video_url = null WHERE id = {$id_game}";
    mysqli_query($conn, $query_delete_video_url);

    $query_update_game_without_video = "UPDATE jogo SET nome = '{$name}', valor = {$price}, descricao = '{$description}', imagem_url = '{$image_url}', data_lancamento = '{$date_game}', desenvolvedora = '{$dev_game}', id_categoria = {$id_category} WHERE id = {$id_game}";

} else {

    $query_update_game_with_video = "UPDATE jogo SET nome = '{$name}', valor = {$price}, descricao = '{$description}', imagem_url = '{$image_url}',
    video_url = '{$video_url}', data_lancamento = '{$date_game}', desenvolvedora = '{$dev_game}', id_categoria = {$id_category} WHERE id = {$id_game}";

    mysqli_query($conn, $query_update_game_with_video);

}

header("location: editar-jogo.php?id={$id_game}&success=Jogo atualizado com sucesso!");

?>