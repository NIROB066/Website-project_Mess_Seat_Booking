using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mese_Seat_Booking_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string masq = "select hotnews from [admin] where username='admin01'";
        SqlCommand masqcom = new SqlCommand(masq, conn);
        string masqans = masqcom.ExecuteScalar().ToString();
        masqueetext.Text = masqans;
        if(Session["studentloginsession"]!=null)
        {
            if(Session["seshholo"]!=null)
            {
                Response.Write("<script>alert('Booking request sent to owner,contact to owner with the phone number given,Complete payment,And your request will be accepted!!!');</script>");
                Session["seshholo"] = null;
            }
            if(Session["updatestddone"]!=null)
            {
                Response.Write("<script>alert('Updated Successfully!!!');</script>");
                Session["updatestddone"] = null;
            }
            userlabel.Text = Session["studentloginsession"].ToString();
            if(!IsPostBack)
            {
                string sname = "select Firstname from [Table1] where Username='" + Session["studentloginsession"].ToString() + "'";
                string spn = "select Phone from [Table1] where Username='" + Session["studentloginsession"].ToString() + "'";
                string semail = "select Email from [Table1] where Username='" + Session["studentloginsession"].ToString() + "'";
                string sbookroom = "select roomnum from [studentbooking] where username='" + Session["studentloginsession"].ToString() + "'";
                string sbookmess = "select messname from [studentbooking] where username='" + Session["studentloginsession"].ToString() + "'";

                string sbookroomcount= "select count(roomnum) from [studentbooking] where username='" + Session["studentloginsession"].ToString() + "'";
                SqlCommand sbookroomcountcom = new SqlCommand(sbookroomcount, conn);
                string sbookroomcountans = sbookroomcountcom.ExecuteScalar().ToString();

                SqlCommand snamecom = new SqlCommand(sname, conn);
                SqlCommand spncom = new SqlCommand(spn, conn);
                SqlCommand semailcom = new SqlCommand(semail, conn);
                if(sbookroomcountans!="0")
                {
                    SqlCommand sbookroomcom = new SqlCommand(sbookroom, conn);
                    SqlCommand sbookmesscom = new SqlCommand(sbookmess, conn);
                    TextBox6.Text = sbookroomcom.ExecuteScalar().ToString();
                    TextBox7.Text = sbookmesscom.ExecuteScalar().ToString();
                }
                else
                {
                    TextBox6.Text = "nill";
                    TextBox7.Text = "nill";
                }
                


                TextBoxdetails.Text = snamecom.ExecuteScalar().ToString();
                TextBox2.Text = spncom.ExecuteScalar().ToString();
                TextBox4.Text = semailcom.ExecuteScalar().ToString();
                






            }
        }
        
        conn.Close();
    }

    protected void Update_Click(object sender, EventArgs e)
    {
        if (Session["studentloginsession"] != null)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string namecng = "update [Table1] set Firstname='" + TextBoxdetails.Text + "'where Username='" + Session["studentloginsession"].ToString() + "'";
                string phonecng = "update [Table1] set Phone='" + TextBox2.Text + "'where Username='" + Session["studentloginsession"].ToString() + "'";
                string passcng = "update [Table1] set Password='" + TextBox5.Text + "'where Username='" + Session["studentloginsession"].ToString() + "'";
                string emailcng = "update [Table1] set Email='" + TextBox4.Text + "'where Username='" + Session["studentloginsession"].ToString() + "'";


                SqlCommand namecngcom = new SqlCommand(namecng, conn);
                SqlCommand phonecngcom = new SqlCommand(phonecng, conn);
                SqlCommand passcngcom = new SqlCommand(passcng, conn);
                SqlCommand emailcngcom = new SqlCommand(emailcng, conn);


                namecngcom.ExecuteScalar();
                phonecngcom.ExecuteScalar();
                passcngcom.ExecuteScalar();
                emailcngcom.ExecuteScalar();

                Session["updatestddone"] = "yes";
                Response.Redirect("Student.aspx");
                conn.Close();
            }
        }
    }

    protected void userbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}