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
    public partial class Login : System.Web.UI.Page
    {
        static int total,i=0,ch;
        OleDbConnection ctn;
        OleDbDataAdapter da;
        DataSet ds;
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
            string ch = Request.QueryString["ch"];
            LoginError.Text = "";
            if (ch == "1")
                LoginError.Text = "PASSWORD CHANGED....RELOGIN  USING NEW PASSWORD";
            else if(ch=="2")
                LoginError.Text = "PASSWORD RESETED....PLZ LOGIN USING NEW PASSWORD";
        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string name="",pwd="",mail="";
            for (i = 0; i < total; i++)
            {
                DataRow dr = ds.Tables["DataTable"].Rows[i];
                name = dr.ItemArray.GetValue(2).ToString();
                mail = dr.ItemArray.GetValue(1).ToString();
                pwd= dr.ItemArray.GetValue(3).ToString();
                if ((TxtUserName.Text.Equals(mail)) && (TxtPassword.Text.Equals(pwd)))
                    break;
                else if ((TxtUserName.Text.Equals(mail)) && (TxtPassword.Text != pwd))
                    ch = 1;
            }
            if (i != total)
                Response.Redirect("AfterLogin.aspx?id=" + name);
            else if (ch == 1)
                LoginError.Text = "Invalid User Email Id and Password Combination";
            else
                LoginError.Text = "This Email Id is not Registered....Please register before Login";
        }
    }
}