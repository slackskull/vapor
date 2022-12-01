
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


// INICIO FUNÇÃO DE EXCLUIR PLATAFORMA

function excluirPlataforma(idPlataforma) {
    let excluirPlataforma = confirm ("Realmete deseja excluir essa plataforma?")

    if (excluirPlataforma == true) {
        window.open("excluir-plataforma.php?id=" + idPlataforma, "_SELF")
    }
}

// FIM FUNÇÃO DE EXCLUIR PLATAFORMA

// INICIO FUNÇÃO DE EXCLUIR IDIOMA

function excluirIdioma(idIdioma) {
    let excluirIdioma = confirm ("Realmete deseja excluir esse idioma?")

    if (excluirIdioma == true) {
        window.open("excluir-idioma.php?id=" + idIdioma, "_SELF")
    }
}

// FIM FUNÇÃO DE EXCLUIR IDIOMA

// INICIO FUNÇÃO DE EXCLUIR CATEGORIA

function excluirCategoria(idCategoria) {
    let excluirCategoria = confirm ("Realmete deseja excluir essa categoria?")

    if (excluirCategoria == true) {
        window.open("excluir-categoria.php?id=" + idCategoria, "_SELF")
    }
}

// FIM FUNÇÃO DE EXCLUIR CATEGORIA




// INICIO FUNÇÃO DE REMOVER MENSAGENS DE ERRO INDEX.PHP

function removeErrorMessage() { 
    let errorMessage = document.getElementById("error")

    if (errorMessage != null) {
        errorMessage.remove()
    }
}

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO INDEX.PHP

// INICIO FUNÇÃO DE REMOVER MENSAGENS DE ERRO PLATAFORMA

function removeErrorMessageplataforma() { 
    let errorMessage = document.getElementById("error-plataforma")

    if (errorMessage != null) {
        errorMessage.remove()
    }
}

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO PLATAFORMA

// INICIO FUNÇÃO DE REMOVER MENSAGENS DE ERRO IDIOMA

function removeErrorMessageidioma() { 
    let errorMessage = document.getElementById("error-idioma")

    if (errorMessage != null) {
        errorMessage.remove()
    }
}

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO IDIOMA

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO CATEGORIA

function removeErrorMessagecategoria() { 
    let errorMessage = document.getElementById("error-categoria")

    if (errorMessage != null) {
        errorMessage.remove()
    }
}

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO CATEGORIA

