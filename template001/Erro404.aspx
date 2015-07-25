<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Erro404.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Erro404" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/topo.ascx" TagName="topo" TagPrefix="cial" %><%@ Register Src="ascx/menu_topo.ascx" TagName="menu_topo" TagPrefix="cial" %><%@ Register Src="ascx/rodape.ascx" TagName="rodape" TagPrefix="cial" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="WebAnalytics" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-BR" lang="pt-BR">
<head runat="server">
    <title>AnimaFest</title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/geral.js" type="text/javascript"></script>
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
</head>

<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="container">
	<div id="containertopo">
  <div class="topo">
    <cial:topo id="Topo1" runat="server"></cial:topo>
  </div> 
</div>

<div id="containerconteudo">
       <div class="banner">
         <ciac:banner id="Fullzao_topo" runat="server"></ciac:banner>
       </div>  
         <div class="erro_404">
                  <div class="erro_404_conteudo">
                      <h2>
                          Desculpe,<br>Não foi possível acessar esta página no momento.
                      </h2>
                      <div class="erro_404_geral">
                          <h3>O que pode ter acontecido?</h3>
                          <ul>
                              <li>- Verifique se o endereço foi digitado corretamente.</li>
                              <li>- O conteúdo pode ter sido removido ou não estar mais disponível.</li>
                              <li>- O servidor pode estar fora do ar no momento.</li>
                          </ul>
                          <ciac:link id="Voltar_inicial_erro" runat="server"></ciac:link>
                      </div>
                  </div>
              </div>
</div>

<div id="rodape">
    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
</div>
</div>
</form>
</body>
</html>