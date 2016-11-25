using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace Comp229_TeamProject
{
    public class DatabaseConnection
    {
      static public String SqlConnectionString
        {
            get
            {
                return WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            }
        }
    }
}