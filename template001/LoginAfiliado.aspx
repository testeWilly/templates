<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAfiliado.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.LoginAfiliado" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/ajuda_afiliados.ascx" TagName="ajuda_afiliados" TagPrefix="cial" %><%@ Register Src="ascx/topo_afiliados.ascx" TagName="topo_afiliados" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <title>Loja do Vôlei</title>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.colorbox.js"></script>
    <link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css">
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="containertopo">

<!--In?cio do Topo e Menu-->
  <div class="topo">
    <cial:topo_afiliados id="Topo_Afiliados" runat="server"></cial:topo_afiliados>
  </div>
<!--Fim do Topo e Menu-->

</div>

<div id="containerconteudo">

    <div id="conteudo2">

       <ciac:logindeafiliado id="Login_Afiliado" runat="server"></ciac:logindeafiliado>

    </div>

</div>


<!-- Rodape -->
<div id="rodape">
    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
</div>
<!-- Fim Rodape -->

<script type="text/javascript">
	$(document).ready(function(){
                $(".abrir_ajuda").colorbox({width:"680px", height:"500px", inline:true, href:"#box_ajuda"});
			});
</script>
<cial:ajuda_afiliados id="Ajuda_afiliados" runat="server"></cial:ajuda_afiliados>
</form>
</body>
</html>