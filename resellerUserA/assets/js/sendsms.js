var templates = [
    {
        templateName: "Evacuation",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
    },
    {
        templateName: "First Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Second Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    }
];
var chooseTemplate = new bootstrap.Modal(document.getElementById("chooseTemplate"), {});
var saveTemplate = new bootstrap.Modal(document.getElementById("saveTemplate"), {});

$('#selecetContantBtn').click(function(e) {
    e.preventDefault();

    $('#first').empty();

    $('#first').append('<option value="">Select...</option>');

    $.each(contactGroups, function(i) {
        $('#first').append('<option value="'+contactGroups[i].name+'">'+contactGroups[i].name+'</option>');
    });

    selecetContant.show();
});

$('#first').change(function(e) {
    e.preventDefault();

    $('#first option:first').val('showAll');
    $('#first option:first').text('Show all');

    $('#select-all-contact').prop('checked', false);

    if($(this).find(":selected").val() == 'Test1') {
        $('#contact-table tbody').empty();
        $.each(contactGroupInfo1, function(i) {
            $('#contact-table tbody').append(`
                <tr class="fs-14 dark-color">
                    <td>
                        <div class="form-check form-check-custom form-check-success form-check-sm">
                            <input class="form-check-input contact-check" type="checkbox" value="`+contactGroupInfo1[i].ContactNumber+`"/>
                        </div>
                    </td>
                    <td>
                        `+contactGroupInfo1[i].GroupName+`
                    </td>
                    <td>
                        `+contactGroupInfo1[i].ContactName+`
                    </td>
                    <td class="number">
                        `+contactGroupInfo1[i].ContactNumber+`
                    </td>
                </tr>
            `);
        });
    }

    if($(this).find(":selected").val() == 'Test2') {
        $('#contact-table tbody').empty();
        $.each(contactGroupInfo2, function(i) {
            $('#contact-table tbody').append(`
                <tr class="fs-14 dark-color">
                    <td>
                        <div class="form-check form-check-custom form-check-success form-check-sm">
                            <input class="form-check-input contact-check" type="checkbox" value="`+contactGroupInfo2[i].ContactNumber+`"/>
                        </div>
                    </td>
                    <td>
                        `+contactGroupInfo2[i].GroupName+`
                    </td>
                    <td>
                        `+contactGroupInfo2[i].ContactName+`
                    </td>
                    <td class="number">
                        `+contactGroupInfo2[i].ContactNumber+`
                    </td>
                </tr>
            `);
        });
    }

    if($(this).find(":selected").val() == 'showAll') {
        $('#contact-table tbody').empty();

        $.each(contactGroupInfo1, function(i) {
            $('#contact-table tbody').append(`
                <tr class="fs-14 dark-color">
                    <td>
                        <div class="form-check form-check-custom form-check-success form-check-sm">
                            <input class="form-check-input contact-check" type="checkbox" value="`+contactGroupInfo1[i].ContactNumber+`"/>
                        </div>
                    </td>
                    <td>
                        `+contactGroupInfo1[i].GroupName+`
                    </td>
                    <td>
                        `+contactGroupInfo1[i].ContactName+`
                    </td>
                    <td class="number">
                        `+contactGroupInfo1[i].ContactNumber+`
                    </td>
                </tr>
            `);
        });
        $.each(contactGroupInfo2, function(i) {
            $('#contact-table tbody').append(`
                <tr class="fs-14 dark-color">
                    <td>
                        <div class="form-check form-check-custom form-check-success form-check-sm">
                            <input class="form-check-input contact-check" type="checkbox" value="`+contactGroupInfo2[i].ContactNumber+`"/>
                        </div>
                    </td>
                    <td>
                        `+contactGroupInfo2[i].GroupName+`
                    </td>
                    <td>
                        `+contactGroupInfo2[i].ContactName+`
                    </td>
                    <td class="number">
                        `+contactGroupInfo2[i].ContactNumber+`
                    </td>
                </tr>
            `);
        });
    }
});

$('#select-all-contact').change(function(e) {
    e.preventDefault();

    if($(this).is(':checked')) {
        $('.contact-check').each(function(i, item) {
            $(item).prop('checked', true);
        });
    } else {
        $('.contact-check').each(function(i, item) {
            $(item).prop('checked', false);
        });
    }
});

$('#importContantBtn').click(function(e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    if($('#first').find(":selected").val() == '') {
        toastr.error("Please select a group!");

        $(this).prop('disabled', false);
    } else {
        var numberArray = [];

        var checkedInputs = $('input.contact-check:checked').length;

        if(checkedInputs == 0) {
            toastr.error("Please select contacts!");

            $(this).prop('disabled', false);
        } else {
            $('input.contact-check:checked').each(function(i, item) {
                numberArray.push($(item).val());
            });

            var newMobileNumber = '';

            for(let i = 0; i < numberArray.length; i++) {
                newMobileNumber += numberArray[i]+',';
            }

            $('#txtNumber').val(newMobileNumber);

            $(this).prop('disabled', false);

            selecetContant.hide();
        }
    }
});

$('#chooseTemplateBtn').click(function(e) {
    e.preventDefault();

    console.log('test');

    $('#templates-table tbody').empty();

    $.each(templates, function(i) {
        $('#templates-table tbody').append(`
            <tr class="fs-14 dark-color">
                <td>
                    <div class="form-check form-check-custom form-check-success form-check-solid">
                        <input class="form-check-input select-template" type="radio" value="`+templates[i].templateText+`" name="selectTempalte"/>
                    </div>
                </td>
                <td class="fs-14 black-color-1">
                    `+templates[i].templateName+`
                </td>
                <td>
                  <div class="p-2 black-color-1 fs-12 rounded bg-gray">  `+templates[i].templateText+`</div>
                </td>
            </tr>
        `);
    });

    chooseTemplate.show();
});

$('#chooseTemplateSubmitBtn').click(function(e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    if ($('input[name="selectTempalte"]').is(':checked')) {
        var selectedValue = $('input[name="selectTempalte"]:checked').val();

        var oldText = $('#txtMessage').val();

        $('#txtMessage').val(oldText + selectedValue);

        $(this).prop('disabled', false);

        chooseTemplate.hide();
    } else {
        toastr.error("Please select a template!");

        $(this).prop('disabled', false);
    }
});

$('#c1').change(function() {
    if($(this).is(':checked')) {
        $('.templateNewName').fadeIn();
    } else {
        $('.templateNewName').hide();
    }
});

$('#btnSaveTemplate').click(function(e) {
    e.preventDefault();

    var txtMessage = $('#txtMessage').val();

    if (txtMessage.trim() == '') {

        toastr.error("Please enter message to save as a new template!");

        return;
    }

    saveTemplate.show();
});

function saveTemplateSubmit(id) {

    var el = document.getElementById(id);
    el.disabled = true;

    var templateName = document.getElementById("templateName").value;

    if (templateName.trim() == '') {
        toastr.error("Please enter template name!");

        el.disabled = false;

        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}

function sendSubmit(id) {

    var el = document.getElementById("BtnSubmit");
    el.disabled = true;

    var txtSender = document.getElementById("txtSender").value;
    var txtNumber = document.getElementById("txtNumber").value;
    var e = document.getElementById("cmbMessageType");
    var cmbMessageType = e.value;
    var txtMessage = document.getElementById("txtMessage").value;

    if (txtSender.length > 18 || txtSender.trim() == '') {

        toastr.error("Sender Name can't be empty and must be less than 18 characters!");
        
        el.disabled = false;
        return false;
    }

    if (cmbMessageType == '') {

        toastr.error("Please select message type!");

        el.disabled = false;
        return false;
    }

    if (txtNumber.trim() == '') {

        toastr.error("Please enter mobile number!");

        el.disabled = false;
        return false;
    }

    if (txtMessage.trim() == '') {

        toastr.error("Please enter message to send!");

        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}