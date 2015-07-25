<script language="javascript">
//Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
//Objetivo: arrumar as validações e tratamento dos botões.
//Linhas alteradas: foram feitas diversas mofificações na estruturação do javascript
var __postback = false;
function alteraFinalizar(categoria, metodo, idioma, quantidadeMinDigitosNrCartao){
    var botoes = document.getElementsByName("btnFinalizar");
    var parcelas = 1;

    window.name = "second";
  
    if(document.getElementById('ddlParcelas_' + metodo + '_' + idioma))
        parcelas = document.getElementById('ddlParcelas_' + metodo + '_' + idioma)[document.getElementById('ddlParcelas_' + metodo + '_' + idioma).selectedIndex].value;
   
    var ddlTurnoEntrega = document.getElementById('ddlTurnoEntrega');
    var evento = "javascript:if (validaCampos(" + quantidadeMinDigitosNrCartao + ") && !__postback) {__postback = true;__doPostBack('btnFinalizarCompra_" + categoria + "_" + metodo + "_" + idioma + "_" + parcelas + "',''); }";    
        
    if (ddlTurnoEntrega != null){
        evento = "javascript:_if(!__postback) {__postback=true; __doPostBack('btnFinalizarCompra_" + categoria + "_" + metodo + "_" + idioma + "_" + parcelas + "','" + ddlTurnoEntrega.options[ddlTurnoEntrega.selectedIndex].text + "');}";        
    }
    

    try
    {
    
            //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
           //Função: tratamento para fixar o valor mês e ano de validade do cartão quando o usuário troca o método de compra.

           if(document.getElementById('HAnoValidade').getAttribute('value')==null)
           document.getElementById('ddlAnoValidade').value = 0;
           else
           document.getElementById('ddlAnoValidade').value = document.getElementById('HAnoValidade').getAttribute('value');
      
           if(document.getElementById('ddlMesValidade').selectedIndex==null)
           document.getElementById('ddlMesValidade').selectedIndex
        
           document.getElementById('ddlMesValidade').selectedIndex = document.getElementById('HMesValidade').getAttribute('value');


   }
   catch(err2)
   {

   }
            
   for(var i = 0; i < botoes.length; i++)
		botoes.item(i).href = evento;
	
    if(document.getElementById('radMetodo_' + metodo + '_' + idioma))		
        document.getElementById('radMetodo_' + metodo + '_' + idioma).checked = true;
    
     //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Problema: ele não limpava a url e ia adicionando os índices o que causava uma url gigante.
    //Função: pega o index na url onde está localizado o #. Depois ele verifica se já foi selecionado um método ou não.Se for o primeiro me-
    //todo selecionado monta a url com este método.Caso contrário,limpa o método anterior, e monta a nova url com o novo método.   

    var url   = '';
    var index = window.location.href.indexOf('#');    


    if(index==-1)
    url =  window.location.href;    
    else
    url = window.location.href.substring(0,index);
  

    window.top.location.href = url + "#" + metodo + "_" + idioma;
     
}

function click(e) {

     //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Função: bloqueio do botão direito do mouse. 


    try { 
        if (event.button==2||event.button==3) return false; 
    }  
    catch (e) { 
        if (e.which == 3) 
            return false; 
    } 
}

