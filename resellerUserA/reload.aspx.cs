using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerUserA
{
    public partial class reload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void payPalBtn_Click(object sender, EventArgs e)
        {
            validateInputs();
        }

        protected void cryptoBtn_Click(object sender, EventArgs e)
        {
            validateInputs();
        }

        public void validateInputs ()
        {
            string script;
            string ReloadOption = Request.Form["ReloadOption"];

            if (ReloadOption == null)
            {
                script = "toastr.error(\"Please select options to reload!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            string[] parts = ReloadOption.Split('|');

            string price = parts[0];
            string plan = parts[1];

            script = "onSubmitSuccess();";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
        }
    }
}