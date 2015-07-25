<%@ Control Language="C#"  AutoEventWireup="true" CodeBehind="Topo.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.Topo" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><div id="topo" class="topo">
  <div class="topo_esquerda">
          <h1 class="logo header-logo">
              <ciac:link id="Pagina_Inicial" runat="server"></ciac:link>
          </h1>
  </div>
  <div class="topo_direita">
    <div class="nav_bar">
      	   <span class="header-link"><ciac:link id="Voltar_Loja" runat="server"></ciac:link></span>
           <span class="header-link"><ciac:link id="Cadastro_Afiliado" runat="server"></ciac:link></span>
    </div>
  </div>
</div>