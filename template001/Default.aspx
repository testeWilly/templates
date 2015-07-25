<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Default.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="CiaShop.Loja.Assets.Templates._1.Default" %><%@ OutputCache Duration="1" VaryByParam="none" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/ColunaEsquerda.ascx" TagName="ColunaEsquerda" TagPrefix="ciaL" %><%@ Register Src="ascx/ColunaDireita.ascx" TagName="ColunaDireita" TagPrefix="ciaL" %><%@ Register Src="ascx/Clouds_Navegacao.ascx" TagName="Clouds_Navegacao" TagPrefix="cial" %><%@ Register Src="ascx/clouds_navegacao.ascx" TagName="clouds_navegacao" TagPrefix="ciac" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="webanalytics" TagPrefix="ciac" %><%@ Register Src="ascx/newslatter.ascx" TagName="newslatter" TagPrefix="cial" %><%@ Register Src="ascx/voltaraotopo.ascx" TagName="voltaraotopo" TagPrefix="ciac" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
	<title>AnimaFest</title>
	<link rel="shortcut icon" href="imagens/favicon.ico">
	<script src="js/jquery.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css/colorbox.css">
	<script src="js/jquery.colorbox-min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.colorbox.custom.js"></script>
	<link rel="stylesheet" href="css/cia_bannerjquery.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/cia_bannerjquery_custom.css" type="text/css" media="screen">
	<script type="text/javascript" src="js/cia_bannerjquery.js"></script>
	<script type="text/javascript" src="js/slider.js"></script>	
	<ciac:seo id="seo" runat="server"></ciac:seo>
	<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<ciac:Sorteio ID="componenteparasorteio" runat="server" />
	<div id="container">
		<div id="containertopo">
          <cial:topo id="Topo1" runat="server"></cial:topo>
		</div>



		<div id="containerconteudo">
			<div class="banner">
				<ciac:banner id="Fullzao_topo" runat="server"></ciac:banner>
			</div>
			
			<div id="cia_jqueryslider" class="banner">
				<div class="slider-wrapper fullzao_expansivel">
					<div id="cia_slider" class="nivoSlider">
						<ciac:banner id="jquery_banner" runat="server"></ciac:banner>
					</div>
				</div>
			</div>
          
            <div id="conteudo">       
				<div class="box">
					<ciac:menu id="menu_principal" runat="server"></ciac:menu>
				</div>
				<div class="vitrine_jquery">
					<ciac:listagemsimples id="Vitrine_Jquery" runat="server"></ciac:listagemsimples>
				</div>
                <!--<div class="vitrine_jquery">
					<componente name="ciac:listagemsimples" id="destaques_da_semana" />
				</div>-->
                <!--<div class="vitrine_jquery">
					<componente name="ciac:listagemsimples" id="vitrine_mais_vendidos" />
				</div>-->
                <!--<div class="vitrine_jquery">
					<componente name="ciac:listagemsimples" id="veja_tabem" />
				</div>-->
			</div>
			<div class="banner">
				<ciac:banner id="rodape_banner" runat="server"></ciac:banner>
			</div>
		</div>
		<ciac:voltaraotopo id="Voltar" runat="server"></ciac:voltaraotopo>
		<div id="rodape">
			<cial:rodape id="Rodape1" runat="server"></cial:rodape>
		</div>

	</div>

	<script src="js/geral.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			$("#scroller").bxSlider({
				auto: true,
				displaySlideQty: 4,
				moveSlideQty: 4,
				pause: 10000
			});
   		});

		$(function(){
			$('#cia_slider').nivoSlider();
		});
		
	</script>  
	<ciac:webanalytics id="WebAnalytics" runat="server"></ciac:webanalytics>
</form>
</body>
</html>