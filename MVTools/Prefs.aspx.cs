using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVTools.MVDBTableAdapters;

namespace MVTools
{
    public partial class Prefs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                bindData();
            }

        }
       
        protected void prefGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            prefGrid.EditIndex = e.NewEditIndex;
            bindData();

        }

        protected void bindData()
        {
            PREFTableAdapter prefTable = new PREFTableAdapter();
            
            prefGrid.DataSource = prefTable.GetPrefs();
            prefGrid.DataBind();
        }

        protected void prefGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
       

            string user = Convert.ToString(e.NewValues["USER"]);
            string id = Convert.ToString(e.NewValues["ID"]);
            string details = Convert.ToString(e.NewValues["DETAILS"]);
            
            PREFTableAdapter prefTable = new PREFTableAdapter();

           
            prefTable.UpdatePref(user, details, id);

            prefGrid.EditIndex = -1;
            bindData();

        

    
        }

  
        
    }

}