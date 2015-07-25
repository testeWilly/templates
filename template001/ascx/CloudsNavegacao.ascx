<%@ Control Language="C#"  AutoEventWireup="true" CodeBehind="Topo.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.Topo" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><div class="cima">
              <div class="logo">
                  <ciac:link id="PaginaInicial" runat="server"></ciac:link>        
              </div>
              
              <div class="links">
                  <ciac:link id="LinkMeuCadastro" runat="server"></ciac:link>
                  <ciac:link id="LinkMeusPedidos" runat="server"></ciac:link>
                  <div class="carrinho_topo"><ciac:link id="LinkCarrinhoCompras" runat="server"></ciac:link></div>
              </div>
            <div class="busca">
                <div id="saudacao">
                   <ciac:labelvisitante id="LabelVisitante1" runat="server"></ciac:labelvisitante>
                </div>
                <div class="b_caixa">
                    <ciac:caixapesquisa id="CaixaPesquisa" runat="server"></ciac:caixapesquisa></div>
              </div>
            </div>
            <div id="menu" class="menu">
                <span class="menu_topo_bg">
                  <ciac:menu id="MenuTopo" runat="server"></ciac:menu>
                </span>
            </div>
<ciac:googleanalytics id="googleanalytitcs1" runat="server"></ciac:googleanalytics>