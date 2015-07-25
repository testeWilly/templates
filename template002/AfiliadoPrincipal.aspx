<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfiliadoPrincipal.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="CiaShop.Loja.Assets.Templates._1.AfiliadoPrincipal" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/topo_afiliados_logado.ascx" TagName="topo_afiliados_logado" TagPrefix="cial" %><%@ Register Src="ascx/ajuda_afiliados.ascx" TagName="ajuda_afiliados" TagPrefix="cial" %><%@ Register Src="ascx/topo_afiliados.ascx" TagName="topo_afiliados" TagPrefix="cial" %><%@ Register Src="ascx/menu_afiliados.ascx" TagName="menu_afiliados" TagPrefix="cial" %><%@ Register Src="ascx/rodape_afiliado_logado.ascx" TagName="rodape_afiliado_logado" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/geral.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.colorbox.js"></script>
    <link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css">
</head>
<body class="main">
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="container">
    <div id="containertopo">

  
    <cial:topo_afiliados_logado id="Topo_afiliados_logado1" runat="server"></cial:topo_afiliados_logado>

  <cial:menu_afiliados id="Menu_Afiliados1" runat="server"></cial:menu_afiliados>

</div>

  <div class="banner banner_fulzao">
      <ciac:banner id="Topo_Fullzao" runat="server"></ciac:banner>
  </div>

<div id="containerconteudo">
  
<div class="heading-special">
    <h2>Bem vindo a sessão de afiliados</h2>
</div>  
      <div class="afiliados_ajuda">
         <a href="#" class="abrir_ajuda box-bt btn-special">AINDA COM DÚVIDAS? CLIQUE AQUI</a>
      </div>
      <div class="conteudo_afiliado_principal">
          <ciac:afiliadologado id="AfiliadoLogado" runat="server"></ciac:afiliadologado>
        <div id="painel_afiliados">
          <ciac:afiliadologado id="AfiliadoCódigoafiliado" runat="server"></ciac:afiliadologado>
          <div class="conteudo_afiliados">
          <div class="opcoes_afiliados">
            <div class="opcoes_afiliados_img">
              <span class="box-bt">
                <img src="imagens/ico_afiliados_banner.png" alt="Gerenciar Banner">
              </span>                  
            </div>
            <h5>Opções de Banner</h5>
            <ul>
                <li>Escolha as opções de banners</li>
                <li>Veja aqui as posições e layouts disponíveis de banner da loja para inserir em seu site/blog.</li>
            </ul>
            <div class="bt_opcoes_gerenciar">
              <span class="box-bt btn-primary">
              	<ciac:link id="Banners" runat="server"></ciac:link>	
              </span>
            </div>
            </div>
            <div class="opcoes_afiliados">
                <div class="opcoes_afiliados_img">
                    <img src="imagens/ico_afiliados_vendas.png" alt="Acessar relatório de Vendas">
                </div>
                <h5>Relatório de Vendas</h5>
                <ul>
                    <li>Verifique a perfomarce de seu site em relação as vendas</li>
                    <li>Veja a quantidade de vendas/comissões e pagamentos através deste relatório de vendas.</li>
                </ul>
                <div class="bt_opcoes_gerenciar">
                  <span class="box-bt btn-primary">
                  	<ciac:link id="Vendas" runat="server"></ciac:link>
                  </span>
                </div>
            </div>
            <div class="opcoes_afiliados">
                <div class="opcoes_afiliados_img">
                    <img src="imagens/ico_afiliados_visitas.png" alt="Acessar relatório de Visitas">
                </div>
                <h5>Relatório de Visitas</h5>
                <ul>
                    <li>Verifique quem visitou seu site</li>
                    <li>Verifique a quantidade de visitantes em seu site/blog através deste relatório de visitas.</li>
                </ul>
                <div class="bt_opcoes_gerenciar">
                  <span class="box-bt btn-primary">
                  	<ciac:link id="Visitas" runat="server"></ciac:link>
                  </span>                    
                </div>
            </div>
            <div class="opcoes_afiliados">
                <div class="opcoes_afiliados_img">
                    <img src="imagens/ico_afiliados_clientes.png" alt="Acessar relatório de Clientes">
                </div>
                <h5>Relatório de Clientes</h5>
                <ul>
                  <li>Verifique o que seus clientes tem vendido</li>
                  <li>Acesse o relatório clicando no botão abaixo.</li>
                </ul>
                <div class="bt_opcoes_gerenciar">
                  <span class="box-bt btn-primary">
                  	<ciac:link id="Clientes" runat="server"></ciac:link>
                  </span>
                </div>
            </div>
            <div class="opcoes_afiliados">
                <div class="opcoes_afiliados_img">
                    <img src="imagens/ico_afiliados_email.png" alt="Email de Divulgação">
                </div>
                <h5>Email de Divulgação</h5>
                <ul>
                    <li>Divulge sua loja para sua rede de contatos</li>
                    <li>Utilize esta ferramenta para disparar emails de divulgação de produtos vendidos na loja.</li>
                </ul>
                <div class="bt_opcoes_gerenciar">
                  <span class="box-bt btn-primary">
                  	<ciac:link id="EmailDivulgacao" runat="server"></ciac:link>
                  </span>
                </div>
            </div>
          </div>
        </div>
      </div>
</div>
</div>


    <cial:rodape_afiliado_logado id="Rodape_Afiliado_Logado" runat="server"></cial:rodape_afiliado_logado>


<script type="text/javascript">
  $(document).ready(function(){
     $(".abrir_ajuda").colorbox({width:"680px", height:"500px", inline:true, href:"#box_ajuda"});
  });
</script>

<cial:ajuda_afiliados id="Ajuda_afiliados" runat="server"></cial:ajuda_afiliados>
</form>
</body>
</html>