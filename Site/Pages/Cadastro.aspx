<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Template.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPrincipal" runat="server">
    <p>
        Formulário de Cadastro de Produtos:
    </p>
    
    <b>Nome do Produto:</b><br />
    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="60%" />
    <asp:RequiredFieldValidator 
        ID="requiredNome"
        runat="server"
        ControlToValidate="txtNome"
        ErrorMessage="Por favor, insira o nome do Produto."
        ForeColor="Red"
        />
    <br /><br />
    
    <b>Preço:</b><br />
    <asp:TextBox ID="txtPreco" runat="server" CssClass="form-control" Width="15%"/>
    <asp:RequiredFieldValidator 
        ID="requiredPreco"
        runat="server"
        ControlToValidate="txtPreco"
        ErrorMessage="Por favor, insira o preço do Produto."
        ForeColor="Red"
        />
    <br /><br />
    
    <b>Data da Compra:</b><br />
    <asp:Calendar ID="calDataCompra" runat="server"/>
    <br /><br />
    
    <b>Garantia:</b><br />
    <asp:RadioButtonList ID="rblGarantia" runat="server" >
        <asp:ListItem Value="0"     Text="Sem Garantia"/>
        <asp:ListItem Value="30"    Text="30 dias"/>
        <asp:ListItem Value="60"    Text="90 dias"/>
    </asp:RadioButtonList>
    <br /><br />
    
    <b>Características Adicionais:</b><br />
    <asp:CheckBoxList ID="chkCaracteristicas" runat="server">
        <asp:ListItem Value="Desconto"  Text="Desconto Promocional"/>
        <asp:ListItem Value="Suporte"   Text="Suporte Técnico"/>
        <asp:ListItem Value="Troca"     Text="Garantia de Troca"/>
    </asp:CheckBoxList>
    <br /><br />
    
    <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-primary btn-lg" OnClick="BtnCadastrar" />
    
    <p>
        <asp:Label ID="lblMensagem" runat="server"/>
    </p>
</asp:Content>
