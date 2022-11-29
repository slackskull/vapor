<?php
    require('./modulos/header.php');
    $error = $_GET['error'] ?? null;
    $id_idioma = $_GET['id'] ?? null;

    $consultar_idioma = "SELECT nome FROM idioma WHERE id = '{$id_idioma}'";
    $idioma = mysqli_fetch_assoc(mysqli_query($conn, $consultar_idioma));
?>

<form action="atualizar-idioma.php" method="post">
    <div id="form-create">
        <p>Editar Idioma</p>
        <input value="<?=$idioma['nome']?>" type="text" name="idiom">
        <input value="<?=$id_idioma?>" type="hidden" name="id">
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