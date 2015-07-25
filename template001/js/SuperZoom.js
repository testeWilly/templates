/*
Utilização:

Inserir no html estas chamadas:
<script type="text/javascript" src="include/CiaZoom.js"></script>  
<link type="text/css" href="include/CiaZoom.css" rel="stylesheet" />


Tag img para zoom:

<IMG id="IDdaImagem" src="Caminho da imagem Original" Imagem-zoomsrc="Caminho da imagem para zoom">

Atenção: 
1 - Este script foi criado visando a utilização nas lojas SMB, o que significa que talvez tenha que ser
	adaptado para que venha a funcionar em outras versões.

2 - Se tiverem dúvidas sobre algum elemento JavaScript aqui utilizado, ou não conhece algum elemento, ou está com dificuldade na implementação,  digite no seu Browser: http://www.google.com.br e PROCURE, já criei, vai querer que eu implemente para você também???

*/

var CiaZoom = (function () {

    //Utilizado para obter e criar os elementos necessários para o Zoom
    var $ = function (id) { return document.getElementById(id); };
    var dc = function (tag) { return document.createElement(tag); };

    //Valor padrão de Zoom para ser utilizado como base
    var defaultWidth = 400;
    var defaultHeight = 400;

    //Função para adcionar eventos a elementos
    function addEvent(element, ev, handler) {
        var doHandler = function (e) {
            return handler(e || window.event);
        }
        if (element.addEventListener) {
            element.addEventListener(ev, doHandler, false);
        } else if (element.attachEvent) {
            element.attachEvent("on" + ev, doHandler);
        }
    }


    //Função para obter a posição dos elementos
    function getElementPos(element) {
        var x = element.offsetLeft;
        var y = element.offsetTop;
        var parent = element.offsetParent;
        while (parent) {
            x += parent.offsetLeft;
            y += parent.offsetTop;
            parent = parent.offsetParent;
        }
        return {
            x: x,
            y: y
        }
    }

    //Função para obter a posição do cursor
    function getEventMousePos(element, e) {
        var scrollX = document.body.scrollLeft || document.documentElement.scrollLeft;
        var scrollY = document.body.scrollTop || document.documentElement.scrollTop;

        if (e.currentTarget) {
            var pos = getElementPos(element);
            return {
                x: e.clientX - pos.x + scrollX,
                y: e.clientY - pos.y + scrollY
            }
        }
        return {
            x: e.offsetX,
            y: e.offsetY
        }
    }

    /*	
    *	ATENÇÃO!!
    *	Esta função é o coração da ferramenta, tenha certeza do que está fazendo ao alterá-la.
    *
    *	
    *	Função que irá criar efetivamente o Zoom
    *	Parâmetros:
    *	img			- elemento DOM img que contém os caminhos das imagens (normal e grande).
    *	zoomSrc		- propriedade 'Imagem-zoomsrc' do elemento img que contém o caminho da 
    *				  imagem grande.
    *
    *	zoomImgCtr	- DIV que irá 'hospedar' a imagem de ZOOM, este parâmetro é passada pela 
    *				  própria função de forma recursiva.
    *
    *	zoomWidth	- Isso é Óbvio.
    *
    *	zoomHeight	- Isso TAMBÉM é Óbvio.
    *
    *	alwaysShow	- Esse parâmetro informa que mesmo que o evento onMouseout tenha sido 
    *				  disparado ele não irá 'desligar' a div que contém a imagem de ZOOM.
    */
    /*	control		- Indica se a função está sendo executada quando é alternada a imagem de 
    detalhe de algum produto, se este parâmetro não for passado vai dar 
    pau quando houver imagem de detalhe.

    newZoomImg	- Indica qual nova imagem a ser substituída quando a imagem de detalhe 
    for alternada, sem este parâmetro quando alternar a imagem de detalhe a 
    imagem de Zoom continuará a anterior.
    */
    function MakeZoomNable(img, zoomSrc, zoomImgCtr, zoomWidth, zoomHeight, alwaysShow, control, newZoomImg) {

        /*
        Tenha certeza de que a imagem foi carregada, caso contrário adicione a chamada ao 
        evento onload
        */
        if (!img.complete && !img.__CiaZoomQueued) {
            addEvent(img, "load", function () {
                img.__CiaZoomQueued = true;
                setTimeout(function () {
                    /*
                    Aqui a função é chamada novamente após terem sido criados todos os elementos 
                    e suas propriedades. Isso é preciso para que ela popule as DIVs com as imagens.
                    */
                    MakeZoomNable(img, zoomSrc, zoomImgCtr, zoomWidth, zoomHeight, alwaysShow);
                }, 1);
            });
            return;
        }

        //Caso a função tenha sido disparada ao alternar a imagem, será necessário que alguns elementos sejam destruídos, pois eles serão gerados novamente mais abaixo
        if (control == "alterna") {
            /*
            Destrói DIV que foi criada para conter a imagem original
            */
            var aParent = img.parentNode;
            var divParent = aParent.parentNode;
            aParent.removeChild(img);
            divParent.removeChild(aParent);
            divParent.appendChild(img);
            try {
                //Destrói a imagem de Zoom
                var CiaZoom_img = document.getElementById("CiaZoom_img");
                var CiaZoom_imgParent = CiaZoom_img.parentNode;
                CiaZoom_imgParent.removeChild(CiaZoom_img);

                //Destrói a DIV que contém a imagem de Zoom
                var divZoomImgCtr = document.getElementById("divZoomImgCtr");
                var divZoomImgCtrParent = divZoomImgCtr.parentNode;
                divZoomImgCtrParent.removeChild(divZoomImgCtr);
            }
            catch (e) {
                /*
                Não é necessário fazer nada aqui, este bloco apenas foi colocado dentro 
                do try para evitar eventuais erros por não localizar o elemento se
                por um acaso eles já estiverem destruídos.
                Todos este elementos serão criados logo abaixo, por isso não se preocupe!
                */
            }
        }

        //Varifica qual o Browser do cliente por questão de compatibilidade
        var isIE = !!document.all && !!window.attachEvent && !window.opera;

        var w = img.offsetWidth; //Largura total da tela
        var h = img.offsetHeight; //Altura total da tela

        /*
        Esta parte é importante porque cria um elemento do tipo DOM link que será necessário
        para mostrar a tela antiga de ZOOM dos produtos.
        */
        var oldParent = img.parentNode;
        if (oldParent.nodeName != "A") {
            var linkParent = dc("a");
            //linkParent.setAttribute("href", zoomSrc);
            oldParent.replaceChild(linkParent, img);
            linkParent.appendChild(img);
        } else {
            var linkParent = oldParent;
        }

        linkParent.style.position = "relative";
        linkParent.style.display = "block";
        //linkParent.style.width = w+"px";
        //linkParent.style.height = h+"px";

        /*
        Adicionado ao evento onClick do link para executar a função que chamará a página 
        antiga de zoom.
        */
        addEvent(linkParent, "click",
					function (e) {
					    ShowZoom(newZoomImg);
					}
			);

        var imgLeft = img.offsetLeft; //Posição X da imagem original
        var imgTop = img.offsetTop; //Posição Y da imagem original

        /*		Cria a div flutuante que irá ser mostrada em cima da imagem original, representando
        *		a área a ser dada o Zoom.
        *		*/
        var zoom = dc("div");
        zoom.id = "divZoomMaker";
        zoom.className = "CiaZoom_marker";

        /*
        Elemento DOM img que irá conter a imagem de Zoom.
        */
        var zoomImg = dc("img");
        zoomImg.id = "CiaZoom_img";
        zoomImg.className = "CiaZoom_img";
        zoomImg.style.position = "absolute";
        zoomImg.style.left = "-9999px";

        //'Escreve' o elemento imagem de zoom na página.
        document.body.appendChild(zoomImg);

        var parent = img.parentNode; // pega o elemento pai da imagem original.

        //Cria a DIV que conterá a imagem de zoom.
        var ctr = dc("div");
        ctr.id = "divCTR";
        with (ctr.style) {
            position = "absolute";
            left = imgLeft + "px";
            top = imgTop + "px";
            width = w + "px";
            height = h + "px";
            overflow = "hidden";
            display = "none";
        }

        //Adciona a imagem à DIV citada acima.
        ctr.appendChild(zoom);

        //Adiciona a DIV à página.
        parent.appendChild(ctr);


        var zoomInput = parent; //Passa o elemento pai da imagem original para esta variável.

        var useDefaultCtr = false; //Usado para informar se a DIV da imagem de zoom já está criada.

        /*
        Cria a imagem de zoom com as devidas proporções.
        */
        if (!zoomImgCtr) {
            zoomImgCtr = dc("div");
            zoomImgCtr.id = "divZoomImgCtr"
            zoomImgCtr.className = "CiaZoom_imgctr";

            var imgPos = getElementPos(img);
            zoomImgCtr.style.left = w + imgPos.x + "px";
            zoomImgCtr.style.top = imgPos.y + "px";

            zoomImgCtr.style.width = (zoomWidth ? zoomWidth : defaultWidth) + "px";
            zoomImgCtr.style.height = ((zoomHeight ? zoomHeight : defaultHeight)) + "px";

            document.body.appendChild(zoomImgCtr);

            useDefaultCtr = true; // Seta o valor para true pois a DIV já está criada.
        }

        //Seta o valor para que a imagem não ultrapasse as dimensões da div.		
        zoomImgCtr.style.overflow = "hidden";

        //Informa se a div deverá ou não estar sempre escondida.
        if (!alwaysShow) {
            zoomImgCtr.style.visibility = "hidden";
        }

        /*
        Adiciona ao evento onLoad da imagem original a div que funcionará como 'alvo' da 
        área a ser dada zoom.
        */
        addEvent(zoomImg, "load", function () {
            var zoomWidth = zoomImg.offsetWidth;
            var zoomHeight = zoomImg.offsetHeight;

            var ctrWidth = zoomImgCtr.offsetWidth;
            var ctrHeight = zoomImgCtr.offsetHeight;

            var ratioW = zoomWidth / w;
            var ratioH = zoomHeight / h;

            var markerWidth = Math.round(ctrWidth / ratioW);
            var markerHeight = Math.round(ctrHeight / ratioH);

            try {
                document.body.removeChild(zoomImg);
            }
            catch (e) {
            }

            zoomImgCtr.appendChild(zoomImg);

            var zoomFill = dc("div");
            zoomFill.id = "divZoomFill";
            zoomFill.className = "CiaZoom_fill";
            zoom.appendChild(zoomFill);

            var zoomBorder = dc("div");
            zoomBorder.id = "divZoomBorder";
            zoomBorder.className = "CiaZoom_border";
            zoom.appendChild(zoomBorder);

            if (!isNaN(markerWidth)) {
                zoom.style.width = markerWidth + "px";
                zoom.style.height = markerHeight + "px";
            }

            if (alwaysShow) {
                zoom.style.left = "0px";
                zoom.style.top = "0px";

                zoomImg.style.left = "0px";
                zoomImg.style.top = "0px";
            }

            var isInImage = false;

            if (!alwaysShow) {
                addEvent(zoomInput, "mouseover",
					function (e) {
					    if (document.getElementById("zoomIcon1") != null) {
					        var controleIco = document.getElementById("zoomIcon1");
					        if (controleIco != "undefined")
					            controleIco.className = "zoomIcon_over";
					    }
					}
				);
                addEvent(zoomInput, "mouseout",
					function (e) {
					    var target = e.target || e.srcElement;
					    if (!target) return;
					    if (target.nodeName != "DIV") return;
					    var relTarget = e.relatedTarget || e.toElement;
					    if (!relTarget) return;
					    while (relTarget != target && relTarget.nodeName != "BODY" && relTarget.parentNode) {
					        relTarget = relTarget.parentNode;
					    }
					    if (relTarget != target) {
					        isInImage = false;
					        ctr.style.display = "none";
					        zoomImgCtr.style.visibility = "hidden";
					    }
					    //var selects = document.getElementsByTagName("select");
					    //for (var i=0;i<selects.length;i++) {
					    //	var select = selects[i];
					    //	select.style.visibility="visible";
					    //}
					    if (document.getElementById("zoomIcon1") != null) {
					        var controleIco = document.getElementById("zoomIcon1");
					        if (controleIco != "undefined")
					            controleIco.className = "zoomIcon_out";
					    }
					}
				);

                addEvent(document.body, "mouseover",
					function (e) {
					    HideShowSelects();
					    if (isInImage && !(e.toElement == zoomBorder || e.target == zoomBorder)) {
					        ctr.style.display = "none";
					        zoomImgCtr.style.visibility = "hidden";
					        isInImage = false;

					    }
					}
				);
            }

            addEvent(zoomInput, "mousemove",
				function (e) {

				    isInImage = true;

				    var imgPos = getElementPos(img);

				    if (useDefaultCtr) {
				        zoomImgCtr.style.left = w + imgPos.x + "px";
				        zoomImgCtr.style.top = imgPos.y + "px";
				    }
				    ctr.style.display = "block";
				    zoomImgCtr.style.visibility = "visible";

				    //var selects = document.getElementsByTagName("select");
				    //for (var i=0;i<selects.length;i++) {
				    //	var select = selects[i];
				    //	select.style.visibility="hidden";
				    //}
				    var pos = getEventMousePos(zoomInput, e);
				    if (e.srcElement && isIE) {
				        if (e.srcElement == zoom) return;
				        if (e.srcElement != zoomInput) {
				            var zoomImgPos = getElementPos(e.srcElement);
				            pos.x -= (imgPos.x - zoomImgPos.x);
				            pos.y -= (imgPos.y - zoomImgPos.y);
				        }
				    }
				    var x = markerWidth / 2;
				    var y = markerHeight / 2;

				    if (!isIE) {
				        pos.x -= imgLeft;
				        pos.y -= imgTop;
				    }
				    if (pos.x < x) pos.x = x;
				    if (pos.x > w - x) pos.x = w - x;
				    if (pos.y < y) pos.y = y;
				    if (pos.y > h - y) pos.y = h - y;

				    var left = ((pos.x - x) | 0);
				    var top = ((pos.y - y) | 0);

				    zoom.style.left = left + "px";
				    zoom.style.top = top + "px";

				    zoomImg.style.left = -((pos.x * ratioW - ctrWidth / 2) | 0) + "px";
				    zoomImg.style.top = -((pos.y * ratioH - ctrHeight / 2) | 0) + "px";
				}
			);
        });


        setTimeout(function () {

            if (control == "alterna") {
                zoomImg.src = newZoomImg;

            } else {
                zoomImg.src = zoomSrc;
            }

        }, 1);
    }

    function init(control, newZoomImg) {
        var images = document.getElementsByTagName("img");
        for (var i = 0; i < images.length; i++) {
            var img = images[i];
            var zoomSrc = img.getAttribute("ImagemZoomSrc");
            var titleZoom = img.getAttribute("title_zoom");
            if (zoomSrc) {
                MakeZoomNable(img, zoomSrc, document.getElementById(img.getAttribute("id") + "_zoom"), null, null, img.getAttribute("Imagem-zoomalwaysshow") == "true", control, newZoomImg);
            }
        }
    }

    return {
        addEvent: addEvent,
        init: init,
        MakeZoomNable: MakeZoomNable
    };

})();

function HideShowSelects() {
//	try
//	{
//		var ZoomImgCtr = document.getElementById("divZoomImgCtr");
//		var selects = document.getElementsByTagName("select");
//		if (zoomImgCtr.style.visibility=="visible")
//		{
//			for (var i=0;i<selects.length;i++) {
//				var select = selects[i];
//				select.style.visibility="hidden";
//			}
//		}else{
//			for (var i=0;i<selects.length;i++) {
//				var select = selects[i];
//				select.style.visibility="visible";
//			}
//		}	
//	}
//	catch (e)
//	{
//	}
	
}



CiaZoom.addEvent(window, "load", CiaZoom.init);
