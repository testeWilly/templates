<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="Convidado.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Convidado" %><%@ Register Src="ascx/webanalytics.ascx" TagName="webanalytics" TagPrefix="cial" %><%@ Register Src="ascx/topocheckout.ascx" TagName="topocheckout" TagPrefix="cial" %><%@ Register Src="ascx/rodape.ascx" TagName="rodape" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>AnimaFest</title>
	<link rel="shortcut icon" href="imagens/favicon.ico">   
	<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE"> 
	<link href="css/qtip.css" rel="stylesheet" type="text/css">      
	<script type="text/javascript" src="js/jquery.js"></script>  
	<script type="text/javascript" src="js/jquery.colorbox.custom.js"></script> 
	<script type="text/javascript" src="js/jquery.colorbox-min.js"></script>  
	<script type="text/javascript" src="js/jquery.colorbox.js"></script>   
	<link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css"> 
	<ciac:seo id="seo" runat="server"></ciac:seo>
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
	<div class="compra_express">
		<h2 class="title_express">Compra Express</h2>
		<div class="desc_express">
			<p class="text_express">Mesmo que você ja tenha cadastro na loja, basta preencher os dados abaixo.</p>
			<p class="text_express">No final da compra você terá a opção de gravar estes dados para compras futuras.</p>
		</div>
	</div>	
		<div id="entrega_guest">
			<div class="ja_sou_cliente bt_hover">
				<ciac:link id="Identificacao" runat="server"></ciac:link> 
			</div>
		</div>
		<div class="vitrine_fundo">
			<div id="container_formularios_entrega">
				<ciac:convidado id="Convidado1" runat="server"></ciac:convidado>
			</div>
		</div>
	</div>  

	<div id="rodape">
		<cial:rodape id="Rodape2" runat="server"></cial:rodape>
	</div>

	<cial:webanalytics id="WebAnalytics" runat="server"></cial:webanalytics> 
    <script src="js/geral.js" type="text/javascript"></script>
	<script src="js/loginGuest.js" type="text/javascript"></script>
	<script src="js/qtipValidation.js" type="text/javascript"></script>
	<script src="https://www9.ciashop.com.br/buscacep/bundles/cep"></script>
</form>
</body>
</html>