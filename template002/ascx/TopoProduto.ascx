<%@ Control Language="C#"  AutoEventWireup="true" CodeBehind="Topo.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.Topo" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><div class="topo">
  <div class="topo_cima">
    <div class="content_topo_center">
     <div id="saudacao">
       <ciac:labelvisitante id="LabelVisitante1" runat="server"></ciac:labelvisitante>
     </div>
     <div class="nav_bar">
      <span class="cadastro"><ciac:link id="Cadastrese" runat="server"></ciac:link></span>
      <span class="minhaconta"><ciac:link id="LinkMeuCadastro" runat="server"></ciac:link></span>
      <span class="meuspedidos"><ciac:link id="LinkMeusPedidos" runat="server"></ciac:link></span>
    </div>
  </div>
</div>
<div class="topo_meio">
  <div class="content_topo_center">
    <div class="menu_topo">
    	<ciac:menu id="Menu1" runat="server"></ciac:menu>
    </div>
    <div class="busca_topo">
      <ciac:caixapesquisa id="CaixaPesquisa" runat="server"></ciac:caixapesquisa>
    </div>
  </div>
</div>
<div class="topo_baixo">
  <div class="content_topo_center">
    <div class="logo">
      <h2>
        <ciac:link id="PaginaInicial" runat="server"></ciac:link>
      </h2>
    </div>
    <div class="bt_carrinho">
      <div class="bt_carrinho_conteudo">
        <span class="mini_itens"><ciac:link id="LinkCarrinhoCompras" runat="server"></ciac:link></span>
        <div class="mini_carrinho">  
          <ciac:carrinhotopo id="Mini_Carrinho" runat="server"></ciac:carrinhotopo>
          <div class="bt_ir_carrinho bt_hover">
            <ciac:link id="LinkCarrinhoComprasMini" runat="server"></ciac:link>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>