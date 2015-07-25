<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopoListaPresente.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.TopoListaPresente" %>
<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %>

<div class="cima">
    <div class="logo">
        <ciaC:link id="PaginaInicial" runat="server" />
    </div>
    <div class="links">
        <ciaC:link id="LinkListaPresentes" runat="server" />
        <ciaC:link id="LinkMeuCadastro" runat="server" /><ciaC:link id="LinkMeusPedidos" runat="server" />
        <div class="carrinho_topo">
            <ciaC:link id="LinkCarrinhoCompras" runat="server" />
        </div>
    </div>
</div>
<div id="saudacao">
    <ciaC:labelvisitante id="LabelVisitante1" runat="server" />
</div>
<div>
    <ciaC:ListaPresentesTopo ID="ListaPresentesTopo1" runat="server" />
</div>