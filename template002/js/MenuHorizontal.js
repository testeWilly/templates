<!--[if IE]>
<script type="text/javascript">
    function DOMgetElementsByClassName($node,$className)
    {
        /*  Description: retorna um array com todos os elementos dentro
            de $node que possuam a classe indicada em $className
            Versão: 1.0 - 30/08/2006
            Author: Micox - Náiron J.C.G - micoxjcg@yahoo.com.br
            Site:   http://elmicox.blogspot.com
            Não retire estas informações pra não infringir direitos autorais!
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

    function horizontal() 
    { 
        if (document.getElementById("barra") != null )
        {
            var ie = document.all;                        
            var navItems = document.getElementById("barra").getElementsByTagName("li"); 
            var iframe = document.getElementById("iframe1");
        
            for (var i=0; i< navItems.length; i++) 
            { 
                //if((navItems[i].className == "menuvertical") || (navItems[i].className == "submenu")) 
                if (navItems[i].nodeName == "LI")
                { 
                    //alert('horizontal');
                    if(navItems[i].getElementsByTagName('ul')[0] != null) 
                    { 

                        navItems[i].onmouseover=function() {
                            this.className+=" over";
                            if (ie) { 
                                document.getElementById("iframe1").style.visibility = 'visible';
                                document.getElementById("iframe1").style.top = this.getElementsByTagName('ul')[0].offsetTop;
                                document.getElementById("iframe1").style.height = this.getElementsByTagName('ul')[0].offsetHeight;
                                document.getElementById("iframe1").style.width = this.getElementsByTagName('ul')[0].offsetWidth;
                                document.getElementById("iframe1").style.left = this.getElementsByTagName('ul')[0].offsetLeft;
                            };}
                        navItems[i].onmouseout=function() {
                            this.className=this.className.replace(new RegExp(" over\\b"), "");
                            if (ie) { document.getElementById("iframe1").style.visibility = 'hidden';};}
                    } 
                } 
            }
        } 
    } 

    function ativa()
    {
        ativaHover("containner");
        horizontal();
    } 

    addEvent(window,"load",function () { ativa(); });

    //addEvent(window,"load",function () { ativaHover("containner"); });
</script>
<![endif]-->

<script type="text/javascript">
    function posicionamenu(id)
    {
        var largura=document.body.clientWidth - 400;
        var objeto=document.getElementById(id);
        if (largura < objeto.offsetLeft){
            objeto.className = 'esquerdo';
        }else{
            objeto.className = '';
        }
    }
</script>