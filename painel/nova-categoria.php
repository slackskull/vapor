<?php
    require('./modulos/header.php');
    $error = $_GET['error'] ?? null;
?>

<form action="cadastrar-categoria.php" method="post">
    <div id="form-create">
        <p>Nova Categoria</p>
        <input type="text" name="category" id="category" placeholder="Categoria" onkeyup="transformar_texto_maiusculo(this)">
        <br></br>
        <button type="submit">Salvar</button>
    </div>
</form>

<?php if ($error != null) { ?>
    <div class="error-idioma" id="error-categoria"><p><?=$error?></p></div>
    <?php } ?>

<?php
    require('./modulos/footer.php');
?>