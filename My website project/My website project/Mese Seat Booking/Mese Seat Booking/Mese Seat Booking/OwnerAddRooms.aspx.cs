using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Mese_Seat_Booking_OwnerAddRooms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownListfloor_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Buttonadd_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertroom = "insert into [rooms](username,roomnum,floor,status) values(@un,@rn,@fl,@st)";
            SqlCommand comm = new SqlCommand(insertroom, conn);
            comm.Parameters.AddWithValue("@un", Session["usname_o"].ToString());
            comm.Parameters.AddWithValue("@rn", TextBoxroomnum.Text); 
            comm.Parameters.AddWithValue("@fl", DropDownListfloor.SelectedItem.ToString());
            comm.Parameters.AddWithValue("@st", DropDownListbookedunbooked.SelectedItem.ToString());
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("OwnerAddRooms.aspx");
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}