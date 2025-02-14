<%@ Page Title="Products" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Jasdeep_BookStore.Products" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="text-center p-4">
            <h1>
                <asp:Label Text="" runat="server" ID="lblWelcome" />
            </h1>
        </div>
        <div id="bookSelect" class="flex flex-column">
            <div class="flex gap-3">
                <asp:Label ID="lblSelectGenre" runat="server">Please select a genre: </asp:Label>
                <asp:DropDownList CssClass="form-select" ID="ddlSelectGenre" runat="server" AutoPostBack="True" DataSourceID="GenreDataSource" DataTextField="GenreName" DataValueField="GenreID" OnSelectedIndexChanged="ddlSelectGenre_SelectedIndexChanged">
                    <asp:ListItem Value="">Select Genre</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="GenreDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Genre]"></asp:SqlDataSource>
            </div>
            <div class="flex gap-3">
                <asp:Label Text="Please select a book: " runat="server" ID="lblSelectBook" />
                <asp:DropDownList CssClass="form-select" ID="ddlSelectBook" runat="server" DataSourceID="BookDataSource" DataTextField="Title" DataValueField="BookID" OnSelectedIndexChanged="ddlSelectBook_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Select Book</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="BookDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([GenreID] = @GenreID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlSelectGenre" Name="GenreID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <br />
        <div class="card" id="bookCard">
            <div>
                <h3>
                    <asp:Label ID="lblBookTitle" runat="server">No Book Selected</asp:Label>
                </h3>
            </div>
            <div>
                <asp:Label ID="lblBookShortDesc" Text="Select a book to see the short description" runat="server"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblBookDesc" Text="Select a book to see the description" runat="server"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblBookPrice" Text="Select a book too see the price" runat="server"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblQuantity" Text="Quantity: " runat="server"></asp:Label>
                &nbsp;
            <asp:TextBox ID="txtQuantity" placeholder="Enter Quantity" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="rvQuantity" runat="server" ErrorMessage="Please enter a quantity" ControlToValidate="txtQuantity" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator Display="Dynamic" ID="rgQuantity" runat="server" ErrorMessage="Quantity must be numeric and between 1 to 100" ControlToValidate="txtQuantity" ForeColor="Red" Type="Integer" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>

            </div>
        </div>
        <asp:Button runat="server" ID="addToCart" Text="Add to Cart" OnClick="addToCart_Click" CssClass="btn btn-primary" />
        <a href="/Cart" class="btn btn-group">Go to Cart</a>
    </main>
</asp:Content>
