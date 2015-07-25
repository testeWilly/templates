<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hotsite.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="CiaShop.Loja.Assets.Templates._1.Hotsite" %>

<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %>

<%@ Register Src= "ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %>
<%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>.:: Ciashop - Loja Demo V5.0 ::.</title>
</head>
<body style="margin: 0px 0px 0px 0px;" id="body_page">
    <form id="form2" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
        </asp:ScriptManager>
        
        <CiaC:CaixaAguardeLoja ID="CaixaAguardeLoja" runat="server" />
        
        <div id="geral">
            <!--In�cio do topo (topo) -->
            <div id="topo">
                <ciaL:Topo ID="Topo1" runat="server" />
            </div>
            <!--Fim do topo (topo) -->
            
            <!--In�cio Coluna Esquerda-->
            <div id="coluna_esquerda">
               <ciaC:Menu ID="MenuVertical" runat="server" TipoMenu="Vertical" />
            </div>
            <!--Fim Coluna Esquerda-->
            
            <!--In�cio Conteudo-->
            <div id="conteudo">
                <CiaC:VisualizarHotsite ID="VisualizarHotsite1" runat="server" />
            </div>
            <!--Fim Conteudo-->
        </div>
        
        <!--In�cio do rodap� -->
        <div id="rodape">
            <ciaL:Rodape ID="Rodape1" runat="server" />
        </div>
        <!--Fim do rodap� -->
    </form>
</body>
</html>