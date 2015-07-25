<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="CiaShop.Loja.Assets.Templates._1.Lista" %><%@ OutputCache Duration="1" VaryByParam="departamento_id;template_id;pag" Location="Server" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/ColunaEsquerda.ascx" TagName="ColunaEsquerda" TagPrefix="ciaL" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Clouds_Navegacao.ascx" TagName="Clouds_Navegacao" TagPrefix="cial" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="webanalytics" TagPrefix="ciac" %><%@ Register Src="ascx/newslatter.ascx" TagName="newslatter" TagPrefix="cial" %><%@ Register Src="ascx/voltaraotopo.ascx" TagName="voltaraotopo" TagPrefix="ciac" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
  <title>AnimaFest</title>
  <link rel="shortcut icon" href="imagens/favicon.ico">
  <script src="js/jquery.js" type="text/javascript"></script>
  <script src="js/jquery.colorbox-min.js" type="text/javascript"></script>
  <script type="text/javascript" src="js/jquery.jqzoom-core-pack.js"></script>      
  <link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css">  
  <script type="text/javascript" src="js/jquery.colorbox.custom.js"></script>
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
      <div id="coluna_esquerda">
        <cial:colunaesquerda id="ColunaEsquerda_default" runat="server"></cial:colunaesquerda>
        <div id="filtros_busca">
          <div class="filtros_busca_conteudo">
            <h3>Filtros</h3>
            <ciac:filtrodepartamentos id="FiltroDepartamentos" runat="server"></ciac:filtrodepartamentos>            
            <ciac:filtrogrupos id="FiltroGrupos" runat="server"></ciac:filtrogrupos>
            <ciac:filtrofaixapreco id="FiltroFaixaPreco" runat="server"></ciac:filtrofaixapreco>
          </div>
        </div>
      </div>
      <div id="conteudo">
       <div class="banner">
         <ciac:banner id="banner_dept" runat="server"></ciac:banner>
       </div>              
        <ciac:filtrosutilizados id="FiltrosUtilizados" runat="server"></ciac:filtrosutilizados>                         
        <div class="box">
          <ciac:listagemcompleta id="CaixaListagem_Conteudo" runat="server"></ciac:listagemcompleta>
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