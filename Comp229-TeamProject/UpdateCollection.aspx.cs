using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class UpdateCollection : System.Web.UI.Page
    {
        //Gets information from database and binds the data.Done by Venkata
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                string CollectionID = Request.QueryString["CollectionID"];

                SqlConnection connection = new SqlConnection("Server = MONICA\\MONICASQLEXPRESS;Database = Comp229TeamProject;Integrated Security=True");
                SqlCommand comm = new SqlCommand("SELECT * from Collections where CollectionID= '" + CollectionID + "'", connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = comm.ExecuteReader();
                    //Binds the data. Done by Venkata
                    while (reader.Read())
                    {
                        TxtTitle.Text = (reader["Title"] == null) ? string.Empty : reader["Title"].ToString();
                        TxtAuthor.Text = (reader["Author"] == null) ? string.Empty : reader["Author"].ToString();
                        TxtShortDesc.Text = (reader["ShortDescription"] == null) ? string.Empty : reader["ShortDescription"].ToString();
                        TxtRevScore.Text = (reader["ReviewScore"] == null) ? string.Empty : reader["ReviewScore"].ToString();
                        CompletedList.SelectedIndex = (reader["CompletedStatusID"] == null) ? -1 : Convert.ToInt32(reader["CompletedStatusID"]);
                    }

                    connection.Close();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            //if the page is Valid then updates the information to collection table
            Page.Validate();
            if (Page.IsValid)
            {
                string CollectionID = Request.QueryString["CollectionID"];
                SqlConnection connection = new SqlConnection("Server = MONICA\\MONICASQLEXPRESS;Database = Comp229TeamProject;Integrated Security=True");
                SqlCommand comm = new SqlCommand("Update Collections set Title='" + TxtTitle.Text + "', Author='" + TxtAuthor.Text + "', ShortDescription='" + TxtShortDesc.Text + "',ReviewScore='" + TxtRevScore.Text + "',CompletedStatusID='" + CompletedList.SelectedItem.Value + "' Where CollectionID='" + CollectionID + "'", connection);
                
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
            }
        }
        //ImageClickEventArgs on cancel redirects to collection details with the details of selected item
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            string CollectionID = Request.QueryString["CollectionID"];
            Response.Redirect(String.Concat("CollectionDetails.aspx?CollectionID=", CollectionID));
        }
    }
}