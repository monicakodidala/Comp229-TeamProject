using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class CollectionDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Gets collection details based on the item and redirects to respective collection item update page on clicking update
            string CollectionID = Request.QueryString["CollectionID"];
            UpdateLink.NavigateUrl = String.Format("~/UpdateCollection.aspx?CollectionID={0}", CollectionID);
            SqlConnection connection = new SqlConnection("Server = Localhost\\SQLEXPRESS;Database = Comp229TeamProject;Integrated Security=True");
            SqlCommand comm = new SqlCommand("SELECT * from Collections where CollectionID= '" + CollectionID + "'", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();

                while (reader.Read())
                {
                    LblTitle.Text = (reader["Title"] == null) ? string.Empty: reader["Title"].ToString();
                    LblAuthor.Text = (reader["Author"] == null) ? string.Empty : reader["Author"].ToString();
                    LblISBN.Text = (reader["ISBN"] == null) ? string.Empty : reader["ISBN"].ToString();
                    LblShortDescription.Text = (reader["ShortDescription"] == null) ? string.Empty : reader["ShortDescription"].ToString();
                    LblReviewScore.Text = (reader["ReviewScore"] == null) ? string.Empty : reader["ReviewScore"].ToString();
                }

                connection.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void BtnUpdte_Click(object sender, EventArgs e)
        {
            
        }
    }
}