<?php
    require('./modulos/header.php');
    $error = $_GET['error'] ?? null;
?>

<form action="cadastrar-idioma.php" method="post">
    <div id="form-create">
        <p>Novo Idioma</p>
        <input type="text" name="idiom" id="idiom" placeholder="Idioma" onkeyup ="transformar_primeira_letra_maiuscula(this)">
        <br></br>
        <button type="submit">Salvar</button>
    </div>
</form>

<?php if ($error != null) { ?>
    <div class="error-idioma" id="error-idioma"><p><?=$error?></p></div>
    <?php } ?>

<?php
    require('./modulos/footer.php');
?>