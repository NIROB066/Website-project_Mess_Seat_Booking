using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Mese_Seat_Booking_StudentHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usname_o"] != null)
        {
            if(Session["nostdfound"]!=null)
            {
                Response.Write("<script>alert('No Student found...');</script>");
                Session["nostdfound"] = null;
            }
        }


            if (!IsPostBack)
        {
            SqlConnection conn12 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn12.Open();
            if (Session["usname_o"] != null)
            {
                string roomnumselect = "select roomnum from [rooms] where username='" + Session["usname_o"].ToString() + "'";
                SqlCommand roomnumselectcom = new SqlCommand(roomnumselect, conn12);
                roomsofowner.DataSource = roomnumselectcom.ExecuteReader();
                roomsofowner.DataTextField = "roomnum";
                roomsofowner.DataValueField = "roomnum";
                roomsofowner.DataBind();

                userlabel.Text = Session["usname_o"].ToString();
            }
            
            conn12.Close();
        }


       
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string masq = "select hotnews from [admin] where username='admin01'";
        SqlCommand masqcom = new SqlCommand(masq, conn);
        string masqans = masqcom.ExecuteScalar().ToString();
        masqueetext.Text = masqans;
        conn.Close();
    }

    protected void userbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
        Session["usname_o"] = null;
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        if(IsPostBack)
        {
            if (Session["usname_o"] != null)
            {
                string countsuser = "select count(username) from [studentbooking] where ownerid='" + Session["usname_o"].ToString() + "' and roomnum='" + roomsofowner.SelectedItem.Text + "'";
                SqlCommand cosusercom = new SqlCommand(countsuser, conn);
                string coususerans = cosusercom.ExecuteScalar().ToString();

                if(coususerans!="0")
                {
                    string suser = "select username from [studentbooking] where ownerid='" + Session["usname_o"].ToString() + "' and roomnum='" + roomsofowner.SelectedItem.Text + "'";
                    SqlCommand susercom = new SqlCommand(suser, conn);
                    string suserans = susercom.ExecuteScalar().ToString();
                    if (suserans != null)
                    {
                        string names = "select Firstname from [Table1] where Username='" + suserans + "'";
                        string addresss = "select Address from [Table1] where Username='" + suserans + "'";
                        string Phone = "select Phone from [Table1] where Username='" + suserans + "'";
                        string Emails = "select Email from [Table1] where Username='" + suserans + "'";


                        SqlCommand namescom = new SqlCommand(names, conn);
                        SqlCommand addressscom = new SqlCommand(addresss, conn);
                        SqlCommand Phonecom = new SqlCommand(Phone, conn);
                        SqlCommand Emailscom = new SqlCommand(Emails, conn);


                        snamelev.Text = namescom.ExecuteScalar().ToString();
                        kutta.Text = addressscom.ExecuteScalar().ToString();
                        kiyy.Text = Phonecom.ExecuteScalar().ToString();
                        Popp.Text = suserans;
                        fio.Text = Emailscom.ExecuteScalar().ToString();
                    }
                }
                else
                {
                    Session["nostdfound"] = "yes";
                    Response.Redirect("StudentHome.aspx");
                    
                }

                

                
                

            }
        }
        conn.Close();

    }
}