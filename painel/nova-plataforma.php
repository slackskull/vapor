<?php
    require('./modulos/header.php');
    $error = $_GET['error'] ?? null;
?>

<form action="cadastrar-plataforma.php" method="post">
    <div id="form-create">
        <p>Nova Plataforma</p>
        <input type="text" name="platform" id="platform" placeholder="Plataforma" onkeyup ="transformar_primeira_letra_maiuscula(this)" >
        <br></br>
        <button type="submit">Salvar</button>
    </div>
</form>

<?php if ($error != null) { ?>
    <div class="error-idioma" id="error-plataforma"><p><?=$error?></p></div>
    <?php } ?>

<?php
    require('./modulos/footer.php');
?>