<?php
require('./modulos/header.php');
$error = $_GET['error'] ?? null;
$success = $_GET['success'] ?? null;
$id_jogo = $_GET['id'] ?? null;

$query_categoria = "SELECT * FROM categoria ORDER BY nome ASC";
$categorias = mysqli_query($conn, $query_categoria);

$query_jogo = "SELECT * FROM jogo WHERE id = {$id_jogo}";
$jogo = mysqli_fetch_assoc(mysqli_query($conn, $query_jogo));

?>

<form action="atualizar-jogo.php" method="post">
    <h3 class="h3jogo">Informe os seguintes dados:</h3>
    <div id="form-create">
        <input type="hidden" name="id_jogo" value="<?=$id_jogo?>">
        <p>Nome*</p>
        <input type="text" name="name-game" id="name-game" value="<?=$jogo['nome']?>" required>
        <br></br>
        <p>Valor*</p>
        <input type="number" name="price-game" id="price-game" min="0" value="<?=$jogo['valor']?>" required>
        <br></br>
        <p>Imagem*</p>
        <input type="url" name="image-game" id="image-game" value="<?=$jogo['imagem_url']?>" required>
        <br></br>
        <p>Video</p>
        <input type="text" name="movie-game" id="movie-game" value="<?=$jogo['video_url']?>">
        <br></br>
        <p>Lançamento*</p>
        <input type="date" name="date-game" id="date-game" value="<?=$jogo['data_lancamento']?>" required>
        <br></br>
        <p>Desenvolvedora*</p>
        <input type="text" name="dev-game" id="dev-game" value="<?=$jogo['desenvolvedora']?>" required>
        <br></br>
        <p>Categoria*</p>
        <select name="category-game" id="category-game">
            <option value="" disabled selected>Selecione</option>

            <?php while ($categoria = mysqli_fetch_array($categorias)) {?>
                <option
                <?php if($categoria['id'] == $jogo['id_categoria']) {
                    echo 'selected'; }?>
                value="<?=$categoria['id']?>"><?=$categoria['nome']?></option>
            <?php } ?>
        </select>
        <br></br>
        <p>Descrição*</p>
        <textarea name="description-game" id="description-game" cols="60" rows="7"><?=$jogo['descricao']?></textarea>
    </div>

    <?php if ($error != null) {?>
        <div class="error-idioma"><?=$error?></div>
    <?php } ?>

    <?php if ($success != null) {?>
        <div class="success"><?=$success?></div>
    <?php } ?>

    <div>
    <button type="submit" id="button">Salvar</button>
    </div>
</form>