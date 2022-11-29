<?php
    require('./modulos/header.php');

    $error = $_GET['error'] ?? null;
    $id_plataforma = $_GET['id'] ?? null;

    $consultar_plataforma = "SELECT nome FROM plataforma WHERE id = '{$id_plataforma}'";
    $plataforma = mysqli_fetch_assoc(mysqli_query($conn, $consultar_plataforma));
?>

<form action="atualizar-plataforma.php" method="post">
    <div id="form-create">
        <p>Editar Plataforma</p>
        <input value="<?=$plataforma['nome']?>" type="text" name="platform">
        <input value="<?=$id_plataforma?>" type="hidden" name="id">
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