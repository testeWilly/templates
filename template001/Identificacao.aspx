<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="Identificacao.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Identificacao" Culture="auto" UICulture="auto" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/topoCheckout.ascx" TagName="topoCheckout" TagPrefix="cial" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="webanalytics" TagPrefix="ciac" %><%@ Register Src="ascx/topo.ascx" TagName="topo" TagPrefix="cial" %><%@ Register Src="ascx/rodape.ascx" TagName="rodape" TagPrefix="cial" %><%@ Register Src="ascx/rodapefluxo.ascx" TagName="rodapefluxo" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
	<title>AnimaFest</title>
	<link rel="shortcut icon" href="imagens/favicon.ico">
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/geral.js" type="text/javascript"></script>
	<ciac:seo id="seo" runat="server"></ciac:seo>
	<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="container">
		<div id="containertopo">
			<div class="topo">
          <div class="topo_meio">
              <div class="passos"><img src="imagens/passo_identificacao.png" alt="Identificação"></div>
          </div>
          <cial:topocheckout id="Topo_Check" runat="server"></cial:topocheckout>
      	</div>
		</div>
		<div id="containerconteudo">
       <div class="banner">
         <ciac:banner id="Fullzao_topo" runat="server"></ciac:banner>
       </div>          
			<div id="conteudo">
				<div class="checkout_left"><ciac:identificacaocomprador id="IdentificacaoComprador" runat="server"></ciac:identificacaocomprador></div>
                <div class="checkout_right"><ciac:carrinho id="Carrinho1" runat="server"></ciac:carrinho></div>
			</div>
		</div>
		<div id="rodape_fluxo">
			<cial:rodapefluxo id="Rodape2" runat="server"></cial:rodapefluxo>
		</div>
	</div>

	<ciac:webanalytics id="WebAnalytics" runat="server"></ciac:webanalytics>
</form>
</body>
</html>