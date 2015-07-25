<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaPresentesEditarCadastro.aspx.cs" ValidateRequest="false" Inherits="CiaShop.Loja.Assets.Templates._1.ListaPresentesEditarCadastro" %><%@ Register Src="ascx/topo.ascx" TagName="topo" TagPrefix="cial" %><%@ Register Src="ascx/rodape.ascx" TagName="rodape" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <title>Ciashop Framework</title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.colorbox.js"></script>
    <link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css">
    <link rel="Stylesheet" href="css/GeralListaPresentes.css">
    <link rel="Stylesheet" href="css/fineuploader.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://code.jquery.com/ui/1.10.0/themes/humanity/jquery-ui.css">
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <link rel="stylesheet" media="all" type="text/css" href="css/timePicker.css">
    <script type="text/javascript" src="js/jquery.timePicker.js"></script>
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

  <div id="containerconteudo" class="conteudo_fixo">
      <div id="conteudo">    
       	 <div class="tit_lista_presente">
        	<h2>Editar Evento</h2>
    	  </div>
          <ciac:listapresentesinfo id="ListaPresentesInformacoes" runat="server"></ciac:listapresentesinfo>          
      </div>
  </div>
  <ciac:listapresentescadastro id="ListaPresentesCadastro1" runat="server"></ciac:listapresentescadastro>
</div>


<div id="rodape">
    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
</div>
<script src="https://www9.ciashop.com.br/buscacep/bundles/cep"></script>
<script>
	$(function(){
  		$('#txtDataEvento').datepicker();
  		$("#txtHoraEvento").timePicker();
  	})  
</script>
</form>
</body>
</html>