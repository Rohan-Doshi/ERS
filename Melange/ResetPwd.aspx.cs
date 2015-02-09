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
    public partial class ResetPwd : System.Web.UI.Page
    {
        static int total, i = 0, ch;
        string ch1 = "2";
        OleDbConnection ctn;
        OleDbDataAdapter da;
        DataSet ds;
        DataRow dr, dr1;
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
        }
        protected void ChangePasswordButton_Click(object sender, EventArgs e)
        {
            for (i = 0; i < total; i++)
            {
                dr = ds.Tables["DataTable"].Rows[i];
                if ((TxtEmail.Text.Equals(dr.ItemArray.GetValue(1).ToString())) && (TxtRecepit.Text.Equals(dr.ItemArray.GetValue(0).ToString())))
                    break;
                else if ((TxtEmail.Text.Equals(dr.ItemArray.GetValue(1).ToString())) && (TxtRecepit.Text != dr.ItemArray.GetValue(0).ToString()))
                    ch = 1;
            }
            if (i != total)
            {
                System.Data.OleDb.OleDbCommandBuilder cb;
                cb = new System.Data.OleDb.OleDbCommandBuilder(da);

                dr1 = ds.Tables["DataTable"].Rows[i];

                dr1[0] = dr.ItemArray.GetValue(0).ToString();

                dr1[1] = dr.ItemArray.GetValue(1).ToString();
                
                dr1[2] = dr.ItemArray.GetValue(2).ToString();

                dr1[3] = NewPassword.Text;

                dr1[4] = dr.ItemArray.GetValue(4).ToString();

                dr1[5] = dr.ItemArray.GetValue(5).ToString();

                dr1[6] = dr.ItemArray.GetValue(6).ToString();

                dr1[7] = dr.ItemArray.GetValue(7).ToString();

                da.Update(ds, "DataTable");

                Response.Redirect("Login.aspx?ch=" + ch1);
            }
            else if (ch == 1)
                ResetError.Text = "INVALID RECEPIT NO.";
            else
                ResetError.Text = "NOT REGISTERED EMAIL ID";
        }
    }
}