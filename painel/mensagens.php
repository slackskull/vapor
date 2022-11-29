<?php
    require('./modulos/header.php');

    $query_mensagens_site = "SELECT * FROM mensagens_site";
    $mensagens_site = mysqli_query($conn, $query_mensagens_site);
?>

<?php if($mensagens_site->num_rows == 0) { ?>
            <h1 id="msg-nothing">Não há mensagens no momento!</h1>
<?php } else { ?>

<div id="table-container">
    <div id="table-results">
        <table>
            <tr>
                <th>Nome</th>
                <th>Email</th>
                <th>Assunto</th>
                <th>Mensagem</th>
                <th class="utilities">Arquivar</th>
            </tr>
            <?php while ($mensagem_site = mysqli_fetch_array($mensagens_site)) {?>
            <tr>
                <td><?=$mensagem_site['nome']?></td>
                <td><?=$mensagem_site['email']?></td>
                <td><?=$mensagem_site['assunto']?></td>
                <td><a href="visualizar-mensagem.php?id=<?=$mensagem_site['id']?>">View</td></a>
                <td class="utilities"><a href="arquivar-mensagem-site.php?id=<?=$mensagem_site['id']?>">Arquivar</a></td>
            </tr>
            <?php } ?>
        </table>
    </div>
</div>
<?php } ?>
<?php
    require('./modulos/footer.php');
?>