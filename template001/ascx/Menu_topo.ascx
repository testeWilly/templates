<%@ Control Language="C#"  AutoEventWireup="true" CodeBehind="Topo.ascx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.ascx.Topo" %><%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %><!--[if IE]>
	<script type="text/javascript">
	function DOMgetElementsByClassName($node,$className){
       /* Description: retorna um array com todos os elementos dentro
          de $node que possuam a classe indicada em $className
       Vers?o: 1.0 - 30/08/2006
       Author: Micox - N?iron J.C.G - micoxjcg@yahoo.com.br
       Site:   http://elmicox.blogspot.com
       N?o retire estas informa??es pra n?o infringir direitos autorais!
       */
    var $node, $atual, $className, $retorno = new Array(), $novos = new Array();
    $retorno = new Array();
    for (var $i=0;$i<$node.childNodes.length;$i++){
       $atual = $node.childNodes[$i];
       if($atual.nodeType==1){// 1 = XML_ELEMENT_NODE
          $classeAtual = $atual.className;
          if(new RegExp("\\b"+$className+"\\b").test($classeAtual)){
             $retorno[$retorno.length] = $atual;
          }
          if($atual.childNodes.length>0){
             $novos = DOMgetElementsByClassName($atual,$className);
             if($novos.length>0){
                $retorno = $retorno.concat($novos);
             }
          }
       }
    }
    return $retorno;
    }

    function addEvent(obj, evType, fn){
       //adiciona evento, versao crossbrowser
       //retirado de http://elcio.com.br/crossbrowser/#7
       if (obj.addEventListener){
          obj.addEventListener(evType, fn, true)}
       if (obj.attachEvent){
          obj.attachEvent("on"+evType, fn)}
       }
function ativaHover(classe) {
            //ativa o hover para elementos n?o links, por causa de bug do IE
            //retirado de http://www.maujor.com/tutorial/ddownmenu-a.php
            var pais = DOMgetElementsByClassName(document.body,classe);
            for (var j=0; j<pais.length; j++) {
                        var sfEls = pais[j].getElementsByTagName("LI");
                        for (var i=0; i<sfEls.length; i++) {
                                   sfEls[i].onmouseover=function() {
                                               this.className+=" over";
									}
                                   sfEls[i].onmouseout=function() {
                                               this.className=this.className.replace(new RegExp(" over\\b"), "");
                                   }
                        }
            }
}

addEvent(window,"load",function () { ativaHover("menu"); });
</script>
<![endif]-->



    <ciac:menu id="MenuTopo" runat="server"></ciac:menu>
