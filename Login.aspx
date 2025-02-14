<%@ Page Title="Login" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Jasdeep_BookStore.Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group p-2">
        <asp:Label Text="First Name: " runat="server" CssClass="form-label" />
        <asp:TextBox runat="server" ID="txtFirstName" CssClass="form-control" />
        <asp:RequiredFieldValidator ControlToValidate="txtFirstName" runat="server" Display="Dynamic" CssClass="text-danger" ErrorMessage="First Name is required" />
    </div>

    <div class="form-group p-2">
        <asp:Label Text="Last Name: " runat="server" CssClass="form-label" />
        <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control" />
        <asp:RequiredFieldValidator ControlToValidate="txtLastName" runat="server" Display="Dynamic" CssClass="text-danger" ErrorMessage="Last Name is required" />
    </div>

    <div>
        <asp:Button Text="Login" runat="server" OnClick="btnLogin_Click" ID="btnLogin" CssClass="btn btn-primary" />
        <asp:Button Text="Cancel" runat="server" CausesValidation="false" ID="btnCancel" OnClick="btnCancel_Click" CssClass="btn btn-danger" />
    </div>
</asp:Content>
