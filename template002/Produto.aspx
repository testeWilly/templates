<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="Produto.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.Produto" EnableEventValidation="false" UICulture="auto" Culture="auto" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><%@ Register Src="ascx/Topo.ascx" TagName="Topo" TagPrefix="ciaL" %><%@ Register Src="ascx/Rodape.ascx" TagName="Rodape" TagPrefix="ciaL" %><%@ Register Src="ascx/ColunaEsquerda.ascx" TagName="ColunaEsquerda" TagPrefix="ciaL" %><%@ Register Src="ascx/clouds_navegacao.ascx" TagName="clouds_navegacao" TagPrefix="cial" %><%@ Register Src="ascx/WebAnalytics.ascx" TagName="webanalytics" TagPrefix="ciac" %><%@ Register Src="ascx/voltaraotopo.ascx" TagName="voltaraotopo" TagPrefix="ciac" %><%@ Register Src="ascx/TopoProduto.ascx" TagName="TopoProduto" TagPrefix="cial" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <title>AnimaFest</title>
    <link rel="shortcut icon" href="imagens/favicon.ico">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.colorbox.js"></script>
    <script type="text/javascript" src="js/jquery.jqzoom-core-pack.js"></script>
    <script type="text/javascript" src="js/jquery.jqzoom.custom.js"></script>
    <link type="text/css" media="screen" rel="stylesheet" href="css/colorbox.css"> 
    <link href="css/jquery.jqzoom.css" rel="stylesheet" type="text/css">   
    <link href="css/jquery.jqzoom.custom.css" rel="stylesheet" type="text/css">  
    <ciac:seo id="seo" runat="server"></ciac:seo>
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
	<div id="container">
  <div id="containertopo">
      <cial:topoproduto id="TopoProduto" runat="server"></cial:topoproduto>
  </div>

  <div id="containerconteudo">
       <div class="banner">
         <ciac:banner id="Fullzao_topo" runat="server"></ciac:banner>
       </div>
      <div id="conteudo">
              <ciac:produtobarranavegacao id="ProdutoBarraNavegacao1" runat="server"></ciac:produtobarranavegacao>
              <div class="produto">
                <div class="produto_cima">
                  <div class="titulo_produto">

                    </div>
                  <div class="produto_esquerda">
                      <ciac:imagensproduto id="ImagensProduto1" runat="server"></ciac:imagensproduto>
                       <div class="baixo_foto">
                        	<div class="facebook_produto">
								<div class="fb-like" data-href="https://www.facebook.com/animafestoficial" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
                        	</div>
                        	<div class="twitter_produto"><a href="https://twitter.com/share" class="twitter-share-button" data-lang="pt">Tweetar</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script></div>
                        	
                        <div class="indique_bottom"><a class="indique_box" href="#"><img src="imagens/enviar_email.png?11"></a></div> 
                         <ciac:produtoavaliar id="ProdutoAvaliar1" runat="server"></ciac:produtoavaliar>
                    </div>     
                  </div>
                  <div class="produto_direita">
                      <ciac:produtonome id="ProdutoNome1" runat="server"></ciac:produtonome>
                      <ciac:precoproduto id="PrecoProduto1" runat="server"></ciac:precoproduto>
                      <ciac:selosproduto id="selosproduto" runat="server"></ciac:selosproduto> 
                      <ciac:variantesproduto id="Varianteproduto" runat="server"></ciac:variantesproduto>
                      <ciac:simularfreteproduto id="Simular_Frete" runat="server"></ciac:simularfreteproduto> 
                      
                       
                  </div>
                </div>
                <div class="produto_baixo">
                      <ciac:produtodescricoes id="ProdutoDescricoes1" runat="server"></ciac:produtodescricoes>
                      <ciac:comprejunto id="CompreJunto1" runat="server"></ciac:comprejunto>
                         <a href="#" name="ir_avaliar">&nbsp;</a>
                  			<div class="tit_box"><h2>Comentários sobre o produto</h2></div>
                          <div class="comentarios_avaliar">
                                <div class="avaliar">
                                    <ciac:produtoavaliar id="ProdutoAvaliar2" runat="server"></ciac:produtoavaliar>
                                </div>
                                <div class="comentarios">
                                    <ciac:produtocomentario id="ProdutoComentario1" runat="server"></ciac:produtocomentario>
                                </div>                                
                          </div>
                      <div style="display:none;"><div class="indique"><ciac:indiqueproduto id="IndiqueProduto1" runat="server"></ciac:indiqueproduto></div></div>
                      <ciac:atributosproduto id="AtributosProduto1" runat="server"></ciac:atributosproduto>
                      <ciac:produtosrelacionados id="ProdutosRelacionados1" runat="server"></ciac:produtosrelacionados>
                      
                </div>
             </div>

      </div>

  </div>

<ciac:voltaraotopo id="Voltar" runat="server"></ciac:voltaraotopo>
<div id="rodape">
    <cial:rodape id="Rodape1" runat="server"></cial:rodape>
</div>
</div>
<script type="text/javascript">
  
$(function () {

    if($(".comentarios li").html()==null){
        $(".aba_comentarios").remove();
    }

    var tabContainers = $('.conteudo_coment_avaliar');
     $('.comentarios_avaliar_abas li a').click(function () {
        tabContainers.hide().filter(this.hash).show();

        $('.comentarios_avaliar_abas li a').removeClass('selecionado');
        $(this).addClass('selecionado');
  
        return false;
    }).filter(':first').click();

        //parcelamento

    $('.abrir_parcelamento').live('click', function() {
        $.fn.colorbox({width:"480px", inline:true, href:"#box_parcelamento"});
        return false;
    });


});

$(function () {


  $('.indique_box').live('click', function() {
        $.fn.colorbox({width:"600px", inline:true, href:".indique"});
        return false;
    });

});
 
  $(function(){
  $("#ProdutoAvaliar2_txtComentario").attr("maxlength", "500");
	$("#ProdutoAvaliar2_txtComentario").keyup(function(event){
		var target	= $("#content-countdown");
		var max		= target.attr('title');
		var len 	= $(this).val().length;
		var remain	= max - len;
		if(len > max)
		{
			var val = $(this).val();
			$(this).val(val.substr(0, max));
			remain = 0;
		}
		target.html(remain);
	});
});

  
</script>
   <script src="js/geral.js" type="text/javascript"></script>
<ciac:webanalytics id="WebAnalytics" runat="server"></ciac:webanalytics>
</form>
</body>
</html>