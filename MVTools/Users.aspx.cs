using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVTools.MVDBTableAdapters;


namespace MVTools
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                MVUSERTableAdapter userTable = new MVUSERTableAdapter();
                userGrid.DataSource = userTable.GetUsers();
                userGrid.DataBind();
            }
        }
    }
}