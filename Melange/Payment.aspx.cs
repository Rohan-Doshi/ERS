using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Melange
{
    public partial class Payment : System.Web.UI.Page
    {
        string UserName,total;
        protected void Page_Load(object sender, EventArgs e)
        {
            total = this.Request.QueryString["id"];
            UserName = this.Request.QueryString["UserName"];
            Label Txt1 = (Label)this.Master.FindControl("LoginId");
            Txt1.Text = "" + UserName;
            TotalAmt.Text = total;
        }

        protected void BtnPayament_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentConf.aspx?cardNo=" + CardNo.Text + "&UserName=" + UserName+"&cost="+total);
        }
    }
}