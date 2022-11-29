<?php

require('./modulos/header.php');

$id_jogo = $_GET['id'] ?? null;

$query_jogo = "SELECT nome FROM jogo WHERE id = {$id_jogo}";
$jogo = mysqli_fetch_array(mysqli_query($conn, $query_jogo));

$query_idiomas = "SELECT * FROM idioma WHERE id IN (SELECT id_idioma FROM jogo_idioma WHERE id_jogo = {$id_jogo}) ORDER BY nome ASC";
$idiomas = mysqli_query($conn, $query_idiomas);

$query_cadastrar_idiomas = "SELECT * FROM idioma WHERE id NOT IN (SELECT id_idioma FROM jogo_idioma WHERE id_jogo = {$id_jogo}) ORDER BY nome ASC";
$cadastrar_idiomas = mysqli_query($conn, $query_cadastrar_idiomas);

?>

<div id="table-container">

    <div id="table-results">
        <table>
            <tr>
                <th>Idiomas - <?=$jogo['nome']?></th>
                <th class="utilities">Excluir</th>
            </tr>
            <?php while ($idioma = mysqli_fetch_array($idiomas)) {?>
            <tr>
                <td><?=$idioma['nome']?></td>
                <td class="utilities"><a href="excluir-idioma-jogo.php?id_idioma=<?= $idioma['id']?>&id_jogo=<?=$id_jogo?>">Excluir</a></td>
            </tr>
            <?php } ?>
        </table>

        <?php if($idiomas->num_rows == 0) { ?>
            <h1 id="msg-nothing">Não há idiomas cadastrados para o jogo: <?=$jogo['nome']?></h1>
        <?php }  ?>

    </div>

    <div id="form-new-game-idiom">
            <form action="cadastrar-idiomas-jogo.php" method="post">
                <select name="id_idioma" id="category-game" required>
                    <option value="" disable selected>Selecione um idioma</option>

                    <?php while ($idioma = mysqli_fetch_array($cadastrar_idiomas)) { ?>
                        <option value="<?=$idioma['id']?>"><?=$idioma['nome']?></option>
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