using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
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