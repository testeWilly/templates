var IE = document.all ? true : false;
var isOpera = (navigator.userAgent.indexOf("Opera") != -1) ? true : false;
var evt;
var initialized = false;
var filtroAberto = true;

function AlternaFiltro() {
    var url = window.location.toString();
    var urlparts = url.split('/');
    var path = urlparts[0] + "//" + urlparts[2] + "/" + urlparts[3] + "/" + urlparts[4];

    if (filtroAberto) {
        document.getElementById("filtros_tabela").style.display = "none";
        document.getElementById("filtros_tabela").style.visibility = "hidden";
        document.getElementById("filtros_titulo").style.background = "url(\"" + path + "/imagens/bg_filtros_topo_off.jpg\") no-repeat  left bottom ";
        if (document.getElementById("filtros_titulo").getElementsByTagName("h2").length > 0)
            document.getElementById("filtros_titulo").getElementsByTagName("h2")[0].style.background = "url(\"" + path + "/imagens/bg_filtros_topo_off.jpg\") no-repeat  right bottom ";
        document.getElementById("filtros_botoes").style.display = "none";
        document.getElementById("filtros_botoes").style.visibility = "hidden";
        document.getElementById("filtros_container").style.background = "#F8F8F8";
    } else {
        document.getElementById("filtros_tabela").style.display = "";
        document.getElementById("filtros_tabela").style.visibility = "visible";
        document.getElementById("filtros_titulo").style.background = "url(\"" + path + "/imagens/bg_filtros_topo.jpg\") no-repeat  left bottom ";
        if (document.getElementById("filtros_titulo").getElementsByTagName("h2").length > 0)
            document.getElementById("filtros_titulo").getElementsByTagName("h2")[0].style.background = "url(\"" + path + "/imagens/bg_filtros_topo.jpg\") no-repeat  right bottom ";
        document.getElementById("filtros_botoes").style.display = "";
        document.getElementById("filtros_botoes").style.visibility = "visible";
        document.getElementById("filtros_container").style.background = "url(\"" + path + "/imagens/bg_filtroavancado.jpg\") repeat-x left bottom #F8F8F8";
    }

    filtroAberto = !filtroAberto;
}

//adiciona mascara ao telefone
function MascaraTelefone(tel, ev) {
    evt = ev;
    if (!mascaraInteiro(tel)) return false;
    return formataCampo(tel, '0000-0000', evt);
}

//adiciona mascara ao cnpj
function MascaraCNPJ(cnpj, ev) {
    evt = ev;
    if (!mascaraInteiro(cnpj)) return false;
    return formataCampo(cnpj, '00.000.000/0000-00', evt);
}

//adiciona mascara de cpf
function MascaraCPF(cpf, ev) {
    evt = ev;
    if (!mascaraInteiro(cpf)) return false;
    return formataCampo(cpf, '000.000.000-00', evt);
}

//adiciona mascara de cep
function MascaraCep(cep, ev) {
    evt = ev;
    if (!mascaraInteiro(cep)) return false;
    return formataCampo(cep, '00.000-000', evt);
}

//adiciona mascara de data
function MascaraData(data, ev) {
    evt = ev;
    if (!mascaraInteiro(data)) return false;
    return formataCampo(data, '00/00/0000', evt);
}


function SomenteNumeros(ev) {
    evt = ev;
    return mascaraInteiro();
}

//valida numero inteiro com mascara
function mascaraInteiro() {
    var key; // key é o valor da tecla de 0 a 255
    var keychar; // keychar é o valor da tecla em caractere
    var numeros = '0123456789';

    // window.event só existe no IE
    // utilizamos o seguinte código para obter qual tecla foi pressionada em cada browser
    if (window.event)
        key = window.event.keyCode; // INTERNET EXPLORER
    else
    // a variável "e" só existe no Firefox/Mozilla
        if (evt)
            key = evt.which; 	    // FIREFOX 

    // converte de número para caractere		
    keychar = String.fromCharCode(key);

    // teclas de controle (null, 0, backspace, enter, esc)! Aceito!
    if ((key == null) || (key == 0) || (key == 8) ||
      (key == 9) || (key == 13) || (key == 27))
        return true; // aceito
    // números? Aceito!
    // indexOf retorna a posição do caractere no conjunto. 
    // Se não achar o número indexOf retorna -1
    else if ((numeros.indexOf(keychar) > -1))
        return true;
    else
    // outros (a, b, etc)? Não aceito!
        return false;
}

//formata de forma generica os campos
function formataCampo(campo, Mascara, evento) {
    var boleanoMascara;

    var Digitato = evento.keyCode;
    exp = /\-|\.|\/|\(|\)| /g
    campoSoNumeros = campo.value.toString().replace(exp, "");

    var posicaoCampo = 0;
    var NovoValorCampo = "";
    var TamanhoMascara = campoSoNumeros.length; ;

    if (Digitato != 8) { // backspace 
        for (i = 0; i <= TamanhoMascara; i++) {
            boleanoMascara = ((Mascara.charAt(i) == "-") || (Mascara.charAt(i) == ".") || (Mascara.charAt(i) == "/"))
            boleanoMascara = boleanoMascara || ((Mascara.charAt(i) == "(") || (Mascara.charAt(i) == ")") || (Mascara.charAt(i) == " "))
            if (boleanoMascara) {
                NovoValorCampo += Mascara.charAt(i);
                TamanhoMascara++;
            }
            else {
                NovoValorCampo += campoSoNumeros.charAt(posicaoCampo);
                posicaoCampo++;
            }
        }
        campo.value = NovoValorCampo;
        return true;
    }
    else {
        return true;
    }
}