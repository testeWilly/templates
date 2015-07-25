<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LojaFechada.aspx.cs" Inherits="CiaShop.Loja.LojaFechada" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Loja Fechada</title>
      <style>
    body{
      margin: 0;
      padding: 0;
    }

    .tab_pag{
      width: 100%;
      height: 100%;
      text-align: center;
    }

    .div_info{
      width: 100%;
      background: url('imagens/bg_pag.jpg') repeat-x left top;
      margin-top: -20px;

    }

    .div_info_conteudo{
      margin: 0 auto;
      width: 770px;
      height: auto;
      font-family: arial;

    }

    .mensagem{
      color: #3d3d3d;
      font-size: 15px;
      line-height: 20px;
      text-align: center;
      border: none;
      background: #none;
      padding: 8px 5px;
      margin-top: 10px;

    }

  </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" class="tab_pag">
        <tr>
            <td>
                <div class="div_info">
                    <div class="div_info_conteudo">
                        <img src="imagens/topo_info.jpg" alt="Pagamento" />
                        <div class="mensagem">
                            Prezado cliente, a loja estará fechada por alguns minutos<br />para atualizações no sistema. <br />
                            <strong>Agradecemos sua compreensão!</strong>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
