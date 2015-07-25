<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="Produto.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Produto" EnableEventValidation="false" UICulture="auto" Culture="auto" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/ColunaEsquerda.ascx" TagName="ColunaEsquerda" TagPrefix="ciaL" %><%@ Register Src="ascx/clouds_navegacao.ascx" TagName="clouds_navegacao" TagPrefix="cial" %><%@ Register Src="ascx/analytics.ascx" TagName="analytics" TagPrefix="ciac" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <title>Ciashop Framework</title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.colorbox.js"></script>
    <script type="text/javascript" src="js/jquery.jqzoom-core-pack.js"></script>
    <script type="text/javascript" src="js/jquery.jqzoom.custom.js"></script>
    <link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css"> 
    <link href="css/jquery.jqzoom.css" rel="stylesheet" type="text/css">   
    <link href="css/jquery.jqzoom.custom.css" rel="stylesheet" type="text/css"> 
    <link type="text/css" media="screen" rel="stylesheet" href="css/variantes.css">            
    
    
    <ciac:seo id="seo" runat="server"></ciac:seo>
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
              <ciac:banner id="Banner_esquerda_cima" runat="server"></ciac:banner>
          </div>
          <cial:colunaesquerda id="ColunaEsquerda_default" runat="server"></cial:colunaesquerda>
          <div class="banner">
              <ciac:banner id="Banner_esquerda_baixo" runat="server"></ciac:banner>
          </div>
      </div>

      <div id="conteudo">

          <div class="respiro_conteudo">
              <ciac:produtobarranavegacao id="ProdutoBarraNavegacao1" runat="server"></ciac:produtobarranavegacao>
              <div class="produto">
                <div class="produto_cima">
                  <div class="titulo_produto">

                  </div>
                  <div class="produto_esquerda">
                      <ciac:imagensproduto id="ImagensProduto1" runat="server"></ciac:imagensproduto>
                  </div>
                  <div class="produto_direita">
                      <ciac:produtonome id="ProdutoNome1" runat="server"></ciac:produtonome>
                      <ciac:selosproduto id="selosproduto" runat="server"></ciac:selosproduto>
                      <ciac:produtoavaliar id="ProdutoAvaliar1" runat="server"></ciac:produtoavaliar>
                      <ciac:precoproduto id="PrecoProduto1" runat="server"></ciac:precoproduto>
                      <ciac:variantesproduto id="Varianteproduto" runat="server"></ciac:variantesproduto>
                      <ciapkg:produtocustomizado id="ProdutoCustomizado" runat="server"></ciapkg:produtocustomizado>
                      <ciac:simularfreteproduto id="Simular_Frete" runat="server"></ciac:simularfreteproduto> 
                  </div>
                </div>
                <div class="produto_baixo">

                      <ciac:produtodescricoes id="ProdutoDescricoes1" runat="server"></ciac:produtodescricoes>
                      <ciac:comprejunto id="CompreJunto1" runat="server"></ciac:comprejunto>
                      <ciac:produtosrelacionados id="ProdutosRelacionados1" runat="server"></ciac:produtosrelacionados>


                      <div class="comentarios">
                            <ciac:produtocomentario id="ProdutoComentario1" runat="server"></ciac:produtocomentario>
                      </div>
                      <a href="#" name="ir_avaliar">&nbsp;</a>
                      <div class="avaliar">
                            <ciac:produtoavaliar id="ProdutoAvaliar2" runat="server"></ciac:produtoavaliar>
                      </div>

                      <ciac:indiqueproduto id="IndiqueProduto1" runat="server"></ciac:indiqueproduto>

                </div>
             </div>
          </div>

      </div>

  </div>
</div>


<div id="rodape">
    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
</div>

<script type="text/javascript">

    $(function () {
        var tabContainers = $('.descricao_texto .descricao_texto_conteudo');
        $('.descricao .produto_abas a').click(function () {
            tabContainers.hide().filter(this.hash).show();

            $('.descricao .produto_abas a').removeClass('selecionado');
            $(this).addClass('selecionado');

            return false;
        }).filter(':first').click();

        $('.abrir_parcelamento').live('click', function() {
            $.fn.colorbox({width:"480px", inline:true, href:"#box_parcelamento"});
            return false;
        });

    });
</script>
</form>
</body>
</html>
