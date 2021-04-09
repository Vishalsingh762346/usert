using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_adminwelcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aid"] == null)
        {

            Response.Redirect("../Default.aspx");
        }
        else
        { 
        Lbl_Id.Text=Session["aid"]+"";
        Lbl_Name.Text = Session["aname"].ToString();
        }
    }
}