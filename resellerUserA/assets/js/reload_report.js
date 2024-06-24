$('#reload-report-table').DataTable({
    "language": {
        "lengthMenu": "Show _MENU_",
    },
    "dom":
        "<'row'" +
        "<'col-sm-6 d-flex mb-5 align-items-center justify-content-start'f>" +
        "<'col-sm-6 text-end'>" +
        ">" +

        "<'table-responsive'tr>" +

        "<'row'" +
        "<'col-sm-12 col-md-5 d-flex align-items-center justify-content-center justify-content-md-start'l>" +
        "<'col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end'p>" +
        ">", "ordering": false
});