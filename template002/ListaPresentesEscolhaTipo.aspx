<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaPresentesEscolhaTipo.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ListaPresentesEscolhaTipo" %>

<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %>
<%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %>
<%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <title>.:: Ciashop - Loja Demo V5.0 ::.</title>
    </head>
    <body style="margin: 0px 0px 0px 0px;" id="body_page">
        <form id="form2" runat="server">
	        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	        <div id="container_bg">
                <div id="container">
                    <!--Inicio do topo (topo) -->
                    <div id="topo">
                        <cial:topo id="Topo1" runat="server"></cial:topo>
                    </div>
                    <!--Fim do topo (topo) -->
                    <!--Inicio Conteudo-->
                    <div id="conteudo">
                        <ciaC:ListaPresentesEscolhaTipo ID="ListaPresentesEscolhaTipo1" runat="server" />
                    </div>
                    <!--Fim Conteudo-->
                </div>
                <div id="rodape">
                    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
                </div>
                <!--Fim do Rodape-->
            </div>
        </form>
    </body>
</html>
