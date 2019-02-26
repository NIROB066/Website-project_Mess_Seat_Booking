using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mese_Seat_Booking_MainControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string hotty = "select [hotnews] from [admin] where [username]='admin01'";
            SqlCommand com1 = new SqlCommand(hotty, conn);
            masqueetext.Text = com1.ExecuteScalar().ToString();
            conn.Close();
        }
    }
}