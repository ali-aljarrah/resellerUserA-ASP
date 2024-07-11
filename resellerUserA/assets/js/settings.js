const emailToValidate = 'a@a.com';
const emailRegexp = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;

// Update personal details
function profileInfoSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var name = document.getElementById("name").value;
    var phone = document.getElementById("phone").value;
    var company = document.getElementById("company").value;
    var country = document.getElementById("country").value;

    if (name.trim() == '') {
        toastr.error("Name Required: Please Provide Your Name");
        el.disabled = false;
        return false;
    }

    let phoneNumber = phone;
    let patt = new RegExp(/^\+?[0-9]{8,15}$/g); //This is the regex for validation phone number
    let res = patt.test(phoneNumber);

    if (phone.trim() == '' || res == false) {
        toastr.error("Phone Number Required: Please Provide Your Phone Number");
        el.disabled = false;
        return false;
    }


    if (company.trim() == '') {
        toastr.error("Company Name Required: Please Provide Your Company Name");
        el.disabled = false;
        return false;
    }

      if (country.trim() == '' || country.trim() == 'Unknown') {
        toastr.error("Country Required: Please Provide Your Country");
          el.disabled = false;
          return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}

// Update password 
function updatePasswordSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var current_password = document.getElementById("current_password").value; 
    var password_new = document.getElementById("password_new").value; 

    if (current_password.trim() == '') {
        toastr.error("Current Password Required: Please Provide Your Current Password");
        el.disabled = false;
        return false;
    }

    if (password_new.trim() == '') {
        toastr.error("New Password Required: Please Provide Your New Password");
        el.disabled = false;
        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}

// Update API password
function updateAPIPasswordSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var api_pass = document.getElementById("api_pass").value;

    if (api_pass.trim() == '') {
        toastr.error("Please enter your API password");
        el.disabled = false;
        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}

// Update IP whitelisting
function updateAPIIPubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var api_ip = document.getElementById("api_ip").value;

    if (api_ip.trim() == '') {
        toastr.error("Please enter your IP");
        el.disabled = false;
        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}

// Toggle balance settings checkbox
$('#low_balance_checkbox').on('change', function () {
    if ($(this).is(':checked')) {
        $('input[name=low_balance_amount]').prop("disabled", false);
        $('input[name=low_balance_email]').prop("disabled", false);
    } else {
        $('input[name=low_balance_amount]').prop("disabled", true);
        $('input[name=low_balance_email]').prop("disabled", true);
    }
});

function enableNotificationInputs() {
    $('input[name=low_balance_amount]').prop("disabled", false);
    $('input[name=low_balance_email]').prop("disabled", false);
}

// Update Balance settings
function updateNotification(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var low_balance_checkbox = document.getElementById("low_balance_checkbox");

    console.log(low_balance_checkbox.checked)
    if (low_balance_checkbox.checked == false) {
        __doPostBack(id, '');
        el.disabled = false;
        return false;
    } else {
        var low_balance_amount = document.getElementById("low_balance_amount").value;
        var low_balance_email = document.getElementById("low_balance_email").value;

        if (low_balance_amount.trim() == '') {
            toastr.error("Balance Alert Amount Required: Please Provide Your Desired Amount");
            el.disabled = false;
            return false;
        }

        if (low_balance_email.trim() == '') {
            toastr.error("Alert Email Required: Please Provide Your Email Address");
            el.disabled = false;
            return false;
        }

        if (!emailRegexp.test(low_balance_email)) {
            toastr.error("Invalid Alert Email: Please Enter a Valid Email Address");
            el.disabled = false;
            return false;
        }

        el.disabled = false;
        __doPostBack(id, '');
    }
}

// Update webhook settings
function dlrSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var dlr = document.getElementById("dlr").value;

    if (dlr.trim() == '') {
        toastr.error("Please enter DLR URL");
        el.disabled = false;
        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}