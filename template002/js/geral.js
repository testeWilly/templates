//Coloca a informações no input da busca
jQuery(document).ready(function(){

    jQuery.fn.extend({limpa_input:function(valorDefault){
        if($(this).attr('value')==valorDefault){
            $(this).attr("value","");
        };
    }});

    jQuery.fn.extend({restaura_input:function(valorDefault){
        if($(this).attr('value')==""){
            $(this).attr('value',valorDefault);
        };
    }});

     $(".busca_topo input").attr('value', 'o que você procura?');
     $(".busca_topo input").focus(function(){$(this).limpa_input("o que você procura?");});
     $(".busca_topo input").blur(function(){$(this).restaura_input("o que você procura?");});

     $(".news_nome input").attr('value', 'NOME');
     $(".news_nome input").focus(function(){$(this).limpa_input("NOME");});
     $(".news_nome input").blur(function(){$(this).restaura_input("NOME");});

     $(".news_email input").attr('value', 'EMAIL');
     $(".news_email input").focus(function(){$(this).limpa_input("EMAIL");});
     $(".news_email input").blur(function(){$(this).restaura_input("EMAIL");});

// Comentário Produto 

       $(".comentario_nome input").attr('value', 'Nome');
       $(".comentario_nome input").focus(function(){$(this).limpa_input("Nome");});
       $(".comentario_nome input").blur(function(){$(this).restaura_input("Nome");});

       $(".comentario_email input").attr('value', 'Email');
       $(".comentario_email input").focus(function(){$(this).limpa_input("Email");});
       $(".comentario_email input").blur(function(){$(this).restaura_input("Email");});       

       $(".comentario_cidade input").attr('value', 'Cidade');
       $(".comentario_cidade input").focus(function(){$(this).limpa_input("Cidade");});
       $(".comentario_cidade input").blur(function(){$(this).restaura_input("Cidade");});              

       $(".comentario_estado input").attr('value', 'Estado');
       $(".comentario_estado input").focus(function(){$(this).limpa_input("Estado");});
       $(".comentario_estado input").blur(function(){$(this).restaura_input("Estado");});              

       $(".comentario_msg textarea").attr('value', 'Comentário');
       $(".comentario_msg textarea").focus(function(){$(this).limpa_input("Comentário");});
       $(".comentario_msg textarea").blur(function(){$(this).restaura_input("Comentário");}); 
        // Indique Produto

       $(".indique_nome input").attr('value', 'Seu nome');
       $(".indique_nome input").focus(function(){$(this).limpa_input("Seu nome");});
       $(".indique_nome input").blur(function(){$(this).restaura_input("Seu nome");});

       $(".indique_email input").attr('value', 'Seu email');
       $(".indique_email input").focus(function(){$(this).limpa_input("Seu email");});
       $(".indique_email input").blur(function(){$(this).restaura_input("Seu email");});       

       $(".indique_nome_amigo input").attr('value', 'nome do amigo');
       $(".indique_nome_amigo input").focus(function(){$(this).limpa_input("nome do amigo");});
       $(".indique_nome_amigo input").blur(function(){$(this).restaura_input("nome do amigo");});       

       $(".indique_email_amigo input").attr('value', 'email do amigo');
       $(".indique_email_amigo input").focus(function(){$(this).limpa_input("email do amigo");});
       $(".indique_email_amigo input").blur(function(){$(this).restaura_input("email do amigo");});      

       $(".indique_msg textarea").attr('value', 'Mensagem');
       $(".indique_msg textarea").focus(function(){$(this).limpa_input("Mensagem");});
       $(".indique_msg textarea").blur(function(){$(this).restaura_input("Mensagem");}); 

});

$(function(){
    $('a[href=#topo]').click(function(){
        $('html, body').animate({scrollTop:0}, 'slow');
        return false;
});
});