function validaCampos(quantidadeMinDigitosNrCartao)
{
    var validado = true;
    try
    {

    //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Função: se o painel de preenchimento do número do cartão estiver desabilitado retorna verdadeiro .  
    var mc = document.getElementById('metodo_cielo');
    var mm = document.getElementById('metodo_moip_cc');
    if((mc == null || mc.style.display == 'none') && (mm == null || mm.style.display == 'none'))
        return validado

    //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Função: verificar se algum método de pagamento foi selecionado.       
    var valor = '';
        
    
    $('input:radio').each(function () {
        if ($(this).is(':checked'))
            valor = $(this).val();
    });

        
    if (valor == '') {
        alert('Selecione um método.');
        validado = false;
        return validado;
    }


     //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Função: verifica se alguma parcela foi selecionada. 


    var nomeControle = "ddlParcelas_" + valor.replace("radMetodo_","");
    var ddlparcelas = document.getElementsByName(nomeControle);
    if (ddlparcelas != null)
    {
        if (document.getElementById(nomeControle).options[document.getElementById(nomeControle).selectedIndex].value == "0"){
            alert('Nenhuma parcela selecionada.');
            validado = false;
            return validado;
        }
    }


     //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Função: verificar se algum campo obrigatório ficou vazio. 
    $('input:text:visible').each(function() {
        //Verificar se o campo está preencido
        if ($(this).attr('name') == 'txtTitular' || $(this).attr('name') == 'txtTitular_moip')
        {
                if ($(this).attr('value').trim() == '')
                {
                          alert('Nome do titular não foi preenchido. Por favor preencha antes de continuar a operação');                           
                          validado = false;
                          return validado;
                
                }
        
        }
        else if ($(this).attr('name') == 'txtNumCartao' || $(this).attr('name') == 'txtNumCartao_moip')
        {
                if($(this).attr('value').trim() == '0000000000000000')
                {
                          alert('Não preencha o número do cartão com zeros.'); 
                          validado = false;
                          return validado;

                }
                else if ($(this).attr('value').trim() == '')
                {
                          alert('Número do cartão não foi preenchido. Por favor preencha antes de continuar a operação'); 
                          validado = false;
                          return validado;
                }
                else
                {

                         //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
                        //Função: verifica se foram digitados 16 números no código do cartão. 

                       //Tarefa 89273 : Cartão Dinners deve aceitar 14 e 16 digitos.
                      //Solução: possibilitar a digitação do número do cartão reestringindo a limitação de dígitos(14 a 16 números).

                        var quantidadeMaxima = $(this).attr('maxLength');
                        if (($(this).attr('value').trim().length < quantidadeMaxima) && !($(this).attr('value').trim().length >= quantidadeMinDigitosNrCartao)  )
                        {
                            alert('O campo número do cartão deve ter entre ' + quantidadeMinDigitosNrCartao + ' e ' + quantidadeMaxima + ' digitos.');
                            validado = false;
                            return validado;
                        }
                }
            
        }
//        else if ($(this).attr('name') == 'txtBancoEmissor')       
//        {
//                if ($(this).attr('value').trim() == '')
//                {
//                          alert('Preencha o campo Emissor.'); 
//                          validado = false;
//                          return validado;
//                 
//                }


//        }
        else if($(this).attr('name') == 'txtCodigoSeguranca' || $(this).attr('name') == 'txtCodigoSeguranca_moip') 
        {
                  //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
                 //Função: verifica se a data foi preenchida, caso contrario, verifica se o código de segurança está vazio ou não. Se o código de segurança
                 //não estiver vazio verifica a quantidade de digitos que foi digitado no campo código do cartão .
 
                var ddlAno, ddlMes;
                if($(this).attr('name') == 'txtCodigoSeguranca')
                {
                    ddlAno = document.getElementById('ddlAnoValidade');
                    ddlMes = document.getElementById('ddlMesValidade');
                }
                else
                {
                    ddlAno = document.getElementById('ddlAnoValidade_moip');
                    ddlMes = document.getElementById('ddlMesValidade_moip');
                }

                if(!(verificadata(ddlAno, ddlMes)))
                {
                 validado = false;
                 return validado;
                  
                }
                if ($(this).attr('value').trim() == '')
                {
                          alert('Código de segurança não foi preenchido. Por favor preencha antes de continuar a operação');                           
                          validado = false;
                          return validado;
                }
                else if(!(verificadigitoscartao(this)))
                {
                validado = false;
                return validado;
                }
                
        }

        else if($(this).attr('name') == 'txtCPFTitular') 
        {
                if ($(this).attr('value').trim() == '')
                {
                    alert('CPF do titular não foi preenchido. Por favor preencha antes de continuar a operação');                     
                    validado = false;
                    return validado;
                } 
                if(!validarCPF($(this).attr('value').trim()))
                {
                    alert('Preencha o CPF do titular corretamente.'); 
                    validado = false;
                    return validado;                  
                }                       
        }

        else if($(this).attr('name') == 'txtDiaNascimentoTitular') 
        {
            var DIA = parseInt($('[name=txtDiaNascimentoTitular]').attr('value').trim());
            var MES = parseInt($('[name=txtMesNascimentoTitular]').attr('value').trim());
            var ANO = parseInt($('[name=txtAnoNascimentoTitular]').attr('value').trim());

            if(isNaN(DIA) || isNaN(MES) || isNaN(ANO) || MES > 12 || DIA > 31)
            {
                alert('Preencha a data de nascimento do titular corretamente.'); 
                validado = false;
                return validado;   
            }
            else
            {
                var date = new Date();
                date.setTime(0);
                date.setFullYear(parseInt(ANO), parseInt(MES) - 1, parseInt(DIA));

                if(date >= new Date())
                {
                    alert('Favor verificar a data de nascimento do titular.'); 
                    validado = false;
                    return validado;
                }
            }            
        }
    });


    

    
    }
    catch(err)
    {
       validado = true;
    }
       

    return validado;
}

