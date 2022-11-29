<?php 

require('./modulos/conexao.php');

$nome = $_POST['nome'] ?? null;
$email = $_POST['email'] ?? null;
$assunto = ucfirst(mb_strtolower($_POST['assunto'])) ?? null;
$mensagem = addslashes($_POST['mensagem']) ?? null;



$query_inserir_mensagem_banco =  "INSERT INTO mensagens_banco(nome, email, assunto, mensagem) VALUES('{$nome}', '{$email}', '{$assunto}', '{$mensagem}');";
$inserir_mensagem_banco = mysqli_query($conn, $query_inserir_mensagem_banco);

$query_inserir_mensagem_site =  "INSERT INTO mensagens_site(nome, email, assunto, mensagem) VALUES('{$nome}', '{$email}', '{$assunto}', '{$mensagem}');";

if ($inserir_mensagem_banco != null) {
    $inserir_mensagem_site = mysqli_query($conn, $query_inserir_mensagem_site);
}

header("location: suporte.php?success=Sua mensagem foi enviada com sucesso!");
?>