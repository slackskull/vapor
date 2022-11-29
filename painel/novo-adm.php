<?php
require('./modulos/header.php');
$error = $_GET['error'] ?? null;
$success = $_GET['success'] ?? null;

$query_administradores = "SELECT * FROM administrador ORDER BY nome ASC";
$administradores = mysqli_query($conn, $query_administradores);

?>

<form action="cadastrar-adm.php" method="post">
    <h3 class="h3jogo">Informe os seguintes dados:</h3>
    <div id="form-create">
        <p>Nome*</p>
        <input type="text" name="name-adm" id="name-adm" required>
        <br></br>
        <p>CPF*</p>
        <input type="text" name="cpf-adm" id="cpf-adm" maxlength="11" minlength="11" required>
        <br></br>
        <p>Email*</p>
        <input type="email" name="email-adm" id="email-adm" required>
        <br></br>
        <p>Senha*</p>
        <input type="text" name="password-adm" id="password-adm" maxlength="6" required>
        <br></br>
    </div>

    <?php if ($error != null) {?>
        <div class="error-adm"><?=$error?></div>
    <?php } ?>

    <?php if ($success != null) {?>
        <div class="success"><?=$success?></div>
    <?php } ?>

    <div>
    <button type="submit" id="button">Salvar</button>
    </div>
</form>

<?php
    require('./modulos/footer.php');
?>
