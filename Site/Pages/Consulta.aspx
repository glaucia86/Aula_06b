<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Template.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Site.Pages.Consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPrincipal" runat="server">
    <p>
        Relação de Produtos Cadastrados
    </p>
    
    <br />
    
    <asp:GridView ID="gridProdutos" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false" BackColor="#CCFFFF" >
        <Columns>
            <asp:BoundField DataField="Codigo"          HeaderText="Código" />
            <asp:BoundField DataField="Nome"            HeaderText="Nome" />
            <asp:BoundField DataField="Preco"           HeaderText="Preço" />
            <asp:BoundField DataField="DataCompra"      HeaderText="Data da Compra" />
            <asp:BoundField DataField="Garantia"        HeaderText="Garantia" />
            <asp:BoundField DataField="Caracteristicas" HeaderText="Características Adicionais" />
        </Columns>
        <RowStyle CssClass="cursor-pointer" />
    </asp:GridView>
    
    <p>
        <asp:Label ID="lblMensagem" runat="server"/>
    </p>
</asp:Content>
