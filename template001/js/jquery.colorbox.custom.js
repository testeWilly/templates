function AbrirModalOverlay(_local, _width, _height) {
    try {
        $(".overlay_Box").remove();
        $("body").append("<div class='overlay_Box' style='position:fixed; height: 100%; width:100%; background-color:#000; z-index:9999; top:0; left:0'></div>");
        $(".overlay_Box").css("opacity", "0.6").click(function () {
            $(".fecharModal").click();
        });
        if (_width && parseInt(_width))
            $("#modalEspiar").css("width", _width + "px");
        if (_height && parseInt(_height))
            $("#modalEspiar").height(_height);

        var _conteudo = $(_local).html();
        $("#modalEspiar").html(_conteudo);
        $("#modalEspiar").append('<a class="fecharModal" href="javascript:void(0)"></a>').css({
            marginLeft: -$("#modalEspiar").width() / 2,
            marginTop: -$("#modalEspiar").height() / 2,
            left: "50%",
            top: "45%"
        }).fadeIn(500);
    } catch (e) {
        $(".fecharModal").click();
    }
}


$(document).ready(function () {

    $(".fecharModal").live("click", function () {
        $("#modalEspiar").fadeOut(500, function () {
            $(this).html("");
        });
        $(".overlay_Box").fadeOut(function () {
            $(this).remove();
        });
    });

    $("body").append('<div id="modalEspiar"></div>');
});
