using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Mese_Seat_Booking_Registration : System.Web.UI.Page
{
    int temp;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [Table1] where Username='"+ main_p2.Text +"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if(temp >= 1)
            {
                Response.Write("User already exists");
                submitsms.Text = "User already Exists!!!";

            }
            conn.Close();

        }
       
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            if (CheckBoxList2.SelectedItem.Text != "Student")
            {
                if (temp == 0)
                {

                    Guid newguid = Guid.NewGuid();
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    conn.Open();
                    string insertQuery = "insert into [request] (firstname,username,email,address,phone,password,gender,usertype) values(@fname,@lname,@email1,@address1,@phone1,@password1,@Gender1,@type1)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@fname", main_p1.Text);
                    com.Parameters.AddWithValue("@lname", main_p2.Text);
                    com.Parameters.AddWithValue("@email1", email.Text);
                    com.Parameters.AddWithValue("@address1", address.Text);
                    com.Parameters.AddWithValue("@phone1", con_num.Text);
                    com.Parameters.AddWithValue("@password1", Password1.Text);
                    com.Parameters.AddWithValue("@Gender1", CheckBoxList1.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@type1", CheckBoxList2.SelectedItem.ToString());

                    com.ExecuteNonQuery();

                    string useridk = "select username from [request] where firstname ='" + main_p1.Text + "'";
                    SqlCommand uidchk = new SqlCommand(useridk, conn);
                    string uidchks = uidchk.ExecuteScalar().ToString().Replace(" ", "");
                    Session["euid"] = uidchks;


                    string usertypek = "select usertype from [request] where firstname ='" + main_p1.Text + "'";
                    SqlCommand utypechk = new SqlCommand(usertypek, conn);
                    string utypechks = utypechk.ExecuteScalar().ToString();
                    Session["etyped"] = utypechks;

                    if (Session["etyped"].ToString().Replace(" ", "") == "Owner".ToString())
                    {
                        conn.Close();
                        Session["firsttimeorsecond"] = "yes";
                        Response.Redirect("EspecialOwnerReg.aspx");

                    }
                    else
                    {
                        Response.Redirect("main.aspx");
                    }

                    submitsms.Text = "Registration is successful!!!";


                    Session["chk"] = "yes";
                    conn.Close();
                }
                else
                {
                    Session["fstnames"] = main_p1.Text;
                    Session["emails"] = email.Text;
                    Session["addresss"] = address.Text;
                    Session["phones"] = con_num.Text;
                    Session["passwords"] = Password1.Text;
                    Session["genders"] = CheckBoxList1.SelectedItem.ToString();
                    Session["types"] = CheckBoxList2.SelectedItem.ToString();
                    submitsms.Text = "User already Exists!!!";
                    Response.Redirect("Reg2.aspx");
                    Response.Write("User already exists");
                }

            }
            if(CheckBoxList2.SelectedItem.Text == "Student")
            {
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn1.Open();
                string insertQuery = "insert into [studentreq] (firstname,username,email,address,phone,password,gender) values(@fname,@lname,@email1,@address1,@phone1,@password1,@Gender1)";
                SqlCommand com = new SqlCommand(insertQuery, conn1);
                com.Parameters.AddWithValue("@fname", main_p1.Text);
                com.Parameters.AddWithValue("@lname", main_p2.Text);
                com.Parameters.AddWithValue("@email1", email.Text);
                com.Parameters.AddWithValue("@address1", address.Text);
                com.Parameters.AddWithValue("@phone1", con_num.Text);
                com.Parameters.AddWithValue("@password1", Password1.Text);
                com.Parameters.AddWithValue("@Gender1", CheckBoxList1.SelectedItem.ToString());
               

                com.ExecuteNonQuery();
                conn1.Close();
                Response.Redirect("main.aspx");
            }
        }
            
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

    }

    protected void main_p1_TextChanged(object sender, EventArgs e)
    {
        if(main_p1.ReadOnly==false)
        {
            main_p1.ReadOnly = true;
        }
    }
}