function opentab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

function paymentSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    const ReloadOption = document.querySelectorAll("input[name=ReloadOption]:checked");

    if (ReloadOption.length <= 0) {
        toastr.error("Please choose reload option!");

        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}

function uncheckAllRadios() {
    document.querySelectorAll('input[name=ReloadOption]').forEach(function (radio) {
        radio.checked = false;
    });
}

function onSubmitSuccess() {
    toastr.success("Your payment is done!");
    uncheckAllRadios();
}