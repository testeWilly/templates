<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ColunaEsquerda.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.ColunaEsquerda" %><div class="news_direita">
<ciac:boletimnoticias id="newslatter" runat="server"></ciac:boletimnoticias>
</div>

<script type="text/javascript">
$(function(){

    jQuery.fn.extend({limpa_input:function(valorDefault){
        if($(this).attr('value')==valorDefault){
            $(this).attr("value","");
        };
    }});

    jQuery.fn.extend({restaura_input:function(valorDefault){
        if($(this).attr('value')==""){
            $(this).attr('value',valorDefault);
        };
    }});


     $(".news_direita .nome input").attr('value', 'Coloque seu nome...');
     $(".news_direita .nome input").focus(function(){$(this).limpa_input("Coloque seu nome...");});
     $(".news_direita .nome input").blur(function(){$(this).restaura_input("Coloque seu nome...");});

     $(".news_direita .email input").attr('value', 'Coloque seu email...');
     $(".news_direita .email input").focus(function(){$(this).limpa_input("Coloque seu email...");});
     $(".news_direita .email input").blur(function(){$(this).restaura_input("Coloque seu email...");});
});
</script>