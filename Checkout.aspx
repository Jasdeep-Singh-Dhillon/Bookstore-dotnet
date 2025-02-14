<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Jasdeep_BookStore.Checkout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Label Text="Order placed successfully" runat="server" ID="lblOrderSuccess" Visible="false" ForeColor="Green" />
        <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="text-danger" />
        <div>
            <h3>
                <asp:Label runat="server" Text="Contact Information"></asp:Label>
            </h3>
            <div class="form-group p-2">
                <asp:Label runat="server" Text="Email Address: " CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Display="Dynamic" runat="server" ErrorMessage="Enter a valid email address" ControlToValidate="txtEmail" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group p-2">
                <asp:Label runat="server" Text="Email Rentry: " CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtEmailConfirmation" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmailConfirmation" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Display="Dynamic" runat="server" ErrorMessage="Enter a valid email address" ControlToValidate="txtEmailConfirmation" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:CompareValidator Display="Dynamic" runat="server" ErrorMessage="Email must match" ControlToCompare="txtEmail" ControlToValidate="txtEmailConfirmation" ForeColor="Red"></asp:CompareValidator>

            </div>
            <div class="form-group p-2">
                <asp:Label runat="server" Text="First Name: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtFirstname" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="First Name is required" ControlToValidate="txtFirstname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group p-2">
                <asp:Label runat="server" Text="Last Name: " CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtLastname" CssClass="form-control" />
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="Last Name is required" ControlToValidate="txtLastname" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group p-2">
                <asp:Label Text="Phone Number: " runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="form-control" />
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="Phone number is required" ControlToValidate="txtPhoneNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Display="Dynamic" runat="server" ErrorMessage="Enter a valid phone number" ControlToValidate="txtPhoneNumber" ForeColor="Red" ValidationExpression="(?:\+1[-. ]?)?(?:\(?\d{3}\)?[-. ]?)?\d{3}[-. ]?\d{4}$"></asp:RegularExpressionValidator>

            </div>
        </div>
        <div>
            <h3>
                <asp:Label Text="Billing Address" runat="server" />
            </h3>
            <div class="form-group p-2">
                <asp:Label Text="Address: " runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" />
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="Address is required" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group p-2">
                <asp:Label Text="City: " runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" />
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="City is required" ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group p-2">
                <asp:Label Text="Province: " runat="server" CssClass="form-label" />
                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-select">
                    <asp:ListItem Value="">Select a province</asp:ListItem>
                    <asp:ListItem Value="AB">Alberta</asp:ListItem>
                    <asp:ListItem Value="BC">British Columbia</asp:ListItem>
                    <asp:ListItem Value="MB">Manitoba</asp:ListItem>
                    <asp:ListItem Value="NB">New Brunswick</asp:ListItem>
                    <asp:ListItem Value="NL">Newfoundland and Labrador</asp:ListItem>
                    <asp:ListItem Value="NS">Nova Scotia</asp:ListItem>
                    <asp:ListItem Value="NT">Northwest Territories</asp:ListItem>
                    <asp:ListItem Value="NU">Nunavut</asp:ListItem>
                    <asp:ListItem Value="ON">Ontario</asp:ListItem>
                    <asp:ListItem Value="PE">Prince Edward Island</asp:ListItem>
                    <asp:ListItem Value="QC">Quebec</asp:ListItem>
                    <asp:ListItem Value="SK">Saskatchewan</asp:ListItem>
                    <asp:ListItem Value="YK">Yukon</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="Province is required" ControlToValidate="ddlState" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group p-2">
                <asp:Label Text="Postal Code: " runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtPostal" CssClass="form-control" />
                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="Postal Code is required" ControlToValidate="txtPostal" CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Display="Dynamic" runat="server" ErrorMessage="Enter a valid postal code" ControlToValidate="txtPostal" ForeColor="Red" ValidationExpression="[ABCEGHJ-NPRSTVXY]\d[ABCEGHJ-NPRSTV-Z][ -]?\d[ABCEGHJ-NPRSTV-Z]\d"></asp:RegularExpressionValidator>
            </div>
        </div>
        <asp:Button Text="Check Out" runat="server" ID="btnCheckout" OnClick="btnCheckout_Click" CssClass="btn btn-primary" />
        <asp:Button Text="Cancel Order" runat="server" ID="btnCancel" CssClass="btn btn-danger" />
        <a href="Products.aspx" class="btn btn-group">Continue Shopping</a>
    </main>
</asp:Content>
