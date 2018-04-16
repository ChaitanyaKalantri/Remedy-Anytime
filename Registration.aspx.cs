using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataBaseClass dbClass = new DataBaseClass();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string chkUser = "Select * FROM [UsersRegistration] where UserEmailID1='" + TextBox4.Text + "'";
            dt = dbClass.ConnectDataBaseReturnDT(chkUser);
            if (dt.Rows.Count > 0)
            {

                lbl.Visible = true;
                lbl.Text = "User Already Exist";
            }
            else
            {
                SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["UserConnect"].ConnectionString);

                SqlCommand cmd = new SqlCommand("Insert INTO [UsersRegistration](UserName,UserContact1,UserContact2,UserEmailID1,UserEmailID2,UserCity) VALUES (@UserName,@UserContact1,@UserContact2,@UserEmailID1,@UserEmailID2,@UserCity)", conn);

                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@UserContact1", TextBox2.Text);
                cmd.Parameters.AddWithValue("@UserContact2", TextBox3.Text);
                cmd.Parameters.AddWithValue("@UserEmailID1", TextBox4.Text);
                cmd.Parameters.AddWithValue("@UserEmailID2", TextBox5.Text);
                cmd.Parameters.AddWithValue("@UserCity", TextBox6.Text);

                using (conn)
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }


                Response.Redirect("~/Default2.aspx");

            }
        }
    }

}