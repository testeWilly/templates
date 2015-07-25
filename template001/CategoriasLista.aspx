<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoriasLista.aspx.cs" 
    Inherits="CiaShop.Loja.Assets.Templates._1.CategoriasLista" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
                      <ciac:categoriaslista id="CategoriaLista" runat="server"></ciac:categoriaslista>
                      <span class="det-menu-lista">
                      	Detalhe Menu Lista Pronta
                      </span>		
                      <div class="chamada_um">
                        Escolha seu estilo e navegue em nossa lista de desejos. Boas Compras!
                      </div>                      
                    </div>
                    <div id="conteudo-listas">
                      <div class="chamada-principal">
                        <h2>
                          Lookbook
                          <img src="imagens/ico_coracao_look.png">
                        </h2>
                        <div class="chamada-principal-texto">
                          <p>Para a sua comodidade nesta seção você encontrará looks compostos de acordo com as últimas tendências de moda.</p>
                          <p>Cada peça é carinhosamente selecionada após pesquisas e compostas em looks completos para cada ocasião.</p>
                          <p class="chamada-confira">CONFIRA!</p>
                        </div>
                        <div class="navegue-look">
                          <img src="imagens/navegue_looks.png">
                        </div>
                      </div>
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