<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Default.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="CiaShop.Loja.Assets.Templates._1.Default" %><%@ OutputCache Duration="1" VaryByParam="none" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/ColunaEsquerda.ascx" TagName="ColunaEsquerda" TagPrefix="ciaL" %><%@ Register Src="ascx/ColunaDireita.ascx" TagName="ColunaDireita" TagPrefix="ciaL" %><%@ Register Src="ascx/Clouds_Navegacao.ascx" TagName="Clouds_Navegacao" TagPrefix="cial" %><%@ Register Src="ascx/clouds_navegacao.ascx" TagName="clouds_navegacao" TagPrefix="ciac" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <title>Ciashop Framework</title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script src="js/jquery.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/colorbox.css">
    <script src="js/jquery.colorbox-min.js" type="text/javascript"></script>   
    <link href="css/jquery.jqzoom.css" rel="stylesheet" type="text/css">   
    <script type="text/javascript" src="js/jquery.jqzoom-core-pack.js"></script>
       <script type="text/javascript" src="js/jquery.colorbox.custom.js"></script>
    <link type="text/css" media="screen" rel="stylesheet" href="css/modalEspiar.css">
   <script type="text/javascript" src="js/jquery.colorbox.custom.js"></script>
    <link type="text/css" media="screen" rel="stylesheet" href="css/modalEspiar.css">
    
    
    <ciac:seo id="seo" runat="server"></ciac:seo>
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<ciac:Sorteio ID="componenteparasorteio" runat="server" />
	<div id="container">
  <div id="containertopo">
      <cial:topo id="Topo1" runat="server"></cial:topo>
  </div>

  <div class="banner banner_fulzao">
      <ciac:banner id="Fullzao_Topo" runat="server"></ciac:banner>
  </div>

  <div id="containerconteudo">


      <div id="coluna_esquerda">
          <div class="banner">
              <ciac:banner id="Esquerda_cima" runat="server"></ciac:banner>
          </div>
          <cial:colunaesquerda id="ColunaEsquerda_default" runat="server"></cial:colunaesquerda>
          <div class="banner">
              <ciac:banner id="Esquerda_baixo" runat="server"></ciac:banner>
          </div>
      </div>

      <div class="banner banner_full">
          <ciac:banner id="full_centro" runat="server"></ciac:banner>
      </div>

      <div id="coluna_direita">
          <div class="banner">
              <ciac:banner id="Direita" runat="server"></ciac:banner>
          </div>
      </div>

      <div id="conteudo">

          <div class="respiro_conteudo">

              <div class="banner">
                  <ciac:banner id="Centro_cima" runat="server"></ciac:banner>
              </div>

              <div class="box">
                  <ciac:listagemsimples id="Vitrine_default_destaques" runat="server"></ciac:listagemsimples>
              </div>

              <div class="banner">
                  <ciac:banner id="Centro_baixo" runat="server"></ciac:banner>
              </div>

          </div>

      </div>

      <div class="conteudo_full">
          <div class="banner bannerRodape">
              <ciac:banner id="Rodape_banner" runat="server"></ciac:banner>
          </div>
          <div class="respiro_conteudo_full">
              <cial:clouds_navegacao id="Clouds_Navegacao" runat="server"></cial:clouds_navegacao>
          </div>
      </div>


  </div>
</div>


<div id="rodape">
    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
</div>

<script src="js/ajusta_vitrine.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
$(window).resize(function(){
   ajusta_vitrine("#vitrine_principal");
});

$(document).ready(function(){
   ajusta_vitrine("#vitrine_principal");
});
});
</script>

</form>
</body>
</html>
