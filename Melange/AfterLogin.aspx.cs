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
    public partial class AfterLogin : System.Web.UI.Page
    {
        string UserName = "";
        OleDbConnection ctn;
        OleDbDataAdapter da1;
        DataSet ds;
        DataRow dr;
        static int total, i, total_amt = 0, j, k, l;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserName = Request.QueryString["id"];
            Label Txt1 = (Label)this.Master.FindControl("LoginId");
            Txt1.Text = ""+UserName;
            ctn = new OleDbConnection();
            ctn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\rajkumar doshi\\Desktop\\Melange\\Database\\MelangeData.mdb";
            ctn.Open();
            string query1 = "select * from EventList";
            da1 = new OleDbDataAdapter(query1, ctn);
            ds = new DataSet();
            da1.Fill(ds, "EventList");
            total = ds.Tables["EventList"].Rows.Count;

            for (i = 0; i < total; i++)
            {
                dr = ds.Tables["EventList"].Rows[i];
                string name = dr.ItemArray.GetValue(0).ToString();
                if ((Txt1.Text.Equals(name)))
                    break;
            }

            if (dr.ItemArray.GetValue(1).ToString() != "0")
            {
                Event1.Text = dr.ItemArray.GetValue(1).ToString();
                Time1.Text = DateTime(Event1.Text);
            }
            if (dr.ItemArray.GetValue(2).ToString() != "0")
            {
                Event2.Text = dr.ItemArray.GetValue(2).ToString();
                Time2.Text = DateTime(Event2.Text);
            }
            if (dr.ItemArray.GetValue(3).ToString() != "0")
            {
                Event3.Text = dr.ItemArray.GetValue(3).ToString();
                Time3.Text = DateTime(Event3.Text);
            }
            if (dr.ItemArray.GetValue(4).ToString() != "0")
            {
                Event4.Text = dr.ItemArray.GetValue(4).ToString();
                Time4.Text = DateTime(Event4.Text);
            }
            if (dr.ItemArray.GetValue(5).ToString() != "0")
            {
                Event5.Text = dr.ItemArray.GetValue(5).ToString();
                Time5.Text = DateTime(Event5.Text);
            }
            if (dr.ItemArray.GetValue(6).ToString() != "0")
            {
                Event6.Text = dr.ItemArray.GetValue(6).ToString();
                Time6.Text = DateTime(Event6.Text);
            }
            if (dr.ItemArray.GetValue(7).ToString() != "0")
            {
                Event7.Text = dr.ItemArray.GetValue(7).ToString();
                Time7.Text = DateTime(Event7.Text);
            }
            if (dr.ItemArray.GetValue(8).ToString() != "0")
            {
                Event8.Text = dr.ItemArray.GetValue(8).ToString();
                Time8.Text = DateTime(Event8.Text);
            }
            if (dr.ItemArray.GetValue(9).ToString() != "0")
            {
                Event9.Text = dr.ItemArray.GetValue(9).ToString();
                Time9.Text = DateTime(Event9.Text);
            }
            if (dr.ItemArray.GetValue(10).ToString() != "0")
            {
                Event10.Text = dr.ItemArray.GetValue(10).ToString();
                Time10.Text = DateTime(Event10.Text);
            }
        }

        private string DateTime(string eve)
        {
            if(eve=="Chess")
                return "16 Feb 3pm onwards";
            else if(eve=="Table Tennis")
                return "16 Feb 3pm onwards";
            else if(eve=="Carrom")
                return "16 Feb 3pm onwards";
            else if(eve=="Cricket")
                return "16 Feb 10am onwards";
            else if(eve=="Foot Ball")
                return "17 Feb 10am onwards";
            else if(eve=="Elocution")
                return "18 Feb 3pm onwards";
            else if(eve=="Drawing")
                return "18 Feb 3pm onwards";
            else if(eve=="Foot Lose")
                return "18 Feb 12pm onwards";
            else if(eve=="U.V Act")
                return "19 Feb 12pm onwards";
            else if(eve=="Rock Band")
                return "20 Feb 3pm onwards";
            return "0";
        }

        protected void BtnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx?id="+UserName);
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Event.aspx?id=" + UserName);
        }
    }
}