<%@ Control Language="C#"  AutoEventWireup="true" CodeBehind="Topo.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.Topo" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><div class="scroll_titulo">
    <div class="central">
      <div class="topo_navegacao">
        <div class="logo_navegacao">
          <h1>
              <ciac:link id="PaginaInicial_navegacao" runat="server"></ciac:link>
          </h1>
      </div>
  </div> 
     
	<div class="busca_navegacao">
      <div class="navegacao_centro_busca">
        <ciac:caixapesquisa id="CaixaPesquisa_navegacao" runat="server"></ciac:caixapesquisa>
        </div>
    </div>
       <div class="bt_carrinho_navegacao">
      <div class="bt_carrinho_conteudo_navegacao">
       <span class="mini_itens">
             <span id="ciac-LinkCarrinhoCompras">
                <ciac:link id="LinkCarrinhoCompras" runat="server"></ciac:link>
            </span>
       </span>
                  <div id="divMiniCarrinho" class="mini_carrinho_navegacao">  
                      <ciac:carrinhotopo id="Mini_Carrinho_navegacao" runat="server"></ciac:carrinhotopo>
                      <div class="bt_ir_carrinho">
                        <ciac:link id="LinkCarrinhoComprasMini" runat="server"></ciac:link>
                      </div>
                  </div>
     </div>
     </div>
</div>
</div>