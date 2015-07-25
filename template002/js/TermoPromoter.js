
     function AbrirModalPromoter() {
            if (document.getElementById("chkPromoter") != null) 
            {
                var chkPromoter = document.getElementById("chkPromoter");
                chkPromoter.checked = false;
            }
            $.colorbox({ open: true, width: "780px", inline: true, href: "#box_TermoPromoter", onLoad: function () {
                $('#cboxClose').remove();
            }
            });
        }


        function verificar() 
        {
            if(document.getElementById("chkTermoAcCheckBoxPromoter") != null && document.getElementById("chkPromoter") != null )
            {
                var chkTermoAceite = document.getElementById("chkTermoAcCheckBoxPromoter");
                var chkPromoter = document.getElementById("chkPromoter"); 
                if (chkTermoAceite.checked == true) 
                {
                    chkPromoter.checked = true;
                }
                else 
                {
                    chkPromoter.checked = false;
                }
           
                 $.fn.colorbox.close();
            }
        }
