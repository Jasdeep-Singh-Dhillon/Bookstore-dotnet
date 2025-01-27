<%@ Page Title="Products" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Jasdeep_BookStore.Products" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div>
            <asp:Label ID="lblSelectGenre" runat="server">Please select a genre: </asp:Label>
            <asp:DropDownList ID="ddlSelectGenre" runat="server" AutoPostBack="True" DataSourceID="GenreDataSource" DataTextField="GenreName" DataValueField="GenreID" OnSelectedIndexChanged="ddlSelectGenre_SelectedIndexChanged">
                <asp:ListItem Value="">Select Genre</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="GenreDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Genre]"></asp:SqlDataSource>
        </div>

        <div>
            <asp:Label Text="Please select a book: " runat="server" ID="lblSelectBook" />
            <asp:DropDownList ID="ddlSelectBook" runat="server" DataSourceID="BookDataSource" DataTextField="Title" DataValueField="BookID" OnSelectedIndexChanged="ddlSelectBook_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Select Book</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="BookDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([GenreID] = @GenreID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSelectGenre" Name="GenreID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div>
            <h1>
                <asp:Label ID="lblBookTitle" runat="server">No Book Selected</asp:Label>
            </h1>
        </div>
        <br />
        <div>
            <asp:Label ID="lblBookShortDesc" Text="Select a book to see the short description" runat="server"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblBookDesc" Text="Select a book to see the description" runat="server"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblBookPrice" Text="Select a book too see the price" runat="server"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblQuantity" Text="Quantity: " runat="server"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtQuantity" placeholder="Enter Quantity" runat="server"></asp:TextBox>
        </div>
        <asp:Button runat="server" ID="addToCart" Text="Add to Cart" OnClick="addToCart_Click"/>
        <asp:Button runat="server" ID="goToCart" Text="Go to Cart" OnClick="goToCart_Click" />
    </main>
</asp:Content>
