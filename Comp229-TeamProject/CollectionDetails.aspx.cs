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
            string CollectionID = Request.QueryString["CollectionID"];
            UpdateLink.NavigateUrl = String.Format("~/UpdateCollection.aspx?ID={0}", CollectionID);
        }

        protected void BtnUpdte_Click(object sender, EventArgs e)
        {
            
        }
    }
}