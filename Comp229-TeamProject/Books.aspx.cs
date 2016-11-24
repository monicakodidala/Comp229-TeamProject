using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class Books : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            SqlConnection connection = new SqlConnection("Server = MONICA\\MONICASQLEXPRESS;Database = Comp229TeamProject;Integrated Security=True");
            SqlCommand comm = new SqlCommand("SELECT * FROM Collections", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();

                GridViewBooks.DataSource = reader;
                GridViewBooks.DataBind();

                connection.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }

}
