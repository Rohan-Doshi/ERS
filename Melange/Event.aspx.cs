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
    public partial class Event : System.Web.UI.Page
    {
        OleDbConnection ctn;
        OleDbDataAdapter da1;
        DataSet ds;
        DataRow dr;
        static int total, i, total_amt = 0, j, k, l;
        string UserName;
        protected void Page_Load(object sender, EventArgs e)
        {
            ctn = new OleDbConnection();
            ctn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\rajkumar doshi\\Desktop\\Melange\\Database\\MelangeData.mdb";
            ctn.Open();
            string query1 = "select * from EventList";
            da1 = new OleDbDataAdapter(query1, ctn);
            ds = new DataSet();
            da1.Fill(ds, "EventList");
            total = ds.Tables["EventList"].Rows.Count;
            UserName = Request.QueryString["id"];
            Label Txt1 = (Label)this.Master.FindControl("LoginId");
            Txt1.Text = "" + UserName;

            for (i = 0; i < total; i++)
            {
                dr = ds.Tables["EventList"].Rows[i];
                string name = dr.ItemArray.GetValue(0).ToString();
                if ((Txt1.Text.Equals(name)))
                    break;
            }
            
            for (l = 1; l < 11; l++)
            {
                if (dr != null)
                {
                    if (dr.ItemArray.GetValue(l).ToString().Equals("0"))
                        break;
                }
                else
                {
                    break;
                }
            }
         //   EventRegisError.Text = "" + i;
            if (l < 11)
                j = l;
            else
                j = 10;
            for (l = 1; l <= j; l++)
            {
                for (k = 0; k < 5; k++)
                {
                    if(dr!=null)
                    {
                        if (ListGrp.Items[k].Value == dr.ItemArray.GetValue(l).ToString())
                        {
                            ListGrp.Items[k].Enabled = false;
                        }   
                        if (ListIndi.Items[k].Value == dr.ItemArray.GetValue(l).ToString())
                        {
                            ListIndi.Items[k].Enabled = false;
                        }
                    }
                }
            }
        }

        protected void InfoRegister_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            OleDbCommandBuilder cb;
            cb = new OleDbCommandBuilder(da1);
            DataRow dr1 = ds.Tables["EventList"].Rows[i];
            dr1[0] = UserName;

            for (l = 1; l <= j; l++)
            {
                dr1[l] = dr.ItemArray.GetValue(l).ToString();
            }
            if (ListIndi.Items[0].Selected && j < 11)
            {
                dr1[j] = ListIndi.Items[0].Value;
                j++;
                total_amt += 40;
            }
            if (ListIndi.Items[1].Selected && j < 11)
            {
                dr1[j] = ListIndi.Items[1].Value;
                j++;
                total_amt += 100;
            }
            if (ListIndi.Items[2].Selected && j < 11)
            {
                dr1[j] = ListIndi.Items[2].Value;
                j++;
                total_amt += 40;
            }
            if (ListIndi.Items[3].Selected && j < 11)
            {
                dr1[j] = ListIndi.Items[3].Value;
                j++;
                total_amt += 40;
            }
            if (ListIndi.Items[4].Selected && j < 11)
            {
                dr1[j] = ListIndi.Items[4].Value;
                j++;
                total_amt += 40;
            }
            if (ListGrp.Items[0].Selected && j < 11)
            {
                dr1[j] = ListGrp.Items[0].Value;
                j++;
                total_amt += 100;
            }
            if (ListGrp.Items[1].Selected && j < 11)
            {
                dr1[j] = ListGrp.Items[1].Value;
                j++;
                total_amt += 100;
            }
            if (ListGrp.Items[2].Selected && j < 11)
            {
                dr1[j] = ListGrp.Items[2].Value;
                j++;
                total_amt += 200;
            }
            if (ListGrp.Items[3].Selected && j < 11)
            {
                dr1[j] = ListGrp.Items[3].Value;
                j++;
                total_amt += 200;
            }
            if (ListGrp.Items[4].Selected && j < 11)
            {
                dr1[j] = ListGrp.Items[4].Value;
                j++;
                total_amt += 200;
            }
            for (; j < 11; j++)
            {
                dr1[j] = "0" ;
            }
           
            da1.Update(ds, "EventList");
            Response.Redirect("Payment.aspx?id=" + total_amt + "&UserName=" + UserName);
        }
    }
}
