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
    public partial class ChangePwd : System.Web.UI.Page
    {
        OleDbConnection ctn;
        OleDbDataAdapter da;
        DataSet ds;
        DataRow dr;
        static int total, i;
        string UserName="";
        
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
            UserName = Request.QueryString["id"];

            Label Txt1 = (Label)this.Master.FindControl("LoginId");

            Txt1.Text = ""+UserName;
        }
        protected void ChangePasswordButton_Click(object sender, EventArgs e)
        {
            string name = "", pwd = "", mail = "";
            for (i = 0; i < total; i++)
            {
                dr = ds.Tables["DataTable"].Rows[i];
                name = dr.ItemArray.GetValue(2).ToString();
                mail = dr.ItemArray.GetValue(1).ToString();
                pwd = dr.ItemArray.GetValue(3).ToString();
                if ((UserName.Equals(name)) && (CurrentPassword.Text.Equals(pwd)))
                    break;
            }
            if (i != total)
            {
                System.Data.OleDb.OleDbCommandBuilder cb;
                cb = new System.Data.OleDb.OleDbCommandBuilder(da);

                DataRow dr1 = ds.Tables["DataTable"].Rows[i];
                string ch="1";

                dr1[0] = dr.ItemArray.GetValue(0).ToString();

                dr1[3] = NewPassword.Text;

                dr1[5] = dr.ItemArray.GetValue(5).ToString();

                dr1[6] = dr.ItemArray.GetValue(6).ToString();

                dr1[1] = dr.ItemArray.GetValue(1).ToString();

                dr1[4] = dr.ItemArray.GetValue(4).ToString();

                dr1[7] = dr.ItemArray.GetValue(7).ToString();

                da.Update(ds, "DataTable");

                Response.Redirect("Login.aspx?ch=" + ch);
            }
            else
                PwdError.Text = "INCORRECT PASSWORD";
        }
    }
}
