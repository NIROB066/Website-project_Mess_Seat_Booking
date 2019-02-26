using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mese_Seat_Booking_ownerpersonalpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usname_o"] != null)
        {
            if(Session["up"]!=null)
            {
                Response.Write("<script>alert('Updated successfully!!!');</script>");
                Session["up"] = null;
            }
        }
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string masq = "select hotnews from [admin] where username='admin01'";
        SqlCommand masqcom = new SqlCommand(masq, conn);
        string masqans = masqcom.ExecuteScalar().ToString();
        masqueetext.Text = masqans;
        conn.Close();
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn1.Open();
        if(!IsPostBack)
        {
            if (Session["usname_o"] != null)
            {
                string fstnames = "select Firstname from [Table1] where username='"+ Session["usname_o"] .ToString()+ "'";
                string addresss = "select Address from [Table1] where username='" + Session["usname_o"].ToString() + "'";
                string phonenums = "select Phone from [Table1] where username='" + Session["usname_o"].ToString() + "'";
                string emails = "select Email from [Table1] where username='" + Session["usname_o"].ToString() + "'";

                SqlCommand fstnamescom = new SqlCommand(fstnames, conn1);
                SqlCommand addressscom = new SqlCommand(addresss, conn1);
                SqlCommand phonenumscom = new SqlCommand(phonenums, conn1);
                SqlCommand emailscom = new SqlCommand(emails, conn1);


                TextBoxdetails.Text = fstnamescom.ExecuteScalar().ToString();
                TextBox1.Text = addressscom.ExecuteScalar().ToString();
                TextBox2.Text = phonenumscom.ExecuteScalar().ToString();
                TextBox4.Text = emailscom.ExecuteScalar().ToString();



            }
        }
        conn1.Close();
    }

    protected void Update_Click(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn1.Open();
        if (Session["usname_o"] != null)
        {
            if(IsPostBack)
            {
                string upfstname = "update [Table1] set Firstname='"+ TextBoxdetails .Text+ "' where username='" + Session["usname_o"].ToString() + "'";
                string upaddress = "update [Table1] set Address='" + TextBox1.Text + "' where username='" + Session["usname_o"].ToString() + "'";
                string upphone = "update [Table1] set Phone='" + TextBox2.Text + "' where username='" + Session["usname_o"].ToString() + "'";
                string upemail = "update [Table1] set Email='" + TextBox4.Text + "' where username='" + Session["usname_o"].ToString() + "'";
                string uppassword = "update [Table1] set Password='" + TextBox5.Text + "' where username='" + Session["usname_o"].ToString() + "'";

                SqlCommand upfstnamecom = new SqlCommand(upfstname, conn1);
                SqlCommand upaddresscom = new SqlCommand(upaddress, conn1);
                SqlCommand upphonecom = new SqlCommand(upphone, conn1);
                SqlCommand upemailcom = new SqlCommand(upemail, conn1);
                SqlCommand uppasswordcom = new SqlCommand(uppassword, conn1);


                upfstnamecom.ExecuteScalar();
                upaddresscom.ExecuteScalar();
                upphonecom.ExecuteScalar();
                upemailcom.ExecuteScalar();
                uppasswordcom.ExecuteScalar();

                Session["up"] = "yes";
                Response.Redirect("ownerpersonalpage.aspx");

            }
        }
        conn1.Close();
    }
}