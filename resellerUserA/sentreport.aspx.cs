using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerUserA
{
    public partial class sentreport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void exportSentReport_Click(object sender, EventArgs e)
        {
            string script;

            if (date_from.Value == "")
            {
                script = "toastr.error(\"Please enter start date!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }
            if (date_to.Value == "")
            {
                script = "toastr.error(\"Please enter finish date!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Request received, Download link will be showing in the section down once ready, Note that exporting will take some time depending on the data size.\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}