function alteraTamanhoDoCampoCodigoSeguranca(numeroDigitosCodSeguranca, quantidadeMaxDigitosNrCartao)
{
    var metodoCielo = $('#metodo_cielo');
    var metodoMoip = $('#metodo_moip_cc');

    if(metodoCielo.size() > 0)
    {
        if (metodoCielo.css('display') == 'block')
        {
            if ($('#txtCodigoSeguranca').val().length > numeroDigitosCodSeguranca)
            {
                $('#txtCodigoSeguranca').val('');
            }
            if($('#txtNumCartao').val().length > quantidadeMaxDigitosNrCartao)
            {
                $('#txtNumCartao').val('');
            }
             $('#txtCodigoSeguranca').attr('maxlength', numeroDigitosCodSeguranca);
             $('#txtNumCartao').attr('maxlength',quantidadeMaxDigitosNrCartao);
        }
    }

    if(metodoMoip.size() > 0)
    {
        if(metodoMoip.css('display') == 'block')
        {
            if ($('#txtCodigoSeguranca_moip').val().length > numeroDigitosCodSeguranca)
            {
                $('#txtCodigoSeguranca_moip').val('');
            }
            if($('#txtNumCartao_moip').val().length > quantidadeMaxDigitosNrCartao)
            {
                $('#txtNumCartao_moip').val('');
            }
            $('#txtCodigoSeguranca_moip').attr('maxlength', numeroDigitosCodSeguranca);
            $('#txtNumCartao_moip').attr('maxlength', quantidadeMaxDigitosNrCartao);
        }
    }
}

function limpaparcelas()
{
    //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Função: limpa as dropdown do html.
    var selects = jQuery('[id^=ddlParcelas]');
    selects.each(function(index, element){
        if(element['name'] == element['id'])
            element.value = 0;
    });
}

function onchangeparcelas(valor)
{
  try
  {
    //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Função: limpa todas as dropdown do html menos a selecionada.    
    var selects = jQuery('[id^=ddlParcelas]');
    selects.each(function(index, element){
        if (element['name'] != valor )
            element.selectedIndex = 0;
    });
  }
  catch(err3)
  {

  }
}


function verificavalidadecartao(ddlAnoValidade, ddlMesValidade)
{

  try
  {


     //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
    //Função: verificar se o ano e mês de validade é maior que o atual.
    hoje = new Date();

    if(ddlAnoValidade.options[ddlAnoValidade.selectedIndex].value == hoje.getFullYear() )
    {
      if (ddlMesValidade.options[ddlMesValidade.selectedIndex].value <= hoje.getMonth() + 1 ){
         alert('Favor verificar a data de validade do cartão.');
         return false;
      }

    }

  }
  catch(erro)
  {
  }

    return true;

}


