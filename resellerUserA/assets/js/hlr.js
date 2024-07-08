function hlrSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var number = document.getElementById("number").value;

    if (!/^[+]*[(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]*$/g.test(number) || number.trim() == '') {
        toastr.error("Invalid number, Use International Format (e.g. 467XXX XXXXXX)");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}