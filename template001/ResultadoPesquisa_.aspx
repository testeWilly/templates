<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="ResultadoPesquisa.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ResultadoPesquisa" Title="Resultado da pesquisa" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>
<%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %>
<%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %>
<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %>
<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %>
<%@ Register Src="ascx/Menupe.ascx" TagName="Menupe" TagPrefix="cial" %>
<%@ Register Src="ascx/Menu_topo.ascx" TagName="Menu_topo" TagPrefix="cial" %>
<%@ Register Src="ascx/clouds_navegacao.ascx" TagName="clouds_navegacao" TagPrefix="cial" %>
<%@ Register Src="ascx/colunaesquerda.ascx" TagName="colunaesquerda" TagPrefix="cial" %>
<%@ Register Src="ascx/analytics.ascx" TagName="analytics" TagPrefix="ciac" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head runat="server">
    <title>Gall</title>
    <link rel="shortcut icon" href="favicon.ico">
     <script src="js/jquery.js" type="text/javascript"></script><script type="text/javascript" src="js/jquery.colorbox.js"></script><link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css"><script type="text/javascript" src="js/cloud-zoom.1.0.2.min.js"></script><link href="css/cloud-zoom.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/colorbox.css">  
    <link href="css/cloud-zoom.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.colorbox.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/cloud-zoom.1.0.2.min.js"></script> 
</head>

<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div class="container">
	<div id="containertopo">
	<cial:topo id="Topo1" runat="server"></cial:topo>
     </div>

     <div id="containermenu">
	<cial:menu_topo id="MenuTopo" runat="server"></cial:menu_topo>
     </div>

    <div class="banner banner_full">
        <ciac:banner id="Banner_full" runat="server"></ciac:banner>
    </div>

     <div id="containerconteudo">

        <div id="coluna_esquerda">
            <div class="banner">
                    <ciac:banner id="Banner_esquerda_cima" runat="server"></ciac:banner>
            </div>
            <ciac:pesquisadepartamentos id="ciacPesquisaDepartamentos" runat="server"></ciac:pesquisadepartamentos>
            <div id="filtros_busca">
                <div class="filtros_busca_conteudo">
                    <ciac:pesquisafaixapreco id="ciacPesquisaFaixaPreco" runat="server"></ciac:pesquisafaixapreco>
                </div>
            </div>
            <div class="banner">
                    <ciac:banner id="Banner_esquerda_baixo" runat="server"></ciac:banner>
            </div>
        </div>

        <div id="coluna_direita">
            <div class="banner">
                    <ciac:banner id="Banner_direita_cima" runat="server"></ciac:banner>
            </div>
            <div class="banner">
                <ciac:banner id="Banner_direita_baixo" runat="server"></ciac:banner>
            </div>
        </div>

        <div id="conteudo">

          <div class="respiro_conteudo">
              <ciac:pesquisaparametrosutilizados id="ciacParamUtilizados" runat="server"></ciac:pesquisaparametrosutilizados>
              <ciac:listagemcompleta id="CaixaListagem_Conteudo" runat="server"></ciac:listagemcompleta>
          </div>

     	</div>

        <div class="banner banner_rodape">
            <ciac:banner id="Banner_rodape" runat="server"></ciac:banner>
        </div>

         <div class="respiro_conteudo" id="tagclouds_navegacao">
             <cial:clouds_navegacao id="Clouds_Navegacao" runat="server"></cial:clouds_navegacao>
         </div>

    </div>

    <div id="containerrodape">
        <cial:rodape id="Rodape1" runat="server"></cial:rodape>
    </div>

</div>

<script type="text/javascript">
function ajusta_vitrine(vitrine){
     $(vitrine+" li.first").removeClass("first");
     var largura = $(vitrine).width();
     var numero = parseInt(largura/200);
     var porcentagem = (100/numero).toFixed(1)-0.1;

     $(vitrine+' li').css("width",porcentagem+"%");

     $(vitrine+' li').addClass(function(i) {
            return i % numero < 1 ? 'first' : '';
   });
};


$(window).resize(function(){
   ajusta_vitrine(".vitrine_geral");
});

$(document).ready(function(){
   ajusta_vitrine(".vitrine_geral");
});
</script>

<ciac:webanalytics id="webanalytics" runat="server"></ciac:webanalytics>
</form>
</body>

</html>