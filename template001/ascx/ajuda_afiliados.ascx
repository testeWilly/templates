<%@ Control Language="C#"  AutoEventWireup="true" CodeBehind="Topo.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.Topo" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><div class="container_ajuda" style="display:none">
	<div id="box_ajuda">
		<div class="respiro">
			<h2 class="titulo_pedido afiliados_ajuda_titulo">
			    Ajuda programa de afiliados
			</h2>
			<p class="ajuda_txt">
				Veja abaixo as perguntas mais frequente. 
			</p>
			<ciac:ajudaafiliados id="AjudaAfiliados" runat="server"></ciac:ajudaafiliados>
		</div>
	</div>
</div>