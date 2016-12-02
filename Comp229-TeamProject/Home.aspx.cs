using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Gets 3 recently added items from the collections table
            SqlConnection connection = new SqlConnection("Server = MONICA\\MONICASQLEXPRESS;Database = Comp229TeamProject;Integrated Security=True");
            SqlCommand comm = new SqlCommand("Select top 3 Title,CollectionID,ImageURL from Collections order by DateAdded DESC", connection);
            try
            {
                //Binds the data
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();

                Books1.DataSource = reader;
                Books1.DataBind();

                connection.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void LibraryWorkshop_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.torontopubliclibrary.ca/programs-and-classes/");
        }

        protected void KidsWorkshop_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.torontopubliclibrary.ca/kidsspace/programsandeventsadu.html");
        }

        protected void FreeTickets_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.torontopubliclibrary.ca/museum-arts-passes/");
        }
    }
}