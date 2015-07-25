//Script para manipular o jQzoom
//Ativa o jQzoom
$(document).ready(function () {
    var larguraImagem;
    $('#imgPrincipalProduto').load(function () {
        larguraImagem = $('#imgPrincipalProduto').width();
        //Define a largura da Div para corrigir a centralização
        $('#divImagemPrincipalZoom').css('width', larguraImagem + 'px');
    });

    // Ajusta o alinhamento da foto principal        
    var src;
    if ((jQuery.browser.msie && parseInt(jQuery.browser.version, 10) <= 8) || $.browser.mozilla) {
        //Fix IE 6,7,8, Mozilla: evento load da imagem não é disparado
        src = $("#imgPrincipalProduto").attr("src");
        //tarefa 101177: parametro random retirado da url pra que pegue do cache
        $("#imgPrincipalProduto").attr({ src: src });
        LoadZoom();

    } else {
        if ((jQuery.browser.msie && parseInt(jQuery.browser.version, 10) == 9)) {
            //Fix IE 9 - tamanho da mensagem é capturado de acordo com a imagem pequena em cache do IE que não é necessariamente a imagem principal
            // Este caso alinha incorretamente a imagem na tela, trazendo-a mais para a direita
            src = $("#imgPrincipalProduto").attr("src");
            //tarefa 101177: parametro random retirado da url pra que pegue do cache
            $("#imgPrincipalProduto").attr({ src: src });
        }
        //Tarefa 99453: No chrome se a imagem já estivesse carregada, não chamaria a função LoadZoom.
        //$("#imgPrincipalProduto").load(LoadZoom);
        $("#imgPrincipalProduto").one("load", function () {
            LoadZoom();
        }).each(function () {
            if (this.complete)
                $(this).trigger("load");
        });
    }

});

function LoadZoom() {
    $('.jqzoom').jqzoom({ zoomType: 'standard', lens: true, preloadImages: false, alwaysOn: false, xOffset: 110 + '%', preloadText: 'Carregando...' });
}
