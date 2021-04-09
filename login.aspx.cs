using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = "";
        try
        {
            string uid="", pass="";
            if (string.IsNullOrEmpty(TextBox1.Text) == false)
            {
                uid = TextBox1.Text.Trim().Replace("-","").Replace("=","");
            }
            if ( ! string.IsNullOrEmpty(TextBox2.Text))
            {
                pass = TextBox2.Text.Trim().Replace("-", "").Replace("=", "");
            }
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "select * from dblogin where userid='" + uid + "'";
            SqlDataAdapter sqldata = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sqldata.Fill(dt);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    if (pass == dt.Rows[0]["password"].ToString())
                    {
                        //success block
                       // msg = "Login Success";
                        if (dt.Rows[0]["usertype"].ToString() == "admin")
                        {
                            Session["aid"] = uid;
                            Session["aname"] = dt.Rows[0]["name"];
                            Response.Redirect("~/adminzone/adminwelcome.aspx");
                        }
                        else if (dt.Rows[0]["usertype"].ToString() == "user")
                        {
                            msg = "User Login Success";
                        }
                        else
                        {
                            msg = "Login Detail Invalid";
                        }
                    }
                    else
                    {
                        msg = "Login Detail Invalid";
                    }
                }
                else
                {
                    msg = "Login Detail Invalid";
                }

            }
            else
            {
                msg = "Login Detail Invalid";
            }
        }

        catch(Exception ex)
        {
            msg = "Server Error" + ex.Message;
        }
        LblMsg.Text = msg;
    }
}