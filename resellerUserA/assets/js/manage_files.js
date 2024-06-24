$('.delete-file').click(function(e) {
    Swal.fire({
        title: 'Are you sure this file?',
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
            'Your file has been deleted.',
            'success'
          )
        }
      })
});

$("#attach1").change(function () {
    var fileExtension = ['txt', 'csv', 'xls', 'xlsx'];
    if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
        toastr.error("File format invalid");
        $("#attach1").val("");
    }
});

$('#upload').click(function(e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    var uploaded_file = $("#attach1");

    var fileExtension = ['txt', 'csv', 'xls', 'xlsx'];
    if ($.inArray(uploaded_file.val().split('.').pop().toLowerCase(), fileExtension) == -1) {
        toastr.error("File format invalid");
        $("#attach1").val("");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("File uploaded Successfully!");

    $(this).prop('disabled', false);

});