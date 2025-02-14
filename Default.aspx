<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Jasdeep_BookStore._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Jasdeep Book Store</h1>
            <p class="lead">Assignment 1 for Programming with .NET</p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    Browse extensive collection of books
                </p>
                <p><a href="Products.aspx" class="btn btn-primary btn-md">Browse Products &raquo;</a></p>

            </section>


        </div>
    </main>

</asp:Content>
