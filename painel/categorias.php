<?php
    require('./modulos/header.php');

    $query_categorias = "SELECT DISTINCT id, nome FROM categoria";
    $categorias = mysqli_query($conn, $query_categorias);
?>

<div id="table-container">
    <div id="button-container">
        <a href="nova-categoria.php"><button class="button-new-item">Nova Categoria</button></a>
    </div>
    <div id="table-results">
        <table>
            <tr>
                <th>Categorias</th>
                <th class="utilities">Editar</th>
                <th class="utilities">Excluir</th>
            </tr>
            <?php while ($categoria = mysqli_fetch_array($categorias)) {?>
            <tr>
                <td><?=$categoria['nome']?></td>
                <td class="utilities"><a href="editar-categoria.php?id=<?=$categoria['id']?>">Editar</a></td>
                <td class="utilities"><a href="excluir-categoria.php?id=<?=$categoria['id']?>">Excluir</a></td>
            </tr>
            <?php } ?>
        </table>
    </div>
</div>

<?php
    require('./modulos/footer.php');
?>