function verificadigitoscartao(txtCodigoCartao)
{
 try
 {
   //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
  //Função: verifica se foram digitados 3 números no código do cartão.    
  var quantidadecodigocartao = txtCodigoCartao.getAttribute('maxLength');
  if (txtCodigoCartao.value.length < quantidadecodigocartao)
  {
  alert('O campo código do cartão deve conter ' + quantidadecodigocartao + ' números.');
  return false;
  }

 }
 catch(errodigitos)
 {
 }

  return true;

}


function verificadata(ddlAnoValidade, ddlMesValidade)
{

          
    try
    { 

         //Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
        //Função: verificar se o mês e o ano de validade foram preenchidos. Se foram,ele verifica se o mês e ano de validade é maior do que o atual.
    
        var logico = true; 


        if((ddlAnoValidade != null)||(ddlMesValidade != null))
        {
            
            if (ddlMesValidade.options[ddlMesValidade.selectedIndex].value == "0")
            {
                alert('Mês de validade não foi preenchido. Por favor preencha antes de continuar a operação');
                logico = false;
                return logico;
            }
            else if(ddlAnoValidade.options[ddlAnoValidade.selectedIndex].value == "0")
            {
                alert('Ano de validade não foi preenchido. Por favor preencha antes de continuar a operação');            
                logico = false;
                return logico;
            }
            else if(!(verificavalidadecartao(ddlAnoValidade, ddlMesValidade)))
            { 
            logico = false;
            return logico;           
            }



        }
     }
     catch(erroverificadata)
     {
     }

     return logico;
     

}
//Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
//Função: evitar que o cliente só digite espaço nos campos. 

String.prototype.trim = function()
{
 return this.replace(/^\s*/, "").replace(/\s*$/, "");
}

//Função: bloquear botão direito do mouse
document.oncontextmenu = function() { return false; }
document.ondragstart   = function() { return false; }
document.onmousedown   = click;

//Tarefa 87626 : Número do cartão e código de segurança estão aceitando mais digitos do que o permitido e também estão aceitando letras.
//Função: redirecionar a página para o link do carrinho vazio quanto o pagamento é finalizado.

if(window.name=="second")
{
    window.name = "first";

    var url   = '';
    var index = window.location.href.indexOf('#');    
    var posicao = index-9;

    if(index > -1)    
    {
    url = window.location.href.substring(0,posicao);
    window.location.href = url + "Carrinho";    
    }


}

function validarCPF(cpf) {
 
    cpf = cpf.replace(/[^\d]+/g,'');
 
    if(cpf == '') return false;
 
    // Elimina CPFs invalidos conhecidos
    if (cpf.length != 11 ||
        cpf == "00000000000" ||
        cpf == "11111111111" ||
        cpf == "22222222222" ||
        cpf == "33333333333" ||
        cpf == "44444444444" ||
        cpf == "55555555555" ||
        cpf == "66666666666" ||
        cpf == "77777777777" ||
        cpf == "88888888888" ||
        cpf == "99999999999")
        return false;
     
    // Valida 1o digito
    add = 0;
    for (i=0; i < 9; i ++)
        add += parseInt(cpf.charAt(i)) * (10 - i);
    rev = 11 - (add % 11);
    if (rev == 10 || rev == 11)
        rev = 0;
    if (rev != parseInt(cpf.charAt(9)))
        return false;
     
    add = 0;
    for (i = 0; i < 10; i ++)
        add += parseInt(cpf.charAt(i)) * (11 - i);
    rev = 11 - (add % 11);
    if (rev == 10 || rev == 11)
        rev = 0;
    if (rev != parseInt(cpf.charAt(10)))
        return false;
         
    return true;
    
}

</script>
