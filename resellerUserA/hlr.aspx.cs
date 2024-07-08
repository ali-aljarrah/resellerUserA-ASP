using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerUserA
{
    public partial class hlr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void hlr_lookup_btn_Click(object sender, EventArgs e)
        {
            string script;
            string pattern = @"^[+]*[(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]*$";

            if (number.Value.Trim() == "" || !Regex.IsMatch(number.Value, pattern))
            {
                script = " toastr.error(\"Invalid number, Use International Format (e.g. 467XXX XXXXXX)\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            msisdn.InnerHtml = "60148327590";
            msisdn_type.InnerHtml = "MOBILE";
            state.InnerHtml = "Valid";
            home_country.InnerHtml = "Malaysia";
            network.InnerHtml = "Celcom";
            mcc_mnc.InnerHtml = "50213";
            ported.InnerHtml = "False";
            roaming.InnerHtml = "False";
            description.InnerHtml = "Absent Subscriber";
            error.InnerHtml = "27";


            script = "toastr.success(\"HLR Lookup is Done!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}