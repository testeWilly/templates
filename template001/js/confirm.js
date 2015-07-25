$(".trocasenha").live("click", function () {
    if ($("#boxsenha").hasClass("trocar_senha_box_oculto")) {
        $("#boxsenha").removeClass("trocar_senha_box_oculto");
        $("#boxsenha").addClass("box_trocar_senha_principal");
        //comentario 2
    } else {
        $("#boxsenha").removeClass("box_trocar_senha_principal");
        $("#boxsenha").addClass("trocar_senha_box_oculto");
    }
});

$(document).ready(function () {
    var found = $("#boxsenha").find(".salvo")
});