<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="FaleConosco.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.FaleConosco" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="webanalytics" TagPrefix="ciac" %><%@ Register Src="ascx/colunaesquerda.ascx" TagName="colunaesquerda" TagPrefix="cial" %><%@ Register Src="ascx/menulateral.ascx" TagName="menulateral" TagPrefix="cial" %><%@ Register Src="ascx/webanalytics.ascx" TagName="webanalytics" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AnimaFest</title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script type="text/javascript" src="js/jquery.js"></script>
    <ciac:seo id="seo" runat="server"></ciac:seo>
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
</head>

<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="container">
        <div id="container_topo">
            <cial:topo id="Topo1" runat="server"></cial:topo>
        </div>
         <div id="containerconteudo">
       <div class="banner">
         <ciac:banner id="Fullzao_topo" runat="server"></ciac:banner>
       </div>           
           <div class="tit_box"><h2>Fale Conosco</h2></div>
                <div id="conteudo">
                        <div class="box">                                             
                            <ciac:faleconosco id="FaleConosco1" runat="server"></ciac:faleconosco>
                        </div>
                </div>
        </div>
    <div id="rodape">
        <cial:rodape id="Rodape1" runat="server"></cial:rodape>
    </div>

</div>
<script src="js/geral.js" type="text/javascript"></script>
<cial:webanalytics id="WebAnalytics" runat="server"></cial:webanalytics>
</form>
</body>
</html>