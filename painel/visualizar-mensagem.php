<?php

require('./modulos/header.php');

$id_mensagem = $_GET['id'] ?? null;

$query_mensagem = "SELECT * FROM mensagens_site WHERE id={$id_mensagem}";
$mensagem = mysqli_fetch_assoc(mysqli_query($conn, $query_mensagem));
?>

<div id="table-container">
    <div id="table-row">    
        <div class="dados-usuario">
            <h3>Nome</h3>
            <input type="text" value="<?=$mensagem['nome']?>" readonly>
        </div>
        <div class="dados-usuario">
            <h3>Email</h3>
            <input type="text" value="<?=$mensagem['email']?>" readonly>
        </div>
        <div class="dados-usuario">
            <h3>Assunto</h3>
            <input type="text" value="<?=$mensagem['assunto']?>" readonly>
        </div>
    </div>

    <div class="mensagem-usuario">
            <h3>Menssagem</h3>
            <textarea name="msg-user" id="msg-user" ><?=$mensagem['mensagem']?></textarea>
        </div>

        <div id="botao-msg">
            <a href="mensagens.php">
            <button id="button-msg">
                Voltar
            </button>
            </a>
        </div>
    </div>
</div>