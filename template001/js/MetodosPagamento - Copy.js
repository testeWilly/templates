<script language="javascript">
function alteraFinalizar(categoria, metodo, idioma){
    var botoes = document.getElementsByName("btnFinalizar");
    var parcelas = 1;
    
    if(document.getElementById('ddlParcelas_' + metodo + '_' + idioma))
        parcelas = document.getElementById('ddlParcelas_' + metodo + '_' + idioma)[document.getElementById('ddlParcelas_' + metodo + '_' + idioma).selectedIndex].value;
    
   
    if (document.getElementById('HTurnoEntrega').Value == null)
    {
        document.getElementById('HTurnoEntrega').Value = "Manhã";
    }
  
    var ddlTurnoEntrega = document.getElementById('ddlTurnoEntrega');
  
    if (ddlTurnoEntrega == null){
        var evento = "javascript:__doPostBack('btnFinalizarCompra_" + categoria + "_" + metodo + "_" + idioma + "_" + parcelas + "');";
    }
    else
    {
        var evento = "javascript:__doPostBack('btnFinalizarCompra_" + categoria + "_" + metodo + "_" + idioma + "_" + parcelas + "','" + ddlTurnoEntrega.options[ddlTurnoEntrega.selectedIndex].text + "');";
    }
    

	for(var i = 0; i < botoes.length; i++)
		botoes.item(i).href = evento;
		
	if(document.getElementById('radMetodo_' + metodo + '_' + idioma))		
		document.getElementById('radMetodo_' + metodo + '_' + idioma).checked = true;


    var regexUrl = new RegExp("#\d{1,2}_\w{1,4}", "ig");
    var url =  window.location.href.replace(regexUrl, '');

    window.top.location.href = url + "#" + metodo + "_" + idioma;
}
</script>