<script language="javascript">
    function AlteraValorCombo(object)
    {
        var indexSelect = object.options[object.selectedIndex].text;
        document.getElementById('HTurnoEntrega').Value = object.options[object.selectedIndex].text;
        var botoes = document.getElementsByName("btnFinalizar");
       		 
        var radio = document.getElementsByTagName("input");
        for(i=0; i<radio.length; i++){
            if (radio[i].getAttribute("type") == "radio" && radio[i].checked == true){
                radio[i].click();
            }
        }
    }
</script>