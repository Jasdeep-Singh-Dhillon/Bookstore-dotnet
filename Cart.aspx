<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Jasdeep_BookStore.Cart" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div>
            <h4>
                <asp:Label ID="lblNoItems" runat="server" Text="No Items in Cart" Visible="false"></asp:Label>
            </h4>
        </div>
        <div class="flex">
            <asp:ListBox runat="server" ID="lbxCart"></asp:ListBox>
            <div class="flex flex-column" id="cartButtons">
            <asp:Button runat="server" ID="btnRemove" Text="Remove Item" OnClick="btnRemove_Click" CssClass="btn btn-dark"/>
            <asp:Button runat="server" ID="btnClear" Text="Empty Cart" OnClick="btnClear_Click" CssClass="btn btn-danger"/>
            </div>
        </div>
        <div class="flex ">
            <asp:Button runat="server" ID="btnCheckOut" Text="Check Out" OnClick="btnCheckOut_Click" CssClass="btn btn-primary"/>
            <asp:Button runat="server" ID="btnContinueShop" Text="Continue Shopping" OnClick="btnContinueShop_Click" CssClass="btn btn-group"/>
        </div>
    </main>

</asp:Content>

