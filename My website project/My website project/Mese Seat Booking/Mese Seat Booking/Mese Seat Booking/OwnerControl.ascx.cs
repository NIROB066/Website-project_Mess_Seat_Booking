using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class OwnerControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["usname_o"]!=null)
        {
            Labeluser_name.Text = Session["usname_o"].ToString();
        }
       
    }

    protected void Buttonlogout_Click(object sender, EventArgs e)
    {
        Session["ownername"] = null;
        Session["chk"] = null;
        Session["euid"] = null;
        Session["etyped"] = null;
        Session["username_o"] = null;

        Response.Redirect("main.aspx");
    }
}