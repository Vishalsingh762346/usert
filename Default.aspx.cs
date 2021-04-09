using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        string msg = "";
        try
        {
            string uid="",pass="";
            if (string.IsNullOrEmpty(TxtUserid.Text) == false)
            {
                uid = TxtUserid.Text.Trim().Replace("-","").Replace("=","");
            }
            if (string.IsNullOrEmpty(TxtPwd.Text)==false)
            {
                pass = TxtPwd.Text.Trim().Replace("-","").Replace("-","");
            }
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "select * from tbl_login where userid='"+uid+"'";
            SqlDataAdapter sqldata = new SqlDataAdapter(query,con);
            DataTable dt = new DataTable();
            sqldata.Fill(dt);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    if (pass == dt.Rows[0]["password"].ToString())
                    {
                        //success block
                        if (dt.Rows[0]["usertype"].ToString() == "admin")
                        {
                            Session["aid"] = uid;
                            Session["aname"]=dt.Rows[0]["name"];
                            Response.Redirect("~/adminzone/adminwelcome.aspx");
                        }
                        else if (dt.Rows[0]["usertype"].ToString() == "user")
                        {
                            Session["userid"] = uid;
                            Session["username"]=dt.Rows[0]["name"];
                            Response.Redirect("~/userzone/userwelcome.aspx",false);
                        }
                        else
                        {
                            msg = "User Deatails Invalid";
                        }
                    }
                    else
                    {
                        msg = "Login detail Invalid";
                    }
                }
                else
                {
                    msg = "Login Details Invalid";
                }
            }
            else
            {
                msg = "Login details Invalid";
            }
        }
        catch(Exception Ex)
        {
            msg = "Server Error"+Ex.Message;
        }
        LblMsg.Text = msg;
    }
}