using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerUserA
{
    public partial class sms_temp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void savetempbtn_Click(object sender, EventArgs e)
        {
            string script;

            if(temp_name.Value.Trim() == "" )
            {
                script = "toastr.error(\"Please enter template name\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (temp_msg.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter template message body\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "  toastr.success(\"Template saved Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}