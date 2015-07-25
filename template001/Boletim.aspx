<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Boletim.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Boletim" %>

<%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %>
<%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %>
<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="pageHead">
    <title>.:: Ciashop - Loja Demo V5.0 ::.</title>
</head>
<body style="margin: 0px 0px 0px 0px;" id="body_page">
    <form id="form2" runat="server">
        
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
        </asp:ScriptManager>
    
        <div id="geral">
            <!--Início do topo (topo) -->
            <div id="topo">
                <ciaL:Topo ID="Topo1" runat="server" />
            </div>
            <!--Fim do topo (topo) -->
            
            <!--Início Coluna Esquerda-->
            <div id="coluna_esquerda">
                <!--Início da caixa de Categorias (caixa_categorias) -->
                <CiaC:Menu ID="MenuVertical" runat="server" />
                <!--Fim da caixa de Categorias (caixa_categorias) -->
            </div>
            <!--Fim Coluna Esquerda-->
            
            <!--Início Conteudo-->
            <div id="conteudo">
                <CiaC:BoletimNoticias ID="BoletimNoticias1" runat="server" Exibicao="pagina" />
            </div>
            <!--Fim Conteudo-->
        </div>
        <!--Início do rodapé -->
        <div id="rodape">
            <ciaL:Rodape ID="Rodape1" runat="server" />
        </div>
        <!--Fim do rodapé -->
    </form>
</body>
</html>