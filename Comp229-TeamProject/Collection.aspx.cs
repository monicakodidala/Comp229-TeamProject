﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class Collection : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(DatabaseConnection.SqlConnectionString);
            SqlCommand comm = new SqlCommand("SELECT ImageUrl,BookTitle,Author,ISBN,ShortDescription,ReviewScore from Collections", connection);
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

        protected void BookImg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CollectionDetails.aspx");
        }
    }

}
