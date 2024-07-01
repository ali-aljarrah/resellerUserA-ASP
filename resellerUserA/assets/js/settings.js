const emailToValidate = 'a@a.com';
const emailRegexp = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;

// Update password 
$('#btnsubmit_password').on('click', function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);
    let current_password = $('input[name=current_password]').val();
    let password_new = $('input[name=password_new]').val();

    if (current_password.trim() == '') {
        toastr.error("Current Password Required: Please Provide Your Current Password");
        $(this).prop('disabled', false);
        return;
    }
    if (password_new.trim() == '') {
        toastr.error("New Password Required: Please Provide Your New Password");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Password updated Successfully!");

    $(this).prop('disabled', false);

});

// Update personal details
$('#btnsubmit_personal').on('click', function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);

    let name = $('input[name=name]').val();
    let phone = $('input[name=phone]').val();
    let company = $('input[name=company]').val();
    let country = $('select[name=country]').val();

    if (name.trim() == '') {
        toastr.error("Name Required: Please Provide Your Name");
        $(this).prop('disabled', false);
        return;
    }

    let phoneNumber = phone;
    let patt = new RegExp(/^\+?[0-9]{8,15}$/g); //This is the regex for validation phone number
    let res = patt.test(phoneNumber);

    if (phone.trim() == '' || res == false) {
        toastr.error("Phone Number Required: Please Provide Your Phone Number");
        $(this).prop('disabled', false);
        return;
    }

    if (company.trim() == '') {
        toastr.error("Company Name Required: Please Provide Your Company Name");
        $(this).prop('disabled', false);
        return;
    }

    if (country.trim() == '' || country.trim() == 'Unknown') {
        toastr.error("Country Required: Please Provide Your Country");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Profile details updated Successfully!");

    $(this).prop('disabled', false);

});

// Update API password
$('#btnsubmit_api_pass').click(function(e) {
    e.preventDefault();
    $(this).prop('disabled', true);
    let api_password = $('#api_pass').val();
    if (api_password.trim() == '') {
        toastr.error("Please enter your API password");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("API password updated Successfully!");

    $(this).prop('disabled', false);
});

// Update IP whitelisting
$('#btnsubmit_api_ip').click(function(e) {
    e.preventDefault();
    $(this).prop('disabled', true);
    let api_ip = $('#api_ip').val();

    if (api_ip.trim() == '') {
        toastr.error("Please enter your IP");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("IP whitelist updated Successfully!");

    $(this).prop('disabled', false);
})

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

// Update Balance settings
$('#btnsubmit_alert').on('click', function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);
    if (!$('#low_balance_checkbox').is(':checked')) {
        toastr.success("Balance notifications disabled Successfully");
        $(this).prop('disabled', false);
        return;
    } else {
        let low_balance_amount = $('input[name=low_balance_amount]').val();
        let low_balance_email = $('input[name=low_balance_email]').val();

        if (low_balance_amount.trim() == '') {
            toastr.error("Balance Alert Amount Required: Please Provide Your Desired Amount");
            $(this).prop('disabled', false);
            return;
        }

        if (low_balance_email.trim() == '') {
            toastr.error("Alert Email Required: Please Provide Your Email Address");
            $(this).prop('disabled', false);
            return;
        }

        if (!emailRegexp.test(low_balance_email)) {
            toastr.error("Invalid Alert Email: Please Enter a Valid Email Address");
            $(this).prop('disabled', false);
            return;
        }
        toastr.success("Balance notifications enabled Successfully");
        $(this).prop('disabled', false);
        return;

    }
});

// Update webhook settings
$('#btnsubmit_dlr').on('click', function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);
    let dlr = $('input[name=dlr]').val();
    if (dlr.trim() == '') {
        toastr.error("Please enter DLR URL");
        $(this).prop('disabled', false);
        return;
    }
    toastr.success("DLR URL updated Successfully!");

    $(this).prop('disabled', false);
});