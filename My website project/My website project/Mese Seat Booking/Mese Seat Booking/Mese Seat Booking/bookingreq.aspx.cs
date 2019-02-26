using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mese_Seat_Booking_bookingreq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string masq = "select hotnews from [admin] where username='admin01'";
        SqlCommand masqcom = new SqlCommand(masq, conn);
        string masqans = masqcom.ExecuteScalar().ToString();
        masqueetext.Text = masqans;
        if(Session["usname_o"] != null)
        {
            
            if(!IsPostBack)
            {
                string bookingselect = "select susername from [booking] where ousername='" + Session["usname_o"].ToString() + "'";
                SqlCommand bookingselectcom = new SqlCommand(bookingselect, conn);
                stdsec.DataSource = bookingselectcom.ExecuteReader();
                stdsec.DataTextField = "susername";
                stdsec.DataValueField = "susername";
                stdsec.DataBind();
            }
        }
        conn.Close();
    }

    protected void selectbutton_Click(object sender, EventArgs e)
    {
        if(Session["usname_o"] != null)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();

                string stduser = stdsec.SelectedItem.Text;

                string sname = "select Firstname from [Table1] where Username='" + stduser + "'";
                string staddress = "select Address from [Table1] where Username='" + stduser + "'";
                string stphone = "select Phone from [Table1] where Username='" + stduser + "'";
                string semail = "select Email from [Table1] where Username='" + stduser + "'";
                string sbooking = "select roomnum from [booking] where susername='" + stduser + "'";

                SqlCommand snamecom = new SqlCommand(sname, conn);
                SqlCommand saddresscom = new SqlCommand(staddress, conn);
                SqlCommand sphonecom = new SqlCommand(stphone, conn);
                SqlCommand semailcom = new SqlCommand(semail, conn);
                SqlCommand sbookcom = new SqlCommand(sbooking, conn);

                sbook.Text = snamecom.ExecuteScalar().ToString();
                saddress.Text = saddresscom.ExecuteScalar().ToString();
                sphone.Text = sphonecom.ExecuteScalar().ToString();
                unamelev.Text = semailcom.ExecuteScalar().ToString();
                uemail.Text = sbookcom.ExecuteScalar().ToString();
                sbook.Text = snamecom.ExecuteScalar().ToString();



                conn.Close();

            }
        }
    }

    protected void Accept_Click(object sender, EventArgs e)
    {
        if(Session["usname_o"] != null)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string studentnamest = "select ousername from [booking] where susername='" + stdsec.SelectedItem.Text + "'";
                string studentroomnum = "select roomnum from [booking] where susername='" + stdsec.SelectedItem.Text + "'";
                string studentmessname = "select messname from [booking] where susername='" + stdsec.SelectedItem.Text + "'";
                string studentfloor = "select floor from [booking] where susername='" + stdsec.SelectedItem.Text + "'";

                SqlCommand studentnamestcom = new SqlCommand(studentnamest, conn);
                SqlCommand studentroomnumcom = new SqlCommand(studentroomnum, conn);
                SqlCommand studentmessnamecom = new SqlCommand(studentmessname, conn);
                SqlCommand studentfloorcom = new SqlCommand(studentfloor, conn);

                string ownernamestans = studentnamestcom.ExecuteScalar().ToString();
                string studentroomnumans= studentroomnumcom.ExecuteScalar().ToString();
                string studentmessnameans= studentmessnamecom.ExecuteScalar().ToString();
                string studentfloorcomans = studentfloorcom.ExecuteScalar().ToString();

                string delfrombooking = "delete from [booking] where susername='" + stdsec.SelectedItem.Text + "'";
                SqlCommand delfrombookingcom = new SqlCommand(delfrombooking, conn);
                delfrombookingcom.ExecuteScalar();

                string updaterooms = "update [rooms] set status='Booked' where username='"+ ownernamestans + "' and roomnum='"+ studentroomnumans + "'";
                SqlCommand updateroomscom = new SqlCommand(updaterooms, conn);
                updateroomscom.ExecuteScalar();


                string insertstudentbooking = "insert into [studentbooking](username,roomnum,floor,messname,ownerid) values(@username1,@roomnum1,@floor1,@messname1,@ownerid1)";
                SqlCommand insertstudentbookingcom = new SqlCommand(insertstudentbooking, conn);
                insertstudentbookingcom.Parameters.AddWithValue("@username1", stdsec.SelectedItem.Text);
                insertstudentbookingcom.Parameters.AddWithValue("@roomnum1", studentroomnumans);
                insertstudentbookingcom.Parameters.AddWithValue("@floor1", studentfloorcomans);
                insertstudentbookingcom.Parameters.AddWithValue("@messname1", studentmessnameans);
                insertstudentbookingcom.Parameters.AddWithValue("@ownerid1", ownernamestans);

                insertstudentbookingcom.ExecuteNonQuery();
                conn.Close();
                Session["muimui"] = "yes";
                Response.Redirect("Owner_Login.aspx");
            }
        }
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        if (Session["usname_o"] != null)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string delfrombooking = "delete from [booking] where susername='" + stdsec.SelectedItem.Text + "'";
                SqlCommand delfrombookingcom = new SqlCommand(delfrombooking, conn);
                delfrombookingcom.ExecuteScalar();
                Session["muimui2"] = "yes";
                conn.Close();
                Response.Redirect("Owner_Login.aspx");
            }
        }
    }
}