<?php

require('./modulos/header.php');

$id_jogo = $_GET['id'] ?? null;

$query_jogo = "SELECT nome FROM jogo WHERE id = {$id_jogo}";
$jogo = mysqli_fetch_array(mysqli_query($conn, $query_jogo));

$query_plataformas = "SELECT * FROM plataforma WHERE id IN (SELECT id_plataforma FROM jogo_plataforma WHERE id_jogo = {$id_jogo})";
$plataformas = mysqli_query($conn, $query_plataformas);

$query_cadastrar_plataformas = "SELECT * FROM plataforma WHERE id NOT IN (SELECT id_plataforma FROM jogo_plataforma WHERE id_jogo = {$id_jogo}) ORDER BY nome ASC";
$cadastrar_plataformas = mysqli_query($conn, $query_cadastrar_plataformas);

?>

<div id="table-container">

    <div id="table-results">
        <table>
            <tr>
                <th>Plataformas - <?=$jogo['nome']?></th>
                <th class="utilities">Excluir</th>
            </tr>
            <?php while ($plataforma = mysqli_fetch_array($plataformas)) {?>
            <tr>
                <td><?=$plataforma['nome']?></td>
                <td class="utilities"><a href="excluir-plataforma-jogo.php?id_plataforma=<?= $plataforma['id']?>&id_jogo=<?=$id_jogo?>">Excluir</a></td>
            </tr>
            <?php } ?>
        </table>

        <?php if($plataformas->num_rows == 0) { ?>
            <h1 id="msg-nothing">Não há plataformas cadastradas para o jogo: <?=$jogo['nome']?></h1>
        <?php }  ?>

    </div>

    <div id="form-new-game-idiom">
            <form action="cadastrar-plataformas-jogo.php" method="post">
                <select name="id_plataforma" id="category-game" required>
                    <option value="" disable selected>Selecione uma plataforma</option>

                    <?php while ($plataforma = mysqli_fetch_array($cadastrar_plataformas)) { ?>
                        <option value="<?=$plataforma['id']?>"><?=$plataforma['nome']?></option>
                    <?php } ?>
                </select>

                <input type="hidden" value="<?=$id_jogo?>" name="id_jogo">
                <br></br>
                <button type="submit" id="button">Cadastrar</button>
            </form>
    </div>

</div>

<?php
    require('./modulos/footer.php');
?>