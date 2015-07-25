<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Topo.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Topo" %>

<%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="uc1" %>
<%@ OutputCache Duration="1" VaryByParam="none" %> 
<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="Cia" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="pageHead">
    <title>.:: Ciashop - Loja Demo V5.0 ::.</title>
</head>
<body style="margin: 0px 0px 0px 0px;" id="body_page">
    <form id="formTopo" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
        </asp:ScriptManager>
    
        <div id="geral">
            <!--Início do topo (topo) -->
            <div id="topo">
                <uc1:Topo ID="Topo1" runat="server" />
            </div>
            <!--Fim do topo (topo) -->
        </div>
    </form>
</body>
</html>
