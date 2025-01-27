using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Jasdeep_BookStore.Models;
using Models;

namespace Jasdeep_BookStore
{
    public partial class Products : System.Web.UI.Page
    {
        private CartList CartList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlSelectGenre.DataBind();
                ddlSelectBook.DataBind();
                updateBookDetails();
            }
            CartList = CartList.GetCart();
        }

        protected void ddlSelectBook_SelectedIndexChanged(object sender, EventArgs e)
        {
            updateBookDetails();
        }

        protected void ddlSelectGenre_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSelectBook.DataBind();
            updateBookDetails();
        }

        private void updateBookDetails()
        {
            DataView books = (DataView)BookDataSource.Select(DataSourceSelectArguments.Empty);
            books.RowFilter = "BookID ='" + ddlSelectBook.SelectedValue + "'";
            DataRowView book = books[0];
            lblBookTitle.Text = book["Title"].ToString();
            lblBookShortDesc.Text = book["ShortDesc"].ToString();
            lblBookDesc.Text = book["Description"].ToString();
            lblBookPrice.Text = decimal.Parse(book["Price"].ToString()).ToString("c");
        }

        protected void addToCart_Click(object sender, EventArgs e)
        {
            int bookId = int.Parse(ddlSelectBook.SelectedValue);
            DataView books = (DataView)BookDataSource.Select(DataSourceSelectArguments.Empty);
            books.RowFilter = "BookID ='" + bookId + "'";
            DataRowView book = books[0];
            string title = book["Title"].ToString();
            string shortDesc = book["ShortDesc"].ToString();
            string desc = book["Description"].ToString();
            double price = double.Parse(book["Price"].ToString());
            string author = book["author"].ToString();
            int quantity = int.Parse(txtQuantity.Text);

            Book cartBook = new Book(bookId, title, shortDesc, desc, price, author);

            CartItem cartItem = new CartItem(cartBook, quantity);

            lblBookTitle.Text = cartItem.Display();

            CartList.addToCart(cartItem);
        }

        protected void goToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}