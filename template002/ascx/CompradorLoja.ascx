<%@ Control Language="C#" AutoEventWireup="true" Inherits="Ciashop.Privada.Componente.Loja.CompradorLoja" %>
<%@ Register Assembly="Ciashop.Privada.Componente" Namespace="Ciashop.Privada.Componente.Loja" TagPrefix="CiaC" %>

<asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
<CiaC:CaixaAguardeLoja ID="CaixaAguardeLoja" runat="server" />

<asp:UpdatePanel ID="UpdatePanelComprador" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
       
        <ajax:ValidatorCalloutExtender ID="ValidatorNome" runat="server" TargetControlID="RFVNome" Enabled="True"></ajax:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RFVNome" runat="server" ControlToValidate="txtNome" ErrorMessage="." Display="None" meta:resourcekey="RFVNomeResource1"></asp:RequiredFieldValidator>
       
        <ajax:ValidatorCalloutExtender ID="ValidatorEmail" runat="server" TargetControlID="RFVEmail" Enabled="True"></ajax:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RFVEmail" runat="server"  ControlToValidate="txtEmail" ErrorMessage="Campo Email n?o pode ficar em branco." Display="None" meta:resourcekey="RFVEmailResource1"></asp:RequiredFieldValidator>
        
        <ajax:ValidatorCalloutExtender ID="ValidatorEndereco" runat="server" TargetControlID="RFVEndereco" Enabled="True"></ajax:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RFVEndereco" runat="server" ControlToValidate="txtEndereco" ErrorMessage="Campo endere?o n?o pode ficar em branco." Display="None" meta:resourcekey="RFVEnderecoResource1"></asp:RequiredFieldValidator>
       
        <ajax:ValidatorCalloutExtender ID="ValidatorBairro" runat="server" TargetControlID="RFVBairro" Enabled="True"></ajax:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RFVBairro" runat="server" ControlToValidate="txtBairro" ErrorMessage="Campo bairro n?o pode ficar em branco." Display="None" meta:resourcekey="RFVBairroResource1"></asp:RequiredFieldValidator>
       
        <ajax:ValidatorCalloutExtender ID="ValidatorCidade" runat="server" TargetControlID="RFVCidade" Enabled="True"></ajax:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RFVCidade" runat="server" ControlToValidate="txtCidade" ErrorMessage="Campo cidade n?o pode ficar em branco." Display="None" meta:resourcekey="RFVCidadeResource1"></asp:RequiredFieldValidator>
        
        <ajax:ValidatorCalloutExtender ID="ValidatorDDDTelefone1" runat="server" TargetControlID="RFVDDDTelefone1" Enabled="True"></ajax:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RFVDDDTelefone1" runat="server" ControlToValidate="txtDDDTelefone1" ErrorMessage="Campo DDD n?o pode ficar em branco." Display="None" meta:resourcekey="RFVDDDTelefone1Resource1"></asp:RequiredFieldValidator>
        
        <ajax:ValidatorCalloutExtender ID="ValidatorTelefone1" runat="server" TargetControlID="RFVTelefone1" Enabled="True"></ajax:ValidatorCalloutExtender>
        <asp:RequiredFieldValidator ID="RFVTelefone1" runat="server" ControlToValidate="txtTelefone1" ErrorMessage="Campo telefone n?o pode ficar em branco." Display="None" meta:resourcekey="RFVTelefone1Resource1"></asp:RequiredFieldValidator>
        
        <div id="CompradorLoja">
            <!--In?cio da tabela formul?rio de cadastro -->
            <div align="center">
                <table border="0" cellspacing="0" cellpadding="0" class="tab_interna" width="620">
                    <tr>
                        <th style="background-image:url(Assets/Templates/1/imagens/tab_bg.gif);background-position:top left;background-repeat:repeat-x;">
                            <asp:Image ID="imgFormSuperior" runat="server" ImageUrl="~/Assets/Templates/1/imagens/tit_formcadastro.gif" CssClass="img_left" HSpace="0"/>
                            <asp:Image id="imgFormSupDir1" runat="server" ImageUrl="~/Assets/Templates/1/imagens/tab_dir.gif" CssClass="img_right" HSpace="0" />
                        </th>
                    </tr>
                    <tr>
                        <td style="padding:5px;">
                            <!-- inicio da tabela de Dados pessoais -->
                            <asp:UpdatePanel ID="updatePanelDadosPessoais" runat="server">
                                <ContentTemplate>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tab_interna3">
                                        <tr>
                                            <td>
                                                <p><ciaL:CSLLabel ID="lblPaisAsterisco" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel1Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                <b><ciaL:CSLLabel ID="lblPais" runat="server" Text="Pa&#237;s" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblPaisResource1">Pa&#237;s</ciaL:CSLLabel></b></p>
                                            </td>
                                            <td>
                                                <asp:Panel ID="pnl_lblIdioma" runat="server">
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td align="right">
                                                                <p><b><ciaL:CSLLabel ID="lblIdioma" runat="server" Text="Idioma" TipoDados="ALFA_NUMERICO" Width="60px" meta:resourcekey="lblIdiomaResource1">Idioma</ciaL:CSLLabel></b></p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="ddlPais" runat="server" Width="188px" AutoPostBack="True" OnSelectedIndexChanged="ddlPais_SelectedIndexChanged" meta:resourcekey="ddlPaisResource1"></asp:DropDownList> 
                                            </td>
                                            <td>
                                                <asp:Panel ID="pnl_rblIdioma" runat="server">
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td align="right">
                                                                <asp:ImageButton ID="imbBan_pt" runat="server" ImageAlign="Middle" ImageUrl="~/Assets/Templates/1/imagens/ban_pt.gif" CommandArgument="pt-BR" OnClick="imbBan_pt_Click"/>
                                                                <asp:ImageButton ID="imbBan_en" runat="server" ImageAlign="Middle" ImageUrl="~/Assets/Templates/1/imagens/ban_en.gif" CommandArgument="en-US" OnClick="imbBan_en_Click"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Panel ID="pnlTipoPessoa" runat="server">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tab_interna3">
                                                        <tr>
                                                            <td colspan="2">
                                                                <p><ciaL:CSLLabel ID="CSLLabel02" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel2Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                                <b><ciaL:CSLLabel ID="lblTipoPessoa" runat="server" Text="Tipo de Pessoa" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblTipoPessoaResource1">Tipo de Pessoa</ciaL:CSLLabel></b></p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:RadioButtonList ID="rbtTipoPessoa" runat="server" RepeatDirection="Horizontal" Width="542px" meta:resourcekey="rbtTipoPessoaResource1" AutoPostBack="True" OnSelectedIndexChanged="rbtTipoPessoa_SelectedIndexChanged">
                                                                    <asp:ListItem Value="F" meta:resourcekey="ListItemResource1" Text="Pessoa F&#237;sica"></asp:ListItem>
                                                                    <asp:ListItem Value="J" meta:resourcekey="ListItemResource2" Text="Pessoa Jur&#237;dica"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <ciaL:CSLLabel ID="CSLLabel03" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel3Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                <b><ciaL:CSLLabel ID="lblNomeCompleto" runat="server" Text="Nome Completo" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblNomeCompletoResource1">Nome Completo</ciaL:CSLLabel></b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <ciaL:CSLTextBox ID="txtNome" runat="server" Width="543px" MaxLength="100" ComportamentoInteiro="False" QuantidadeMaximaNumeros="10" TipoDados="ALFA_NUMERICO" meta:resourcekey="txtNomeResource1"></ciaL:CSLTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <ciaL:CSLLabel ID="CSLLabel04" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel4Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                <b><ciaL:CSLLabel ID="lblEmail" runat="server" Text="E-mail" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblEmailResource1">E-mail</ciaL:CSLLabel></b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <ciaL:CSLTextBox ID="txtEmail" runat="server" Width="400px" MaxLength="100" ComportamentoInteiro="False" QuantidadeMaximaNumeros="10" TipoDados="ALFA_NUMERICO" meta:resourcekey="txtEmailResource1" OnTextChanged="txtEmail_TextChanged" AutoPostBack="true"></ciaL:CSLTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Panel ID="pnlCadastroSenhas" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="pnlLinkSenhaAnterior" runat="server">
                                                                    <asp:LinkButton ID="lnkExibeSenhaAnterior" runat="server" Text="Desejo alterar a senha." OnClick="lnkExibeSenhaAnterior_Click" Font-Bold="true" meta:resourcekey="lnkExibeSenhaAnteriorResource1"></asp:LinkButton>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="pnlSenhaAnterior" runat="server">
                                                                    <table>
                                                                        <tr>
                                                                            <b><ciaL:CSLLabel ID="lblAlterarSenha" runat="server" Text="Senha anterior" tipodados="ALFA_NUMERICO" meta:resourcekey="lblAlterarSenhaResource1">Senha anterior</ciaL:CSLLabel></b><br />
                                                                        </tr>
                                                                        <tr>
                                                                            <ciaL:CSLTextBox ID="txtSenhaAnterior" runat="server" TextMode="Password" MaxLength="20" comportamentointeiro="False" quantidademaximanumeros="20" tipodados="ALFA_NUMERICO" meta:resourcekey="txtSenhaAnteriorResource1"></ciaL:CSLTextBox>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="pnlNovaSenha" runat="server">
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td>
                                                                                <ciaL:CSLLabel ID="CSLLabel05" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel5Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                                                <b><ciaL:CSLLabel ID="lblSenha" runat="server" Text="Nova senha" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblSenhaResource1">Nova senha</ciaL:CSLLabel></b>
                                                                            </td>
                                                                            <td>
                                                                                <ciaL:CSLLabel ID="CSLLabel06" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel6Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                                                <b><ciaL:CSLLabel ID="lblSenhaConfirma" runat="server" Text="Confirma senha" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblSenhaConfirmaResource1">Confirma senha</ciaL:CSLLabel></b>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <ciaL:CSLTextBox ID="txtSenha" runat="server" TextMode="Password" MaxLength="20" ComportamentoInteiro="False" QuantidadeMaximaNumeros="20" TipoDados="ALFA_NUMERICO" meta:resourcekey="txtSenhaResource1"></ciaL:CSLTextBox>
                                                                            </td>
                                                                            <td>
                                                                                <ciaL:CSLTextBox ID="txtConfirmaSenha" runat="server" TextMode="Password" MaxLength="20" ComportamentoInteiro="False" QuantidadeMaximaNumeros="20" TipoDados="ALFA_NUMERICO" meta:resourcekey="txtConfirmaSenhaResource1"></ciaL:CSLTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2">
                                                                                <p><ciaL:CSLLabel ID="lblInfoSenha" runat="server" Text="A senha deve ter mais de 4 caracteres. N&#227;o esque&#231;a de anotar a senha" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblInfoMailResource1">A senha deve ter mais de 4 caracteres. N&#227;o esque&#231;a de anotar a senha</ciaL:CSLLabel></p>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="pnlSalvarSenha" runat="server">
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Button ID="btnSalvarSenha" runat="server" Text="Alterar senha" OnClick="btnSalvarSenha_Click" meta:resourcekey="btnSalvarSenhaResource1" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>                           
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <ciaL:CSLLabel ID="CSLLabel07" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel7Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                <b>
                                                    <ciaL:CSLLabel ID="lblProfissao" runat="server" Text="Profiss&#227;o" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblProfissaoResource1">Profiss&#227;o</ciaL:CSLLabel>
                                                    <ciaL:CSLLabel ID="lblRamo" runat="server" Text="Ramo" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblRamoResource1">Ramo</ciaL:CSLLabel>
                                                </b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <ciaL:CSLTextBox ID="txtProfissao" runat="server" Width="400px" MaxLength="100" ComportamentoInteiro="False" QuantidadeMaximaNumeros="10" TipoDados="ALFA_NUMERICO" meta:resourcekey="txtProfissaoResource1"></ciaL:CSLTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Panel ID="pnlPessoaFisica" runat="server">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tab_interna3">
                                                        <tr>
                                                            <td>
                                                                <ciaL:CSLLabel ID="CSLLabel08" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel8Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                                <b><ciaL:CSLLabel ID="lblDataNasc" runat="server" Text="Data de Nascimento" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblDataNascResource1">Data de Nascimento</ciaL:CSLLabel></b>
                                                            </td>
                                                            <td>
                                                                <ciaL:CSLLabel ID="CSLLabel09" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel9Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                                <b><ciaL:CSLLabel ID="lblSexo" runat="server" Text="Sexo" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblSexoResource1">Sexo</ciaL:CSLLabel></b>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <ciaL:CSLCalendario ID="txtDataNasc" runat="server" Style="width:71px;" ExibeHora="false" FormatoDataHora="%d/%m/%Y" PermiteDigitar="true"></ciaL:CSLCalendario>
                                                                <ciaL:CSLLabel ID="lblExemploData" runat="server" Text="Ex: 20/05/2005" Font-Size="8pt" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblExemploDataResource1"></ciaL:CSLLabel>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlSexo" runat="server" Width="100px" meta:resourcekey="ddlSexoResource1">
                                                                    <asp:ListItem Value="F" meta:resourcekey="ListItemResource3">Feminino</asp:ListItem>
                                                                    <asp:ListItem Value="M" meta:resourcekey="ListItemResource4">Masculino</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <b><ciaL:CSLLabel ID="lblEstadoCivil" runat="server" Text="Estado Civil" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblEstadoCivilResource1">Estado Civil</ciaL:CSLLabel></b>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlEstadoCivil" runat="server" meta:resourcekey="ddlEstadoCivilResource1"></asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <ciaL:CSLLabel ID="CSLLabel10" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel10Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                                <b><ciaL:CSLLabel ID="lblCPF" runat="server" Text="CPF" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblCPFResource1">CPF</ciaL:CSLLabel></b>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <ciaL:CSLMaskedTextBox ID="txtCPF" runat="server" LimpaMascaraForaDeFoco="True" TipoMascara="Number" Mascara="99999999999999999999" CssClassTxtBox="" ExpressaoRegularValidacao="" MensagemErro="*" Text="" Width=""></ciaL:CSLMaskedTextBox>
                                                                <span><ciaL:CSLLabel ID="lblInformaCPF" runat="server" Text="Somente N&#250;meros" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblInformaCPFResource1">Somente N&#250;meros</ciaL:CSLLabel></span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <b><ciaL:CSLLabel ID="lblRG" runat="server" Text="RG" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblRGResource1">RG</ciaL:CSLLabel></b>
                                                            </td>
                                                            <td>
                                                                <b><ciaL:CSLLabel ID="lblRGEmissor" runat="server" Text="Estado Emissor" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblRGEmissorResource1">Estado Emissor</ciaL:CSLLabel></b>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <ciaL:CSLMaskedTextBox ID="txtRG" runat="server" LimpaMascaraForaDeFoco="True" TipoMascara="Number" Mascara="99999999999999999999" CssClassTxtBox="" ExpressaoRegularValidacao="" MensagemErro="*" Text="" Width=""></ciaL:CSLMaskedTextBox>
                                                                <span><ciaL:CSLLabel ID="lblInformaRG" runat="server" Text="Somente N&#250;meros" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblInformaRGResource1">Somente N&#250;meros</ciaL:CSLLabel></span>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlEstadoEmissor" runat="server" Width="150px" meta:resourcekey="ddlEstadoEmissorResource1" ></asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <asp:Panel ID="pnlPessoaJuridica" runat="server">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tab_interna3">
                                                        <tr>
                                                            <td>
                                                                <p><ciaL:CSLLabel ID="CSLLabel11" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel1Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                                <b><ciaL:CSLLabel ID="lblCnpj" runat="server" Text="CNPJ" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblCnpjResource1">CNPJ</ciaL:CSLLabel></b>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <ciaL:CSLMaskedTextBox ID="txtCNPJ" runat="server" LimpaMascaraForaDeFoco="True" TipoMascara="Number" Mascara="99999999999999999999" CssClassTxtBox="" ExpressaoRegularValidacao="" MensagemErro="*" Text="" Width="" meta:resourcekey="txtCNPJResource1"></ciaL:CSLMaskedTextBox>
                                                                <span><ciaL:CSLLabel ID="lblInformaCnpj" runat="server" Text="Somente N&#250;meros" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblInformaCnpjResource1">Somente N&#250;meros</ciaL:CSLLabel></span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <p><ciaL:CSLLabel ID="CSLLabel12" runat="server" Text="*" ForeColor="Red" meta:resourcekey="CSMLabel1Resource1" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                                <b><ciaL:CSLLabel ID="lblInscricaoEstadual" runat="server" Text="Inscri&#231;&#227;o Estadual" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblInscricaoEstadualResource1">Inscri&#231;&#227;o Estadual</ciaL:CSLLabel></b>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <ciaL:CSLMaskedTextBox ID="txtInscricaoEstadual" runat="server" LimpaMascaraForaDeFoco="True" TipoMascara="Number" Mascara="99999999999999999999" CssClassTxtBox="" ExpressaoRegularValidacao="" MensagemErro="*" Text="" Width=""></ciaL:CSLMaskedTextBox>
                                                                <span><ciaL:CSLLabel ID="lblInformaInscricaoEstadual" runat="server" Text="Somente N&#250;meros" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblInformaInscricaoEstadualResource1">Somente N&#250;meros</ciaL:CSLLabel></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- fim da tabela de dados pessoais -->
                                </ContentTemplate>
                                <Triggers>
                                    <asp:PostBackTrigger ControlID="ddlPais" />
                                    <asp:PostBackTrigger ControlID="imbBan_pt" />
                                    <asp:PostBackTrigger ControlID="imbBan_en" />
                                    <asp:PostBackTrigger ControlID="lnkExibeSenhaAnterior" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <th style="background-image:url(Assets/Templates/1/imagens/tab_bg_inf.gif);">
                            <asp:Image id="imgBordaEsquerda1" runat="server" ImageUrl="~/Assets/Templates/1/imagens/tab_esq_inf.gif" CssClass="img_left" HSpace="0" />
                            <asp:image id="imgBordaDireita1" runat="server" ImageUrl="~/Assets/Templates/1/imagens/tab_dir_inf.gif" CssClass="img_right" HSpace="0" />
                        </th>
                    </tr>
                </table>  
                <br />
                <!-- Formulario de Endereco -->
                <table border="0" cellspacing="0" cellpadding="0" class="tab_interna" width="620">
                    <tr>
                        <th style="background-image:url(Assets/Templates/1/imagens/tab_bg.gif);background-position:top left;background-repeat:repeat-x;">
                            <asp:Image ID="imgFormEnd" runat="server" ImageUrl="~/Assets/Templates/1/imagens/tit_enderecoentrega.gif" CssClass="img_left" HSpace="0"/>
                            <asp:Image id="imgFormSupDir2" runat="server" ImageUrl="~/Assets/Templates/1/imagens/tab_dir.gif" CssClass="img_right" HSpace="0" />
                        </th>
                    </tr>
                    <tr>
                        <td style="padding:5px;">
                            <!-- inicio da tabela de endereco -->
                            <asp:UpdatePanel ID="updatePanelDadosEndereco" runat="server">
                                <ContentTemplate>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tab_interna3">
                                        <tr>
                                            <td colspan="2">
                                                <table border="0" width="100%" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td>
                                                            <asp:Image ID="imgCEP" runat="server" ImageUrl="~/Assets/Templates/1/imagens/cep.gif" />
                                                            <ciaL:CSLLabel ID="CSLLabel13" runat="server" Text="*" ForeColor="Red" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                        </td>
                                                        <td>
                                                            <ciaL:CSLMaskedTextBox ID="txtCep" runat="server" LimpaMascaraForaDeFoco="False" Mascara="99999-999" TipoMascara="None"  CssClassTxtBox="" ExpressaoRegularValidacao="" MensagemErro="" Text="" Width="100px"></ciaL:CSLMaskedTextBox>
                                                        </td>
                                                        <td>
                                                            <ciaL:CSLLabel ID="lblInformCep" runat="server" Text="Ex: 81150-200" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblInformCepResource1" >Ex: 81150-200</ciaL:CSLLabel>
                                                            <br />
                                                            <ciaL:CSLLabel ID="lblEsqueceuCEP" runat="server" Text="Esqueceu seu CEP?" TipoDados="ALFA_NUMERICO"  meta:resourcekey="lblEsqueceuCEPResource1">Esqueceu seu CEP?</ciaL:CSLLabel>
                                                            <a id="A1" href="http://www.correios.com.br/servicos/cep/cep_default.cfm" runat="server" target="_blank">
                                                                <ciaL:CSLLabel ID="lblCliqueAqui" runat="server" Text="Clique aqui." meta:resourcekey="lblCliqueAquiResource1"></ciaL:CSLLabel>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 390px">
                                                <ciaL:CSLLabel ID="CSLLabel14" runat="server" Text="*" ForeColor="Red" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                <b><ciaL:CSLLabel ID="lblEndereco" runat="server" Text="Endere&#231;o" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblEnderecoResource1">Endere&#231;o</ciaL:CSLLabel></b>
                                            </td>
                                            <td>
                                                <ciaL:CSLLabel ID="CSLLabel15" runat="server" Text="*" ForeColor="Red" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                <b><ciaL:CSLLabel ID="lblNumero" runat="server" Text="N&#250;mero" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblNumeroResource1">N&#250;mero</ciaL:CSLLabel></b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 390px">
                                                <ciaL:CSLTextBox ID="txtEndereco" runat="server" Width="380px" MaxLength="200" ComportamentoInteiro="False" QuantidadeMaximaNumeros="10" TipoDados="ALFA_NUMERICO"></ciaL:CSLTextBox>
                                            </td>
                                            <td>
                                                <ciaL:CSLMaskedTextBox ID="txtNumero" runat="server" Width="70px" LimpaMascaraForaDeFoco="True" TipoMascara="Number" Mascara="9999999999" CssClassTxtBox="" ExpressaoRegularValidacao="" MensagemErro="*" Text=""></ciaL:CSLMaskedTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 390px">
                                            <b><ciaL:CSLLabel ID="lblComplemento" runat="server" Text="Complemento" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblComplementoResource1">Complemento</ciaL:CSLLabel></b>
                                        </td>
                                        <td>
                                            <ciaL:CSLLabel ID="CSLLabel16" runat="server" Text="*" ForeColor="Red" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                            <b><ciaL:CSLLabel ID="lblBairro" runat="server" Text="Bairro" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblBairroResource1">Bairro</ciaL:CSLLabel></b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 390px">
                                            <ciaL:CSLTextBox ID="txtComplemento" runat="server" Width="380px" ComportamentoInteiro="False" QuantidadeMaximaNumeros="10" TipoDados="ALFA_NUMERICO"></ciaL:CSLTextBox>
                                        </td>
                                        <td>
                                            <ciaL:CSLTextBox ID="txtBairro" runat="server" Width="150px" MaxLength="50" ComportamentoInteiro="False" QuantidadeMaximaNumeros="10" TipoDados="ALFA_NUMERICO"></ciaL:CSLTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 390px">
                                            <ciaL:CSLLabel ID="CSLLabel17" runat="server" Text="*" ForeColor="Red" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                            <b><ciaL:CSLLabel ID="lblCidade" runat="server" Text="Cidade" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblCidadeResource1">Cidade</ciaL:CSLLabel></b>
                                        </td>
                                        <td>
                                            <asp:Panel ID="pnl_lblEnderecoNacional" runat="server">
                                                <ciaL:CSLLabel ID="CSLLabel18" runat="server" Text="*" ForeColor="Red" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                                <b><ciaL:CSLLabel ID="lblEstado" runat="server" Text="Estado" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblEstadoResource1">Estado</ciaL:CSLLabel></b>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 390px">
                                            <ciaL:CSLTextBox ID="txtCidade" runat="server" MaxLength="100" ComportamentoInteiro="False" QuantidadeMaximaNumeros="10" TipoDados="ALFA_NUMERICO"></ciaL:CSLTextBox>
                                        </td>
                                        <td>
                                            <asp:Panel ID="pnl_ddlEnderecoNacional" runat="server">
                                                <asp:DropDownList ID="ddlEstado" runat="server" Width="150px"></asp:DropDownList>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <b><ciaL:CSLLabel ID="lblReferencia" runat="server" Text="Refer&#234;ncia" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblReferenciaResource1">Refer&#234;ncia</ciaL:CSLLabel></b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <ciaL:CSLTextBox ID="txtReferencia" runat="server" ComportamentoInteiro="False" QuantidadeMaximaNumeros="10" TipoDados="ALFA_NUMERICO"></ciaL:CSLTextBox> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <ciaL:CSLLabel ID="CSLLabel19" runat="server" Text="*" ForeColor="Red" TipoDados="ALFA_NUMERICO"></ciaL:CSLLabel>
                                            <b><ciaL:CSLLabel ID="lblTelefone1" runat="server" Text="Telefone 1" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblTelefone1Resource1" >Telefone 1</ciaL:CSLLabel></b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <ciaL:CSLTextBox ID="txtDDDTelefone1" runat="server" QuantidadeMaximaNumeros="5" MaxLength="5" TipoDados="NUMEROS_INTEIROS"  Width="47px" ComportamentoInteiro="False"></ciaL:CSLTextBox>
                                            <ciaL:CSLTextBox ID="txtTelefone1" runat="server" QuantidadeMaximaNumeros="15" MaxLength="15" ComportamentoInteiro="False" TipoDados="NUMEROS_INTEIROS"></ciaL:CSLTextBox>
                                            <ciaL:CSLLabel ID="lblExTel1" runat="server" Text="Ex. DDD + Telefone fixo (OBRIGAT&#211;RIO)." TipoDados="ALFA_NUMERICO" meta:resourcekey="lblExTel1Resource1">Ex. DDD + Telefone fixo (OBRIGAT&#211;RIO).</ciaL:CSLLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <b><ciaL:CSLLabel ID="lblTelefone2" runat="server" Text="Telefone 2" TipoDados="ALFA_NUMERICO" meta:resourcekey="lblTelefone2Resource1">Telefone 2</ciaL:CSLLabel></b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <ciaL:CSLTextBox ID="txtDDDTelefone2" runat="server" QuantidadeMaximaNumeros="5" MaxLength="5" TipoDados="NUMEROS_INTEIROS" Width="46px" ComportamentoInteiro="False"></ciaL:CSLTextBox>
                                            <ciaL:CSLTextBox ID="txtTelefone2" runat="server" QuantidadeMaximaNumeros="15" MaxLength="15" ComportamentoInteiro="False" TipoDados="NUMEROS_INTEIROS"></ciaL:CSLTextBox>
                                            <ciaL:CSLLabel ID="lblExTel2" runat="server" Text="Ex. DDD + Telefone Alternativo.&lt;br&gt;(Celular ou Comercial)." TipoDados="ALFA_NUMERICO" meta:resourcekey="lblExTel2Resource1">Ex. DDD + Telefone Alternativo.&lt;br&gt;(Celular ou Comercial).</ciaL:CSLLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:CheckBox ID="chkReceber" runat="server" />
                                            <ciaL:CSLLabel ID="lblReceber" runat="server" meta:resourcekey="lblReceberResource1" Text="Gostaria de receber E-mail informando sobre lan&#231;amentos e promo&#231;&#245;es da Loja." TipoDados="ALFA_NUMERICO">Gostaria de receber E-mail informando sobre lan&#231;amentos<br />e promo&#231;&#245;es da Loja.</ciaL:CSLLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <ciaL:CSLLabel ID="lblInfoGeral" runat="server" Font-Bold="True" meta:resourcekey="lblInfoGeralResource1" Text="Obs: Os campos iniciados com asterisco (*) s&#227;o campos de preenchimento obrigat&#243;rio." TipoDados="ALFA_NUMERICO">Obs: Os campos iniciados com asterisco (*) s&#227;o campos de preenchimento obrigat&#243;rio.</ciaL:CSLLabel>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <!-- fim da tabela de dados de endereco -->
                    </td>
                    </tr>
                    <tr>
                        <th style="background-image:url(Assets/Templates/1/imagens/tab_bg_inf.gif);">
                            <asp:Image id="imgBordaEsquerda2" runat="server" ImageUrl="~/Assets/Templates/1/imagens/tab_esq_inf.gif" CssClass="img_left" HSpace="0" />
                            <asp:image id="imgBordaDireita2" runat="server" Imageurl="~/Assets/Templates/1/imagens/tab_dir_inf.gif" CssClass="img_right" HSpace="0" />
                        </th>
                    </tr>
                </table>
                <br />
                <table border="0" cellspacing="0" cellpadding="0" width="620">
                    <tr>
                        <td align="right">
                            <asp:ImageButton ID="imbContinuar" runat="server" ImageUrl="~/Assets/Templates/1/imagens/bt_continuar2.gif" OnClick="imbContinuar_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>