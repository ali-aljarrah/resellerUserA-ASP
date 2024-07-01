"use strict";
var checkCaptch = false;
var recaptchaCallback = function (response) {
    if (response == "") {
        checkCaptch = false;
    }
    else {
        checkCaptch = true;
    }
};



var KTAuthResetPassword = (function () {
    var t, e, i;

    return {

        init: function () {

            (t = document.querySelector("#kt_password_reset_form")),
                (e = document.querySelector("#kt_password_reset_submit")),
                (i = FormValidation.formValidation(t, {
                    fields: { email: { validators: { regexp: { regexp: /^[^\s@]+@[^\s@]+\.[^\s@]+$/, message: "The value is not a valid email address" }, notEmpty: { message: "Email address is required" } } } },
                    plugins: { trigger: new FormValidation.plugins.Trigger(), bootstrap: new FormValidation.plugins.Bootstrap5({ rowSelector: ".fv-row", eleInvalidClass: "", eleValidClass: "" }) },
                })),

                e.addEventListener("click", function (r) {
                    r.preventDefault(),
                        i.validate().then(function (i) {

                            function isCaptchaChecked() {
                                return grecaptcha && grecaptcha.getResponse().length !== 0;
                            }

                            if (checkCaptch && grecaptcha.getResponse() != "") {
                                //Write your success code here
                            }
                            else {
                                Swal.fire({
                                    text: "Solve the Recaptcha to Continue.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok",
                                    customClass: { confirmButton: "btn btn-primary" },
                                });
                                return;
                            }
                            "Valid" == i
                                ? (e.setAttribute("data-kt-indicator", "on"),
                                    (e.disabled = !0),

                                    document.getElementById("kt_password_reset_form").submit(),
                                    setTimeout(function () {

                                        t.removeAttribute("data-kt-indicator"),
                                            (t.disabled = !1)

                                    }, 30000))
                                : Swal.fire({
                                    text: "Oops! It seems like there are some issues with the reset password form you submitted. Please try again.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok",
                                    customClass: { confirmButton: "btn btn-primary" },
                                });
                        });
                });
        },
    };
})();
KTUtil.onDOMContentLoaded(function () {
    KTAuthResetPassword.init();
});