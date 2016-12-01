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
            //Inserts user info with registration date to the database and redirects to login page after registration
            SqlConnection connection = new SqlConnection("Server = MONICA\\MONICASQLEXPRESS;Database = Comp229TeamProject;Integrated Security=True");
            SqlCommand comm = new SqlCommand("INSERT INTO Users(LastName, FirstName,Password,EmailID,RegistrationDate) VALUES('" + TxtLastname.Text + "', '" + TxtFirstname.Text + "','" + Password.Text + "','" + Email.Text + "','" + DateTime.Now + "'); ", connection);
            try
            {
                connection.Open();
                comm.ExecuteNonQuery();

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