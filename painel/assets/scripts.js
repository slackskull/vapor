
// INICIO FUNÇÃO DE EXCLUIR JOGO

function excluirJogo(idJogo) {
    const excluirJogo = confirm("Realmete deseja excluir esse jogo?")

    if (excluirJogo == true) {
        window.open("excluir-jogo.php?id=" + idJogo, "_SELF")
    }
}

// ESTA FUNÇÃO IRA ABRIR UMA JANELA DE CONFIRMAÇÃO SE VOCÊ REALMENTE DESEJA EXCLUIR O JOGO COM UM "OK" OU "CANCELAR".
// AO APERTAR "OK" ELE VALIDA COMO TRUE E EXCLUE O JOGO COM UM if, AO APERTAR CANCELAR ELE FECHA A JANELA E NÃO FAZ NADA.


// FIM FUNÇÃO DE EXCLUIR JOGO


// INICIO FUNÇÃO DE EXCLUIR PLATAFORMA

function excluirPlataforma(idPlataforma) {
    const excluirPlataforma = confirm("Realmete deseja excluir essa plataforma?")

    if (excluirPlataforma == true) {
        window.open("excluir-plataforma.php?id=" + idPlataforma, "_SELF")
    }
}

// FIM FUNÇÃO DE EXCLUIR PLATAFORMA

// INICIO FUNÇÃO DE EXCLUIR IDIOMA

function excluirIdioma(idIdioma) {
    const excluirIdioma = confirm("Realmete deseja excluir esse idioma?")

    if (excluirIdioma == true) {
        window.open("excluir-idioma.php?id=" + idIdioma, "_SELF")
    }
}

// FIM FUNÇÃO DE EXCLUIR IDIOMA

// INICIO FUNÇÃO DE EXCLUIR CATEGORIA

function excluirCategoria(idCategoria) {
    const excluirCategoria = confirm("Realmete deseja excluir essa categoria?")

    if (excluirCategoria == true) {
        window.open("excluir-categoria.php?id=" + idCategoria, "_SELF")
    }
}

// FIM FUNÇÃO DE EXCLUIR CATEGORIA




// INICIO FUNÇÃO DE REMOVER MENSAGENS DE ERRO INDEX.PHP

function removeErrorMessage() {
    const errorMessage = document.getElementById("error")

    if (errorMessage != null) {
        errorMessage.remove()
    }
}

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO INDEX.PHP

// INICIO FUNÇÃO DE REMOVER MENSAGENS DE ERRO PLATAFORMA

function removeErrorMessageplataforma() {
    const errorMessage = document.getElementById("error-plataforma")

    if (errorMessage != null) {
        errorMessage.remove()
    }
}

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO PLATAFORMA

// INICIO FUNÇÃO DE REMOVER MENSAGENS DE ERRO IDIOMA

function removeErrorMessageidioma() {
    const errorMessage = document.getElementById("error-idioma")

    if (errorMessage != null) {
        errorMessage.remove()
    }
}

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO IDIOMA

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO CATEGORIA

function removeErrorMessagecategoria() {
    const errorMessage = document.getElementById("error-categoria")

    if (errorMessage != null) {
        errorMessage.remove()
    }
}

// FIM FUNÇÃO DE REMOVER MENSAGENS DE ERRO CATEGORIA


//INICIO FUNÇAO DE REMOVER MENSAGENS DE ERRO DE UMA VEZ

function removerElementoPorId(idElemento) {
    let elemento = document.getElementById(idElemento)

    if (elemento != null) {
        elemento.remove()
    }
}

//FIM FUNÇAO DE REMOVER MENSAGENS DE ERRO DE UMA VEZ


// INICIO DA FUNÇÃO DE RELOGIO

// INICIO RELOGIO
function obeterDataHoraAtual() {
    let data = new Date()
    let hora = data.getHours()
    let minutos = data.getMinutes()
    let segundos = data.getSeconds()

    //FIM RELOGIO


    //INICIO DATA
    let dia = data.getDate()
    let mes = data.getMonth()+1
    let ano = data.getFullYear()
    //FIM DATA


    //INICIO FUNÇOES IF 
    if (mes < 10) {
        mes = "0" + mes
    }

    if (dia < 10) {
        dia = "0" + dia
    }

    if (hora < 10) {
        hora = "0" + hora
    }

    if (minutos < 10) {
        minutos = "0" + minutos
    }

    if (segundos < 10) {
        segundos = "0" + segundos
    }

    let dataAtual = dia + "/" + mes + "/" + ano + " - " + hora + ":" + minutos + ":" + segundos

    return dataAtual

}
//FIM FUNÇOES IF 


//INICIO FUNÇAO DE ATUALIZAR RELOGIO A CADA 1 SEGUNDO
function updateClock() {
    const clock = document.getElementById('clock')
    clock.innerHTML = obeterDataHoraAtual()


    setInterval(function () {
        clock.innerHTML = obeterDataHoraAtual()
    }, 1000)
}

//FIM FUNÇAO DE ATUALIZAR RELOGIO A CADA 1 SEGUNDO

// FIM DA FUNÇÃO DE RELOGIO

// INICIO FUNÇÃO MUDA COR

// function numeroAleatorio(max) {
//     return Math.floor(Math.random() * max);
// }

// function corAleatoria() {
//     let naleatorio = numeroAleatorio(3) 
//     let amarelo = "0"
//     let azul = "1"
//     let vermelho = "2"

//     if (naleatorio == amarelo) {
//         document.getElementById('header-content').style.color = "yellow"
//     }
//     if (naleatorio == azul) {
//         document.getElementById('header-content').style.color = "blue"

//     }
//     if (naleatorio == vermelho) {
//         document.getElementById('header-content').style.color = "red"
//     }

// }

// // FIM FUNÇÃO MUDA COR 


// // INICIO CHAMADA DE FUNÇÃO MUDA COR

// function updateColor(){
//     setInterval(function () {
//         corAleatoria()
//     }, 1000)
    
// }
// FIM CHAMADA DE FUNÇÃO MUDA COR

// INICIO FUNÇÃO MUDA COR

function cor_aleatoria() {
    const r = Math.floor(Math.random() * 256)
    const g = Math.floor(Math.random() * 256)
    const b = Math.floor(Math.random() * 256)
    const cor = "rgb(" + r + "," + g + "," + b + ")"

    document.getElementById("header-content").style.color = cor
}

function iniciar_mudanca_de_cor() {
    setInterval(cor_aleatoria, 1000)
}

// FIM FUNÇÃO MUDA COR


//INICIO FUNÇÃO DE DEIXAR LETRA MAIUSCULA 

function transformar_texto_maiusculo(elemento) {
    let valor_que_usuario_digitou = elemento.value

    elemento.value = (valor_que_usuario_digitou.toUpperCase())
}

//FIM FUNÇÃO DE DEIXAR LETRA MAIUSCULA 

//INICIO FUNÇÃO DE DEIXAR PRIMEIRA LETRA MAIUSCULA 

function transformar_primeira_letra_maiuscula(elemento) {
    elemento.value = elemento.value[0].toUpperCase() + elemento.value.slice(1).toLowerCase()
}

//FIM FUNÇÃO DE DEIXAR PRIMEIRA LETRA MAIUSCULA 