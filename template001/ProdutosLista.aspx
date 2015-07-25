<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProdutosLista.aspx.cs"
 Inherits="CiaShop.Loja.Assets.Templates._1.ProdutosLista" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head id="Head1" runat="server">
	<title>AnimaFest</title>
	<link rel="shortcut icon" href="imagens/favicon.ico">
	<script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/geral.js" type="text/javascript"></script>
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
	
	<div id="geral">
            <div id="topo">
                <cial:topo id="Topo1" runat="server"></cial:topo>
            </div>
            <div id="conteudo">            
                <div id="container-listas">                   
                    <div id="menu-listas">
                      <h2>
                        <span class="tit_lista">Looks</span>
                        <span class="slogan-lista"> da semana</span>
                        <span class="seta-lista">seta</span>
                      </h2>                      
                      <ciac:categoriaslista id="CategoriaLista" runat="server"></ciac:categoriaslista>
                      <span class="det-menu-lista">
                        Detalhe Menu Lista Pronta
                      </span>                       
                    </div>
                    <div id="conteudo-listas">
                        <ciac:produtoslista id="produtosLista" runat="server"></ciac:produtoslista> 
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