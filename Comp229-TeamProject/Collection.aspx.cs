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
            
            //Selects all item details from collection tables
            SqlConnection connection = new SqlConnection("Server = Localhost\\SQLEXPRESS;Database = Comp229TeamProject;Integrated Security=True");
            SqlCommand comm = new SqlCommand("SELECT * from Collections", connection);
            try
            {
                //Binds the data and displays 
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
