<?php
    require('./modulos/header.php');

    $query_idiomas = "SELECT DISTINCT id, nome FROM idioma";
    $idiomas = mysqli_query($conn, $query_idiomas);
?>

<div id="table-container">
    <div id="button-container">
        <a href="novo-idioma.php"><button class="button-new-item">Novo Idioma</button></a>
    </div>
    <div id="table-results">
        <table>
            <tr>
                <th>Idiomas</th>
                <th class="utilities">Editar</th>
                <th class="utilities">Excluir</th>
            </tr>
            <?php while ($idioma = mysqli_fetch_array($idiomas)) {?>
            <tr>
                <td><?=$idioma['nome']?></td>
                <td class="utilities"><a href="editar-idioma.php?id=<?=$idioma['id']?>">Editar</a></td>
                <td class="utilities"><a href="excluir-idioma.php?id=<?=$idioma['id']?>">Excluir</a></td>
            </tr>
            <?php } ?>
        </table>
    </div>
</div>

<?php
    require('./modulos/footer.php');
?>