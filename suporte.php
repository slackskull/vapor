<?php 
    $titulo_pagina = "Suporte";

    $success = $_GET['success'] ?? null;
?>

<!DOCTYPE html>
<html lang="pt-BR">
    <?php require('./modulos/top-menu.php') ?>
    <body>
        <div id="body-container">
            <?php require('./modulos/side-menu.php') ?>
            <div id="content">
                <div id="header">
                    <h3>VAPOR - SUPORTE</h3>
                    <p>Informe os dados abaixo:</p>
                    <div id="container-row">
                        <div id="form-suporte">
                            <form action="mensagem.php" method="post" autocomplete="off">
                                <input class="input-suporte" type="text" name="nome" placeholder="Informe seu nome" required>
                                <input class="input-suporte" type="email" name="email" placeholder="Informe seu e-mail" required>
                                <select class="input-suporte" name="assunto" id="assunto" required>
                                    <option value="" selected disabled>Selecione um assunto</option>
                                    <option value="sugestao">Sugestão</option>
                                    <option value="critica">Crítica</option>
                                    <option value="elogio">Elogio</option>
                                    <option value="duvida">Duvida</option>
                                    <option value="suporte">Suporte</option>
                                    <option value="outros">Outros</option>
                                </select>
                                <textarea class="input-suporte" name="mensagem" id="mensagem" cols="30" rows="10" placeholder="Digite sua mensagem" required></textarea>
                                <button class="button" type="submit">Enviar</button>
                                <?php if ($success != null) {?>
                                    <div class="success"><?=$success?></div>
                                <?php } ?>
                            </form>
                        </div>
                        <div id="logo-transparente">
                                <img src="../vapor-php/public/images/logo-vapor-transparente.png" alt="logo_vapor_cinza">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>