<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmado.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="CiaShop.Loja.Assets.Templates._1.Confirmado" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="ciaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/topoCheckout.ascx" TagName="topoCheckout" TagPrefix="cial" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="webanalytics" TagPrefix="ciac" %><%@ Register Src="ascx/voltaraotopo.ascx" TagName="voltaraotopo" TagPrefix="ciac" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <title>AnimaFest</title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script src="js/jquery.js" type="text/javascript"></script>
    <ciac:seo id="seo" runat="server"></ciac:seo>
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
      <ciac:widget id="Pixel_conversao_Facebook" runat="server"></ciac:widget>
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="container">
  <div id="containertopo">
     <cial:topo id="Topo1" runat="server"></cial:topo>
  </div>

  <div id="containerconteudo">
       <div class="banner">
         <ciac:banner id="Fullzao_topo" runat="server"></ciac:banner>
       </div>
      <div id="conteudo">
        <div class="tit_box"><h2>Pedido Confirmado</h2></div>
              <div class="box">              
                <div style="clear:both;text-align:center;"><ciac:widget id="EbitBannerPedido1" runat="server"></ciac:widget></div>
                    <div class="info_pedido">
                        <div class="info_pedido_conteudo">
                            <ciac:pedidodados id="PedidoDados1" runat="server"></ciac:pedidodados>
                            <ciac:pedidopagamento id="PedidoPagamento1" runat="server"></ciac:pedidopagamento>
                        </div>
                    </div>
                    <ciac:alterarsenha id="AlterarSenha" runat="server"></ciac:alterarsenha> 
                    <ciac:pedidoitens id="PedidoItens1" runat="server"></ciac:pedidoitens>
                    
                    <ciac:pedidoentrega id="PedidoEntrega1" runat="server"></ciac:pedidoentrega>
                    <ciac:pedidocontato id="PedidoContato1" runat="server"></ciac:pedidocontato>
                    <div class="bt_voltar_loja bt_hover">
                        <ciac:link id="Voltar_Principal" runat="server"></ciac:link>
                    </div>
              </div>
      </div>
  </div>
    <ciac:voltaraotopo id="Voltar" runat="server"></ciac:voltaraotopo>
<div id="rodape">
    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
</div>
</div>
<script src="js/geral.js" type="text/javascript"></script>
<ciac:webanalytics id="WebAnalytics" runat="server"></ciac:webanalytics>
</form>
</body>
</html>