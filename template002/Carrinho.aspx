<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="Carrinho.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Carrinho" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="webanalytics" TagPrefix="ciac" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
	<title>AnimaFest</title>
	<link rel="shortcut icon" href="imagens/favicon.ico">
	<script src="js/jquery.js" type="text/javascript"></script>
	<ciac:seo id="seo" runat="server"></ciac:seo>
	<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
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
            <div class="box">
            	<ciac:carrinho id="Carrinho1" runat="server"></ciac:carrinho>
            </div>
          </div>
		</div>
		<div id="rodape">
			<cial:rodape id="Rodape1" runat="server"></cial:rodape>
		</div>
	</div>
	<script src="js/geral.js" type="text/javascript"></script>
	<ciac:webanalytics id="WebAnalytics" runat="server"></ciac:webanalytics>
</form>
</body>
</html>