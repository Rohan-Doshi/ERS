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
    public partial class Profile : System.Web.UI.Page
    {
        OleDbConnection ctn;
        OleDbDataAdapter da;
        DataSet ds;
        DataRow dr;
        static int total,i;
        string UserName;
        
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

            Txt1.Text = "" + UserName;
            
            for(i=0;i<total;i++)
            {
                dr = ds.Tables["DataTable"].Rows[i];
                if (Txt1.Text.Equals(dr.ItemArray.GetValue(2).ToString()))
                    break;
            }
                       
        }

        protected void BtnEmail_Click(object sender, EventArgs e)
        {
            TxtEmail.ReadOnly = false;
            InfoChange.Text = "Enter Your New Email ID";
            TxtEmail.Text = "";
        }

        protected void BtnPwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePwd.aspx?id=" + UserName);
        }

        protected void BtnClg_Click(object sender, EventArgs e)
        {
            TxtClg.ReadOnly = false;
            InfoChange.Text = "Enter Your New College";
            TxtClg.Text = "";
        }

        protected void BtnPhneNo_Click(object sender, EventArgs e)
        {
            TxtPhneNo.ReadOnly=false;
            InfoChange.Text = "Enter Your New Phone Number";
            TxtPhneNo.Text="";
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            System.Data.OleDb.OleDbCommandBuilder cb;
            cb = new System.Data.OleDb.OleDbCommandBuilder(da);

            System.Data.DataRow dr1 = ds.Tables["DataTable"].Rows[i];

            dr1[0] = dr.ItemArray.GetValue(0).ToString();

            dr1[2] = dr.ItemArray.GetValue(2).ToString();

            dr1[3] = dr.ItemArray.GetValue(3).ToString();
                        
            dr1[5] = dr.ItemArray.GetValue(5).ToString();
            
            dr1[6] = dr.ItemArray.GetValue(6).ToString();
            
            dr1[1] = TxtEmail.Text;
            
            dr1[4] = TxtClg.Text;
            
            dr1[7] = TxtPhneNo.Text;

            da.Update(ds, "DataTable");

            InfoChange.Text = "CHANGES SAVED";
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AfterLogin.aspx?id=" + UserName);
        }

        protected void BtnView_Click(object sender, EventArgs e)
        {
            LabelName.Text = dr.ItemArray.GetValue(2).ToString();
            LabelBch.Text = dr.ItemArray.GetValue(5).ToString();
            LabelYr.Text = dr.ItemArray.GetValue(6).ToString();
            TxtEmail.Text = dr.ItemArray.GetValue(1).ToString();
            TxtClg.Text = dr.ItemArray.GetValue(4).ToString();
            TxtPwd.Text = "";
            TxtPhneNo.Text = dr.ItemArray.GetValue(7).ToString();
            for (int j = 0; j < dr.ItemArray.GetValue(3).ToString().Length; j++)
            {
                TxtPwd.Text = TxtPwd.Text + "*";
            }
        }
    }
}