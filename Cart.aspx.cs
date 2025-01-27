using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;

namespace Jasdeep_BookStore
{
    public partial class Cart : System.Web.UI.Page
    {
        private CartList CartList;
        protected void Page_Load(object sender, EventArgs e)
        {
            CartList = CartList.GetCart();
            if (!IsPostBack)
            {
                isCartEmpty();
                foreach (CartItem item in CartList.Items)
                {
                    lbxCart.Items.Add(item.Display());
                }
            }
        }


        protected void btnRemove_Click(object sender, EventArgs e)
        {
            CartList.Items.RemoveAt(lbxCart.SelectedIndex);
            lbxCart.Items.RemoveAt(lbxCart.SelectedIndex);
            isCartEmpty();
        }

        private void isCartEmpty()
        {
            if (CartList.Count == 0)
            {
                lbxCart.Visible = false;
                lblNoItems.Visible = true;
            }
        }
    }
}