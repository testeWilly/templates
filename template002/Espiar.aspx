<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Espiar.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Espiar" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="webanalytics" TagPrefix="ciac" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Visualizar Produto</title>  
    <!--Tarefa 87111 !-->
    <link href="css/colorbox.css" rel="stylesheet" type="text/css" />
    <link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />
    <link href="css/espiar.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="favicon.ico"> 
</head>

<body>
<form id="frmEspiar" runat="server"> 
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!--Tarefa 87111 !-->
	<!--<asp:hiddenfield id="HiddenUrlBase" runat="server"></asp:hiddenfield>!-->
	<div id="container_espiar">
   		<div class="produto_mostrar">
        	<div class="produto_cima">
            	<div class="produto_esquerda">
                	<ciac:imagensproduto id="ImagensProduto1" runat="server"></ciac:imagensproduto>
                </div><!--fim produto_esquerda-->
                <div class="produto_direita">
                	<div id="bt_comprarmais_espiar">
                    </div><!--fim comprarmais_espiar-->
                 	<ciac:produtonome id="ProdutoNome1" runat="server"></ciac:produtonome>
                	<ciac:produtoavaliar id="ProdutoAvaliar1" runat="server"></ciac:produtoavaliar>
                    <ciac:precoproduto id="PrecoProduto1" runat="server"></ciac:precoproduto>
                    <ciac:variantesproduto id="Varianteproduto" runat="server"></ciac:variantesproduto>
                </div><!--fim produto_direita-->
            </div><!--fim produto_cima-->
            <div class="produto_baixo">
            	<ciac:atributosproduto id="AtributosProduto1" runat="server"></ciac:atributosproduto>
            	<ciac:produtodescricoes id="ProdutoDescricoes1" runat="server"></ciac:produtodescricoes>
            </div><!-- fim produto_baixo-->
		</div><!-- fim produto_mostrar-->
       	<div id="bt_ir_produto">
             <ciac:linkproduto id="LinkProduto1" runat="server"></ciac:linkproduto>
         </div><!-- fim bt_ir_produto-->
	</div><!--fim container_espiar-->

<script type="text/javascript">

    $(function () {
            
        //Tarefa 100705: Problemas com o colorbox abrir modal por cima do colorbox
        $(".abrir_parcelamento").click(function (e) {
            e.preventDefault();
            AbrirModalOverlay("#box_parcelamento");
        });

		var tabContainers = $('div.descricao_texto .descricao_texto_conteudo');

        $('div.descricao ul.tabDescricao a').click(function () {
            tabContainers.hide().filter(this.hash).show();

            $('div.descricao ul.tabDescricao a').removeClass('selecionado');
            $(this).addClass('selecionado');

            return false;
        }).filter(':first').click();



    });
</script>
<ciac:webanalytics id="WebAnalytics" runat="server"></ciac:webanalytics>
</form>
</body>
</html>