<?php
    require('./modulos/header.php');

    $error = $_GET['error'] ?? null;
    $id_categoria = $_GET['id'] ?? null;

    $consultar_categoria = "SELECT nome FROM categoria WHERE id = '{$id_categoria}'";
    $categoria = mysqli_fetch_assoc(mysqli_query($conn, $consultar_categoria));
?>

<form action="atualizar-categoria.php" method="post">
    <div id="form-create">
        <p>Editar Categoria</p>
        <input value="<?=$categoria['nome']?>" type="text" name="category">
        <input value="<?=$id_categoria?>" type="hidden" name="id">
        <br></br>
        <button type="submit">Atualizar</button>
    </div>
</form>

<?php if ($error != null) { ?>
    <div class="error-idioma"><p><?=$error?></p></div>
    <?php } ?>

<?php
    require('./modulos/footer.php');
?>