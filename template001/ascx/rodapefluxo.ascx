<%@ Control Language="C#" AutoEventWireup="true" Codebehind="Rodape.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.Rodape" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><script language="JavaScript">
    function OpenCertDetails(){thewindow = window.open('https://sealinfo.thawte.com/thawtesplash?form_file=fdf/thawtesplash.fdf&dn=www.animafest.com.br&lang=br', 'anew', config='height=580,width=516,toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,directories=no,status=no');}
</script>
<div class="rodape_cima">
  <div class="container_rodape">
      <div class="box_institucionais">
        <h5 class="title_rodape">Institucional</h5>
        <ul>
          <ciac:paginasinstitucionais id="paginaInstitucionais" runat="server"></ciac:paginasinstitucionais>
          <!--<li class="lista_institucionais"><componente name="ciac:link" id="lnkFaleConosco" /></li>
          <li class="lista_institucionais"><componente name="ciac:link" id="lnkDuvidas" /></li>-->
          <li class="lista_institucionais"><a href=" http://www.gustavolucas.net/novidade/" target="_blank">Seja um franqueado - Loja Online</a></li>
          <li class="lista_institucionais"><a href="http://gustavolucas.net/" target="_blank">Conheça Gustavo Lucas</a></li>
        </ul>
      </div>
      <div class="box_pagamento">
        <h5 class="title_rodape">Pagamento</h5>
        <div class="icones_pagamento">
          <ciac:iconesrodape id="BandeirasRodape" runat="server"></ciac:iconesrodape>
        </div>
      </div>
      <div class="container_selos">
        <h5 class="title_rodape">Segurança</h5>
          <div class="box_selos">
          <ciac:link id="selo_rodape_fcontrol" runat="server"></ciac:link>
          <a href="javascript:OpenCertDetails()"><img src="imagens/selo_thawte.png" alt="Thawte"></a>
            <div class="rodape_ciashop"><ciac:link id="selo_rodape_ciashop" runat="server"></ciac:link></div>
        </div>
      </div>
        
      <div class="box_fale_conosco">
        <div class="box_fale_conosco_cont">
         <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fanimafestoficial&amp;width&amp;height=290&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:290px;" allowtransparency="true"></iframe>
        </div>
      </div>
       <div class="box-lojas">
        <h5 class="title_rodape">Lojas</h5>
        <ul class="lojas">
          <li><a href="../paginainstitucional/loja1">Loja 1 - Campinas, SP</a></li>
          <li><a href="../paginainstitucional/loja2">Loja 2 - Campinas, SP</a></li>
          <li><a href="../paginainstitucional/loja3">Loja 3 - Campinas, SP</a></li>        
          <li><a href="../paginainstitucional/loja4">Loja 4 - Campinas, SP</a></li>            
         </ul>
         <ul class="lojas">
          <li><a href="../paginainstitucional/loja5">Loja 5 - Outlet Campinas, SP</a></li>   
          <li><a href="../paginainstitucional/lojaamericana">Loja Americana, SP</a></li> 
          <li><a href="../paginainstitucional/lojaararaquara">Loja Araraquara, SP</a></li> 
   	      <li><a href="../paginainstitucional/lojabauru">Loja Bauru, SP</a></li>    	
         </ul>
         <ul class="lojas">
          <li><a href="../paginainstitucional/lojaboavista">Loja Boa Vista, RR</a></li>
      	  <li><a href="../paginainstitucional/lojacampogrande">Loja Campo Grande, MS</a></li>      	 	
      	  <li><a href="../paginainstitucional/lojaitumbiara">Loja Itumbiara, GO</a></li>      	
          <li><a href="../paginainstitucional/lojajacarei">Loja Jacareí, SP</a></li>    
      	 </ul>
         <ul class="lojas">
         <!--<li><a href="../paginainstitucional/lojamaceio">Loja Maceió, AL</a></li>-->
      	  <li><a href="../paginainstitucional/animafestmacapa">Loja Macapá, AP</a></li>
        <!--<li><a href="../paginainstitucional/lojanatal">Loja Natal, RN</a></li>-->
      	<!--<li><a href="../paginainstitucional/lojarecife">Loja Recife, PE</a></li>-->
          <li><a href="../paginainstitucional/animafestsaoluis">Loja São Luis, MA</a></li>
          <li><a href="../paginainstitucional/LojaSaoJosedoRioPreto">Loja São José do Rio Preto, SP</a></li>      	      	
          <li><a href="../paginainstitucional/lojauberlandia">Loja Uberlândia, MG</a></li>     	
      	 </ul>
         <ul class="lojas">      
      	  <li><a href="../paginainstitucional/AnimafestValinhos">Loja Valinhos, SP</a></li>
         </ul>  
      </div>      
            
            
  </div>    
</div>


  <div class="rodape_baixo">
      <div class="container_rodape">
 <div class="box_atendimento">
        MARIA FLORINDA PEREIRA PONTES - ME CNPJ: 13.290.675/0001-64 RUA JOSÉ PAULINO, 677 CENTRO - CAMPINAS/SP<br>
           © 2012 - 2015, AnimaFest. Todos os direitos reservados.
  </div>
          <div class="redes_sociais bt_hover">
             <span class="titulo_sociais_rodape">Siga a Animafest<br>nas redes sociais</span>
          <a href="https://www.facebook.com/animafestoficial" target="_blank" class="facebook">Facebook</a>
          <a href="https://twitter.com/lojas_animafest" target="_blank" class="twitter">Twitter</a>
          <a href="http://blog.animafest.com.br/" target="_blank" class="blog">Blog</a>
        </div>
</div>
    </div>
        
<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute('charset','utf-8');
$.src='//v2.zopim.com/?2Bee5ysXW7SpNBryeP9sCghlY3flTQUa';z.t=+new Date;$.
type='text/javascript';e.parentNode.insertBefore($,e)})(document,'script');
</script>
<!--End of Zopim Live Chat Script-->