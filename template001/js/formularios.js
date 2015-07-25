function validarCPF(cpf){
   var filtro = /^\d{3}.\d{3}.\d{3}-\d{2}$/i;
   if(!filtro.test(cpf)){
	 return false;
   }

   cpf = remove(cpf, ".");
   cpf = remove(cpf, "-");

   if(cpf == "00000000000" || cpf == "11111111111" ||
	  cpf == "22222222222" || cpf == "33333333333" || cpf == "44444444444" ||
	  cpf == "55555555555" || cpf == "66666666666" || cpf == "77777777777" ||
	  cpf == "88888888888" || cpf == "99999999999"){
	  return false;
   }

   soma = 0;
   for(i = 0; i < 9; i++)
   	 soma += parseInt(cpf.charAt(i)) * (10 - i);
   resto = 11 - (soma % 11);
   if(resto == 10 || resto == 11)
	 resto = 0;
   if(resto != parseInt(cpf.charAt(9))){
	 return false;
   }
   soma = 0;
   for(i = 0; i < 10; i ++)
	 soma += parseInt(cpf.charAt(i)) * (11 - i);
   resto = 11 - (soma % 11);
   if(resto == 10 || resto == 11)
	 resto = 0;
   if(resto != parseInt(cpf.charAt(10))){
	 return false;
   }
   return true;
 }

 function remove(str, sub) {
   i = str.indexOf(sub);
   r = "";
   if (i == -1) return str;
   r += str.substring(0,i) + remove(str.substring(i + sub.length), sub);
   return r;
 }



$(document).ready(function() {

    $(".obrigatorio input").blur(function(){
        var erro = false;
        var valor_input = $(this).attr("value");
        var valor_extencao = valor_input.length;
        var label_pai = $(this).closest(".obrigatorio");

       if(label_pai.attr("min")!=""){
           if(valor_extencao < label_pai.attr("min")){
                var erro = true;
                var erro_pt = "Este campo deve ter no mínimo "+label_pai.attr("min")+" caracteres";
                var erro_en = "This input must be at least "+label_pai.attr("min")+" caracters long";
           };
        }
        if(label_pai.attr("tipo")=="nome"){
            if(valor_input.indexOf(" ")==-1){
                var erro = true;
                var erro_pt = "Você deve digitar o seu nome completo.";
                var erro_en = "No Complete Name";
            }
        }

        if(label_pai.attr("tipo")=="cpf"){
          if($(".label_pais select").attr("value")=="BRA"){
            if(validarCPF(valor_input)==false){
                var erro = true;
                var erro_pt = "CPF Inválido"
                var erro_en = "ID Card Invalid"
            }
          }
        }

        if(label_pai.attr("tipo")=="email"){
            if (((valor_input.indexOf("@") < 1) || (valor_input.indexOf('.') < 7))){
              var erro = true;
              var erro_pt = "Email Inválido";
              var erro_en = "Invalid Email";
            }
        }

        if(label_pai.attr("tipo")=="resenha"){
            if ($("[tipo=senha] input").attr("value") != valor_input){
              var erro = true;
              var erro_pt = "A senhas não coincidem";
              var erro_en = "Password must be the same";
            }
        }

         if(valor_extencao==0){
            var erro = true;
            var erro_pt = "Campo Obrigatório";
            var erro_en = "Obrigatory"
        };

        if(erro==true){
            label_pai.addClass("label_erro");
            $(".erro_pt", label_pai).html(erro_pt);
            $(".erro_en", label_pai).html(erro_en);
        }else{
            label_pai.removeClass("label_erro");
            $(".erro_pt", label_pai).html("");
            $(".erro_en", label_pai).html("");
        };

    });


});     