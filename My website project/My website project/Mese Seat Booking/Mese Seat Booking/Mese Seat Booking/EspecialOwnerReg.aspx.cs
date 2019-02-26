using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Mese_Seat_Booking_EspecialOwnerReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn1.Open();
            string updateq = "update [request] set [messname]='" + main_p1.Text + "', [messlocation]='" + location.Text + "',[age]='" + age.Text + "',[profession]='" + profession.Text + "',[about]='" + detailstext.Text + "',[heading]='" + headingtext.Text + "' where [username]='" + Session["euid"].ToString().Replace(" ", "") + "'";
            SqlCommand upcom = new SqlCommand(updateq, conn1);
            upcom.ExecuteScalar();
            
                conn1.Close();
            Session["successfulreg"] = "yes";
                Response.Redirect("main.aspx");
            

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

    }
}
