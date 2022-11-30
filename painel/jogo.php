<?php

require('./modulos/header.php');

$query_jogos = "SELECT id, nome FROM jogo";
$jogos = mysqli_query($conn, $query_jogos);

?>

<div id="table-container">
    <div id="button-container">
        <a href="novo-jogo.php"><button class="button-new-item">Novo Jogo</button></a>
    </div>
    <div id="table-results">
        <table>
            <tr>
                <th>Jogos</th>
                <th class="utilities">Idiomas</th>
                <th class="utilities">Plataformas</th>
                <th class="utilities">Editar</th>
                <th class="utilities">Excluir</th>
            </tr>
            <?php while ($jogo = mysqli_fetch_array($jogos)) {?>

                <tr>
                    <td><?=$jogo['nome']?></td>
                    <td class="utilities"><a href="editar-idiomas-jogo.php?id=<?=$jogo['id']?>">Idiomas</a></td>
                    <td class="utilities"><a href="editar-plataformas-jogo.php?id=<?=$jogo['id']?>">Plataformas</a></td>
                    <td class="utilities"><a href="editar-jogo.php?id=<?=$jogo['id']?>">Editar</a></td>
                    <td class="utilities"><a onclick="excluirJogo(<?=$jogo['id']?>)" href="#">Excluir</a></td>
                </tr>
                
            <?php } ?>
        </table>
    </div>
</div>

<?php
    require('./modulos/footer.php');
?>