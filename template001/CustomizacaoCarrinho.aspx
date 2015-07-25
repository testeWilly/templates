<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomizacaoCarrinho.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.CustomizacaoCarrinho" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script src="js/jquery.js" type="text/javascript"></script>      
      
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="personalizacao_carrinho">
        <ciac:produtonome id="produtoNomeCustomizacao" runat="server"></ciac:produtonome>
        <div class="personalizacao_carrinho_conteudo">
          <div class="personalizacao_carrinho_produto_info">
              <ciac:imagensproduto id="ImagensProduto" runat="server"></ciac:imagensproduto>
              <ciac:produtodescricoes id="produtoDescricaoCustomizarProdutoNoCarrinho" runat="server"></ciac:produtodescricoes>
          </div>
          <ciapkg:produtocustomizado id="customizarProdutoNoCarrinho" runat="server"></ciapkg:produtocustomizado>
        </div>  
    </div>
</form>
</body>
</html>