<?php
    require('./modulos/header.php');

    $query_plataformas = "SELECT DISTINCT id, nome FROM plataforma";
    $plataformas = mysqli_query($conn, $query_plataformas);
?>

<div id="table-container">
    <div id="button-container">
        <a href="nova-plataforma.php"><button class="button-new-item">Nova Plataforma</button></a>
    </div>
    <div id="table-results">
        <table>
            <tr>
                <th>Plataformas</th>
                <th class="utilities">Editar</th>
                <th class="utilities">Excluir</th>
            </tr>
            <?php while ($plataforma = mysqli_fetch_array($plataformas)) {?>
            <tr>
                <td><?=$plataforma['nome']?></td>
                <td class="utilities"><a href="editar-plataforma.php?id=<?=$plataforma['id']?>">Editar</a></td>
                <td class="utilities"><a href="excluir-plataforma.php?id=<?=$plataforma['id']?>">Excluir</a></td>
            </tr>
            <?php } ?>
        </table>
    </div>
</div>

<?php
    require('./modulos/footer.php');
?>