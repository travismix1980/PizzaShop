using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaShop
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPurchase_Click(object sender, EventArgs e)
        {
            double total = 0;

            // get size price
            if (RdoSmall.Checked)
            {
                total += 10.00;
            }
            else if (RdoMedium.Checked)
            {
                total += 13.00;
            }
            else if(RdoLarge.Checked)
            {
                total += 16.00;
            }

            if (RdoDeep.Checked)
            {
                total += 2.00;
            }



            // output total
            LblTotal.Text = $"<b>Total: ${string.Format("{0:0.00}", total)}</b>";
        }
    }
}