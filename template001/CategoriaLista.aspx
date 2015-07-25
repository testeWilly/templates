<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoriaLista.aspx.cs" 
    Inherits="CiaShop.Loja.Assets.Templates._1.CategoriaLista" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>AnimaFest</title>
	<link rel="shortcut icon" href="imagens/favicon.ico">
	<script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/geral.js" type="text/javascript"></script>
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                      <ciac:categoriaslista id="MenuLista" runat="server"></ciac:categoriaslista>
                      <span class="det-menu-lista">
                        Detalhe Menu Lista Pronta
                      </span>                        
                    </div>
                    <div id="conteudo-listas">
                      <div class="box">
                      	<ciac:categorialista id="CategoriaLista" runat="server"></ciac:categorialista>
                      </div>
                    </div>
                </div>                
            </div>
        </div>
    <div id="rodape">
        <cial:rodape id="Rodape1" runat="server"></cial:rodape>
    </div>  
<script type="text/javascript">
	$(function(){
  		$("#conteudo-listas").ajustaVitrine({resize:false,itenWidth:'230'});
  	});
</script>
</form>
</body>
</html>