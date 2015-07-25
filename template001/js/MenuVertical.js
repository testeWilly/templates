$(document).ready(function(){
    $(".depts_filho").css("display","none");
    $(".depts_filho:last").addClass("last");
    $("#menu_lateral .menu_pai").click(function(){
        if($(this).parent("li").find(".depts_filho").size()>0){
          if($(this).attr("class")!="menu_pai ativo"){
              $("#menu_lateral .menu_pai").removeClass("ativo");
              $("#menu_lateral .depts_filho").slideUp("normal");
              $(this).next("#menu_lateral .depts_filho").slideDown("normal");
              $(this).addClass("ativo");
              return(false);
          };
        }else{
            return(true);
        };
    });
});