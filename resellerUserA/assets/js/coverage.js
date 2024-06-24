$('#coverage-table').DataTable({
    dom: "<'d-flex justify-content-between align-items-center flex-column flex-md-row mb-5'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'B>>" +
    "<'row'<'col-sm-12'tr>>" +
    "<'d-flex justify-content-between align-items-center flex-column flex-md-row mb-5'<''l><''i><''p>>",
    buttons: [
        'csv', 'excel', 'pdf'
    ],
});