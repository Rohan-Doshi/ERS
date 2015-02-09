using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace Melange
{
    public partial class PaymentConf : System.Web.UI.Page
    {
        OleDbConnection ctn;
        OleDbDataAdapter da; 
        DataSet ds;
        DataRow dr;
        static int total, i;
        string UserName,cardNo,cost;
        protected void Page_Load(object sender, EventArgs e)
        {
            ctn = new OleDbConnection();
            ctn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\rajkumar doshi\\Desktop\\Melange\\Database\\MelangeData.mdb";
            ctn.Open();
            string query = "select * from DataTable";
            da = new OleDbDataAdapter(query, ctn);
            ds = new DataSet();
            da.Fill(ds, "DataTable");
            total = ds.Tables["DataTable"].Rows.Count;

            cardNo = this.Request.QueryString["cardNo"];
            UserName = this.Request.QueryString["UserName"];
            cost = this.Request.QueryString["cost"];
            Label Txt1 = (Label)this.Master.FindControl("LoginId");

            for (i = 0; i < total; i++)
            {
                dr = ds.Tables["DataTable"].Rows[i];
                string name = dr.ItemArray.GetValue(2).ToString();
                if ((Txt1.Text.Equals(name)))
                    break;
            }

            Txt1.Text = "" + UserName;
            TxtCost.Text = "" + cost;
            TxtAccoNo.Text = "" + cardNo;
            TxtRecepitNo.Text = "" + dr.ItemArray.GetValue(0).ToString();
            System.Web.HttpContext.Current.Response.Write("<script Language='JavaScript'>alert('Please Note Down Your Recepit no.Its used for reseting your password')</script>");
        }

        protected void TxtCost_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("AfterLogin.aspx?id=" + UserName);
        }
    }
}