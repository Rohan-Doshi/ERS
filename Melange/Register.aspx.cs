using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Melange
{
    public partial class Register : System.Web.UI.Page
    {
        //static int i;
        OleDbConnection ctn;
        OleDbDataAdapter da,da1;
        DataSet ds;
        static int total;
        protected void Page_Load(object sender, EventArgs e)
        {
            ctn = new OleDbConnection();
            ctn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\rajkumar doshi\\Desktop\\Melange\\Database\\MelangeData.mdb";
            ctn.Open();
            string query = "select * from DataTable";
            string query1 = "select * from EventList";
            da = new OleDbDataAdapter(query, ctn);
            da1 = new OleDbDataAdapter(query1, ctn);
            ds = new DataSet();
            da.Fill(ds, "DataTable");
            da1.Fill(ds, "EventList");
            total = ds.Tables["DataTable"].Rows.Count;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            int i;
            for (i = 0; i < total; i++)
            {
                DataRow dr = ds.Tables["DataTable"].Rows[i];
                string mail = dr.ItemArray.GetValue(1).ToString();
                if ((TxtUserMail.Text.Equals(mail)))
                    break;
            }

            if (i != total)
            {
                ErrorRegister.Text = "Email Already Registered....Use another Email Id";
            }
            else
            {
                System.Data.OleDb.OleDbCommandBuilder cb;
                cb = new System.Data.OleDb.OleDbCommandBuilder(da);
                DataRow dr1 = ds.Tables["DataTable"].NewRow();

                dr1[0] = total + 1;
                dr1[1] = TxtUserMail.Text;
                dr1[2] = TxtName.Text;
                dr1[3] = TxtPwd.Text;
                dr1[4] = TxtClg.Text;
                dr1[5] = BranchList.SelectedItem.Value.ToString();
                dr1[6] = YrList.SelectedItem.Value.ToString();
                dr1[7] = TxtPhneNo.Text;

                ds.Tables["DataTable"].Rows.Add(dr1);
                da.Update(ds, "DataTable");

                DataRow dr2 = ds.Tables["EventList"].NewRow();

                dr2[0] = TxtName.Text;
                for (i = 1; i < 11; i++)
                {
                    dr2[i] ="0";
                }

                OleDbCommandBuilder cb1 = new OleDbCommandBuilder(da1);
                ds.Tables["EventList"].Rows.Add(dr2);
                da1.Update(ds, "EventList");

                Response.Redirect("Event.aspx?id=" + TxtName.Text);
            }
        }
    }
}