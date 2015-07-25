<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfiliadoRelatorioClientes.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.AfiliadoRelatorioClientes" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/topo_afiliados_logado.ascx" TagName="topo_afiliados_logado" TagPrefix="cial" %><%@ Register Src="ascx/ajuda_afiliados.ascx" TagName="ajuda_afiliados" TagPrefix="cial" %><%@ Register Src="ascx/menu_afiliados.ascx" TagName="menu_afiliados" TagPrefix="cial" %><%@ Register Src="ascx/rodape_afiliado_logado.ascx" TagName="rodape_afiliado_logado" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script src="js/jquery.js" type="text/javascript" language="javascript"></script>
    <script src="js/geral.js" type="text/javascript" language="javascript"></script>
    <link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css">
    <script type="text/javascript" src="js/jquery.colorbox.js"></script>
    <link type="text/css" rel="stylesheet" href="css/TemplateSettings.css.razor">
</head>
<body class="main">
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<script type="text/javascript">
   $(document).ready(function() {
    $("td#mostra span.oculta").hide();
           $(".exibe").toggle(
                   function() {
                           var cliente_id = "."+$(this).attr("id");
                           $(this).children("img").attr("src","imagens/oculta.png"); 
                           $(cliente_id).show(); 
                   },
                   function() {
                           var cliente_id = "."+$(this).attr("id");
                           $(this).children("img").attr("src","imagens/exibe.png"); 
                           $(cliente_id).hide(); 
                   }
           );
   });

  </script>  
	    
	<div id="containertopo">

<!--In?cio do Topo e Menu-->

    <cial:topo_afiliados_logado id="Topo_Afiliados" runat="server"></cial:topo_afiliados_logado>

  <cial:menu_afiliados id="Menu_Afiliados" runat="server"></cial:menu_afiliados>
<!--Fim do Topo e Menu-->

</div>

<div class="conteudo_fixo main-container">
    <div id="conteudo2">
        <ciac:afiliadorelatorioclientes id="AfiliadoRelatorioCli" runat="server"></ciac:afiliadorelatorioclientes>
    </div>
</div>
<!-- Rodape -->

    <cial:rodape_afiliado_logado id="Rodape1" runat="server"></cial:rodape_afiliado_logado>

<!-- Fim Rodape -->
<script type="text/javascript">
$(function(){
	$(".afiliado-cliente").click(function(){
		var arrow = $(this).find(".afiliado-pedido-arrow img");
		$(this).next(".afiliado-cliente-pedidos").toggle(function(){
			if($(this).css("display")=='none'){
				arrow.attr("src","imagens/afiliado-arrow-close.png");	
			}else{
				arrow.attr("src","imagens/afiliado-arrow-open.png");	
			}
		});
	});

	$(".afiliado-cliente-pedido").click(function(){
		var arrow = $(this).find(".afiliado-pedido-arrow img");
		var divParent = $(this).parents(".afiliado-cliente-pedidos-tab");
		$(this).next(".afiliado-cliente-pedido-produtos").toggle(function(){
			if($(this).css("display")=='none'){
				arrow.attr("src","imagens/afiliado-arrow-close.png");	
				divParent.removeClass("afiliado-cliente-pedido-selecionado");
			}else{
				arrow.attr("src","imagens/afiliado-arrow-open.png");
				divParent.addClass("afiliado-cliente-pedido-selecionado");	
			}
		});
	});
});
</script>    
<script type="text/javascript">
    $(document).ready(function () {
        $(".abrir_ajuda").colorbox({ width: "680px", height: "500px", inline: true, href: "#box_ajuda" });
    });
</script>

<cial:ajuda_afiliados id="Ajuda_afiliados" runat="server"></cial:ajuda_afiliados>
</form>
</body>
</html>