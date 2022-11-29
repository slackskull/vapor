<?php 
    $titulo_pagina = "Categoria";
?>

<!DOCTYPE html>
<html lang="pt-BR">
    <?php require('./modulos/top-menu.php');
    $id_categoria = $_GET['id'];
    $query_games = "SELECT id, nome, imagem_url, valor, data_lancamento FROM jogo WHERE id_categoria = $id_categoria";
    $lista_games = mysqli_query($conn, $query_games);

    $query_categorias = "SELECT nome FROM categoria WHERE id = $id_categoria";
    $categoria = mysqli_fetch_assoc(mysqli_query($conn, $query_categorias));

    ?>
    <body>
        <div id="body-container">
            <?php require('./modulos/side-menu.php') ?>
            <?php if ($lista_games->num_rows > 0) { ?>
            <div id="content">
                <div id="header">Jogo(s) de <?=ucfirst(mb_strtolower($categoria['nome']))?></div>
                <div id="game-list">
                <?php while($jogo = mysqli_fetch_array($lista_games)) { 
                    
                    $query_plataformas = "SELECT DISTINCT plataforma.nome FROM plataforma INNER JOIN jogo_plataforma ON jogo_plataforma.id_plataforma = plataforma.id WHERE jogo_plataforma.id_jogo = {$jogo['id']}";
                    $lista_plataformas = mysqli_query($conn, $query_plataformas);

                    $query_idiomas = "SELECT DISTINCT idioma.nome FROM idioma INNER JOIN jogo_idioma ON jogo_idioma.id_idioma = idioma.id WHERE jogo_idioma.id_jogo = {$jogo['id']}";
                    $lista_idiomas = mysqli_query($conn, $query_idiomas);

                    if ($jogo['valor'] != 0) {
                        $jogo['valor'] = "R$ " . number_format($jogo['valor'], 2, ",");
                    } else {
                        $jogo['valor'] = "Free";
                    }
                    
                ?>
                    <a href="game.php?id=<?=($jogo['id'])?>">
                        <div class="game">
                                <div class="photo">
                                    <img
                                        src="<?=$jogo['imagem_url']?>" 
                                        alt="<?=$jogo['nome']?> Photo"
                                    >
                                </div>

                                <div class="info">
                                    <div class="title"><?=ucfirst(mb_strtolower($jogo['nome']))?></div>
                                    <div class="platforms">
                                        <?php while($plataforma = mysqli_fetch_array($lista_plataformas)) { ?>
                                            <div class="platform sub-block"><?=$plataforma['nome']?></div>
                                        <?php } ?>
                                    </div>
                                    <div class="idioms">
                                        <?php while ($idioma = mysqli_fetch_array($lista_idiomas)) { ?>
                                            <div class="idiom sub-block"><?=$idioma['nome']?></div>
                                        <?php } ?>
                                    </div>
                                    <div class="release-date"><?=date_format(date_create($jogo['data_lancamento']), "d/m/Y")?></div>
                                </div>
                                <div class="price"><?=$jogo['valor']?></div>    
                        </div>
                    </a>
                <?php } ?>
                </div>
                <?php } else { ?>
                    <div id="content">
                    <h2>Não temos jogos da categoria: <?= ucfirst(mb_strtolower($categoria['nome']))?> </h2>
                    </div>
                <?php } ?>
            </div>

        </div>
    </body>
</html>