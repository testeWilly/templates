<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaPresentesPrincipal.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ListaPresentesPrincipal" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <title>Ciashop Framework</title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script type="text/javascript" src="js/jquery.js"></script>
    
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
      <div class="container-lista-presente">
        <h1 class="logo-lista-presente">
          Lista de Presente
        </h1>
        <div class="acoes-lista-presente">
            <ciac:link id="CriarLista" runat="server"></ciac:link>
            <ciac:link id="MinhasListas" runat="server"></ciac:link>
        </div>
        <div class="container-encontrar-lista">
            <ciac:listapresentebusca id="listaPresenteBusca1" runat="server"></ciac:listapresentebusca>

        </div>
      </div>

  </div>
</div>


<div id="rodape">
    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
</div>
</form>
</body>
</html>