
// INICIO FUNÇÃO DE EXCLUIR JOGO

function excluirJogo(idJogo) {
    let excluirJogo = confirm ("Realmete deseja excluir esse jogo?")

    if (excluirJogo == true) {
        window.open("excluir-jogo.php?id=" + idJogo, "_SELF")
    }
}

// ESTA FUNÇÃO IRA ABRIR UMA JANELA DE CONFIRMAÇÃO SE VOCÊ REALMENTE DESEJA EXCLUIR O JOGO COM UM "OK" OU "CANCELAR".
// AO APERTAR "OK" ELE VALIDA COMO TRUE E EXCLUE O JOGO COM UM if, AO APERTAR CANCELAR ELE FECHA A JANELA E NÃO FAZ NADA.


// FIM FUNÇÃO DE EXCLUIR JOGO