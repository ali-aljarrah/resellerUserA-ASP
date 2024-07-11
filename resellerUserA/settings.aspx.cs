using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerUserA
{
    public partial class settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_personal_Click(object sender, EventArgs e)
        {
            string script = "";
            var reg = new Regex(@"^\+?[0-9]{8,15}$");

            if (name.Value.Trim() == "")
            {
                script = "toastr.error(\"Name Required: Please Provide Your Name\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (!reg.IsMatch(phone.Value) || phone.Value.Trim() == "") 
            {
                script = "toastr.error(\"Phone Number Required: Please Provide Your Phone Number\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if(company.Value.Trim() == "")
            {
                script = "toastr.error(\"Company Name Required: Please Provide Your Company Name\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if(country.Value.Trim() == "" || country.Value == "Unknown")
            {
                script = "toastr.error(\"Country Required: Please Provide Your Country\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Profile details updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void btnsubmit_password_Click(object sender, EventArgs e)
        {
            string script = "";

            if (current_password.Value.Trim() == "")
            {
                script = "toastr.error(\"Current Password Required: Please Provide Your Current Password\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (password_new.Value.Trim() == "")
            {
                script = "toastr.error(\"New Password Required: Please Provide Your New Password\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Password updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void btnsubmit_2fa_Click(object sender, EventArgs e)
        {
            string script = "toastr.success(\"Two factor authentication updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void btnsubmit_api_pass_Click(object sender, EventArgs e)
        {
            string script = "";

            if (api_pass.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your API password\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"API password updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void btnsubmit_api_ip_Click(object sender, EventArgs e)
        {
            string script = "";

            if (api_ip.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your IP\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"IP whitelist updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void btnsubmit_dlr_Click(object sender, EventArgs e)
        {
            string script = "";

            if (dlr.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter DLR URL\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"DLR URL updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void btnsubmit_alert_Click(object sender, EventArgs e)
        {
            string script = "";
            var reg = new Regex(@"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");

            if (!low_balance_checkbox.Checked)
            {
                script = "toastr.success(\"Balance notifications disabled Successfully\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            } else
            {
                if(low_balance_amount.Value.Trim() == "")
                {
                    script = "toastr.error(\"Balance Alert Amount Required: Please Provide Your Desired Amount\"); enableNotificationInputs();";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                if(low_balance_email.Value.Trim() == "")
                {
                    script = "toastr.error(\"Alert Email Required: Please Provide Your Email Address\"); enableNotificationInputs();";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }
                
                if(!reg.IsMatch(low_balance_email.Value))
                {
                    script = "toastr.error(\"Invalid Alert Email: Please Enter a Valid Email Address\"); enableNotificationInputs();";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                script = "toastr.success(\"Balance notifications enabled Successfully\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;

            }
        }
    }
}