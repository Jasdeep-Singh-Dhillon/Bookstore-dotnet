using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jasdeep_BookStore
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                lblOrderSuccess.Visible = true;
                lblOrderSuccess.CssClass = "order-success";
                Session["Cart"] = null;
            } else
            {
                lblOrderSuccess.Visible = false;
                lblOrderSuccess.CssClass = "";
            }
        }
    }
}