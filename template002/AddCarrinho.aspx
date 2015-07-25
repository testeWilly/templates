<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCarrinho.aspx.cs" Inherits="CiaShop.Loja.Assets.Templates._1.AddCarrinho" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="css/espiar.css" type="text/css" />
</head>
<body>
<form id="form2" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<div id="conteudo">
       <ciac:comprardireto id="ComprarDireto" runat="server"></ciac:comprardireto>
    </div>
</form>
</body>
</html>