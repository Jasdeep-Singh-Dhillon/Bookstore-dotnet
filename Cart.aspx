<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Jasdeep_BookStore.Cart" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main
        <div>
            <asp:Label ID="lblNoItems" runat="server" Text="No Items in Cart" Visible="false"></asp:Label>
        </div>
        <div class="flex">
            <asp:ListBox runat="server" ID="lbxCart"></asp:ListBox>
            <asp:Button runat="server" ID="btnRemove" Text="Remove" OnClick="btnRemove_Click"/>
        </div>
    </main>

</asp:Content>

