<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rodape.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Rodape" %>

<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %>
<%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="pageHead">
    <title>.:: Ciashop - Loja Demo V5.0 ::.</title>
</head>
<body style="margin: 0px 0px 0px 0px;" id="body_page">
    <form id="form2" runat="server">
        
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
        </asp:ScriptManager>
    
        <div id="geral">
            <div id="rodape">
                <ciaL:Rodape ID="Rodape1" runat="server" />
            </div>
            <!--Fim do rodapé -->
        </div>
    </form>
</body>
</html>
