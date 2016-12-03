using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Comp229_TeamProject.Models;
using System.Data.SqlClient;

namespace Comp229_TeamProject.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            //Checks for duplicate email id in the database
            SqlConnection connection = new SqlConnection("Server = localhost\\SQLEXPRESS;Database = Comp229TeamProject;Integrated Security=True");
            SqlCommand comm = new SqlCommand("Select * from [dbo].[Users] where EmailID= '" + Email.Text + "'",connection);



            connection.Open();
            int? count = (int?)comm.ExecuteScalar();
            connection.Close();

            if (count != null && count > 0)
            {
                lblEmailError.Text = "Email Id already Exists";
                lblEmailError.Visible = true;
            }
            else
            {
                //Inserts user info with registration date to the database and redirects to login page after registration
                SqlCommand comm1 = new SqlCommand("INSERT INTO Users(LastName, FirstName,Password,EmailID,RegistrationDate) VALUES('" + TxtLastname.Text + "', '" + TxtFirstname.Text + "','" + Password.Text + "','" + Email.Text + "','" + DateTime.Now + "'); ", connection);
                try
                {
                    connection.Open();
                    comm1.ExecuteNonQuery();

                    connection.Close();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}