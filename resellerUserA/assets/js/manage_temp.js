function saveNewTemplate(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var temp_name = document.getElementById("temp_name").value;
    var temp_msg = document.getElementById("temp_msg").value;

    if (temp_name.trim() == '') {
        toastr.error("Please enter template name");
        el.disabled = false;
        return false;
    }

    if (temp_msg.trim() == '') {
        toastr.error("Please enter template message body");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}

$('.delete-temp').click(function(e) {
    Swal.fire({
        title: 'Are you sure this template?',
        text: "You won't be able to revert this!",
        icon: 'error',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Delete'
      }).then((result) => {
        if (result.isConfirmed) {
          Swal.fire(
            'Deleted!',
            'Your template has been deleted.',
            'success'
          )
        }
      })
});