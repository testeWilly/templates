<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EspiarProduto.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="CiaShop.Loja.Assets.Templates._1.EspiarProduto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>.:: Ciashop - Loja Demo V5.0 ::.</title>
</head>
<body style="margin: 0px 0px 0px 0px; width:620px; height:480px;" id="body_page">
    <form id="form2" runat="server">
        <asp:ScriptManager ID="smEspiarProduto" runat="server" EnablePartialRendering="true" EnableViewState="true">
        </asp:ScriptManager>
        <ciaC:CaixaAguardeLoja ID="caixaAguardeLoja1" runat="server" />
        <div style="position:fixed; right: 2px;">
            <asp:ImageButton ID="imgFechar" runat="server" ImageUrl="~/Assets/Templates/1/imagens/fechar_popup.gif" OnClick="imgFechar_Click" />
        </div>
        <div id="geral_espiar">
            <div id="conteudo_espiar">
                <div id="product">
					<div id="product_titulo" class="product_class_geral">
					                <asp:UpdatePanel ID="upListagemTit" runat="server" RenderMode="Inline" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:HiddenField ID="hidCodVariante" runat="server" />
                                            <div class="tit_dept">
                                                <h1><asp:Label ID="lblTitulo" runat="server" /></h1>
                                            </div>
                                            <asp:UpdateProgress ID="upPrgListagemTit" AssociatedUpdatePanelID="upListagemTit" runat="server">
                                                <ProgressTemplate>
                                                    <asp:Image ID="imgLoaderTit" runat="server" ImageUrl="~/Assets/Templates/1/imagens/loader.gif" /><br />
                                                    <asp:Label ID="lblLoaderTit" runat="server" Text="Aguarde..."></asp:Label>
                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="varProdutos" EventName="Change" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                    </div>
                    
                    <div id="product_informacoes" class="product_class_geral">
        	            <table>
        	                <tr>
        	                    <td>
        	                        <asp:UpdatePanel ID="upListagem" runat="server" RenderMode="Inline" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <CiaC:ImagensProduto ID="imgProd" runat="server" TamanhoImagem="Grandes" ExibeSuperZoom="false" />
                                            <asp:UpdateProgress ID="upProgress" AssociatedUpdatePanelID="upListagem" runat="server">
                                                <ProgressTemplate>
                                                    <asp:Image ID="imgLoader" runat="server" ImageUrl="~/Assets/Templates/1/imagens/loader.gif" /><br />
                                                    <asp:Label ID="lblLoader" runat="server" Text="Aguarde..."></asp:Label>
                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="varProdutos" EventName="Change" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <div id="prod_descr_geral">
                                        <asp:UpdatePanel ID="upPrecoProd" runat="server" RenderMode="Inline" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <CiaC:PrecoProduto ID="prodPreco" runat="server" NomeArquivo="produto_preco.html" />
                                                <br />
                                                <div id="product_comprar">
                                                    <asp:Image ID="imgFreteGratis" runat="server" ImageUrl="~/Assets/Templates/1/imagens/fretegratis.gif" />
                                                    <br />
                                                </div>                                    
                                                <asp:UpdateProgress ID="upPrgPrecoProd" AssociatedUpdatePanelID="upPrecoProd" runat="server">
                                                    <ProgressTemplate>
                                                        <asp:Image ID="imgLoaderPreco" runat="server" ImageUrl="~/Assets/Templates/1/imagens/loader.gif" /><br />
                                                        <asp:Label ID="lblLoaderPreco" runat="server" Text="Aguarde..."></asp:Label>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="varProdutos" EventName="Change" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <br style="clear: left;"/>
                                        <asp:UpdatePanel ID="upVariantes" runat="server" RenderMode="Inline" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <CiaC:VariantesProduto ID="varProdutos" runat="server" OnChange="varProdutos_Change" EnableViewState="false" />
                                                <asp:UpdateProgress ID="upPrgVariantes" AssociatedUpdatePanelID="upVariantes" runat="server">
                                                    <ProgressTemplate>
                                                        <asp:Image ID="imgLoaderVariantes" runat="server" ImageUrl="~/Assets/Templates/1/imagens/loader.gif" /><br />
                                                        <asp:Label ID="lblLoaderVariantes" runat="server" Text="Aguarde..."></asp:Label>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </div>
                    <hr />
                    <strong><asp:Label ID="lblBreveDescr" runat="server"></asp:Label></strong>
                    <br />
                    <asp:Label ID="lbDescResumida" runat="server" ></asp:Label><br /><br /><br />
                    <asp:UpdatePanel ID="produto_mais_info" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div id="product_descricao" class="product_class_geral">
 	                            <div id="product_descricao_abas">
		                            <ul>
		                                <asp:Repeater ID="RepDescricoes" runat="server" >
                                        </asp:Repeater>
		                            </ul>
	                            </div>
                                <div class="product_descricao_conteudo">
                                <asp:Label ID="lblConteudoAba" runat="server"></asp:Label>
	                            </div>
                            </div>
                            <asp:UpdateProgress ID="upDescricao" AssociatedUpdatePanelID="produto_mais_info" runat="server">
                                <ProgressTemplate>
                                    <asp:Image ID="imgLoaderDesc" runat="server" ImageUrl="~/Assets/Templates/1/imagens/loader.gif" /><br />
                                    <asp:Label ID="lblLoaderDesc" runat="server" Text="Carregando..."></asp:Label>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div style="position: fixed; bottom: 10px; right: 20px;">
                        <br />
                        <asp:LinkButton ID="RedirectProduct" runat="server" Text="Ir para o Produto" OnClick="RedirectProduct_Click" Font-Size="11pt"></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>