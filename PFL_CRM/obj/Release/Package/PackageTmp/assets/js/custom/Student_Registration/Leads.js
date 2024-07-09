var universityDD_ID = "";

function AddUniversity(country_id, country_name) {
    $("#university_id").removeClass('d-none');
    debugger
    var html = "";
    html = "<div class='pt-2 col-lg-12' id='div_study_" + country_name.replace(/ /g, '') + "'><label class='form-check form-check-custom form-check-solid fw-bold fs-6 p-2'>" + country_name + " Universities</label><select id='study_" + country_name.replace(/ /g, '') + "' name='study_" + country_name.replace(/ /g, '') + "' class='form-control form-select universities select2' data-control='select2' data-placeholder='Select Study Universities' multiple='multiple'><option></option></select></div>";

    //<input class='form-control universities form-control-solid' id='study_" + country_name.replace(/ /g, '') + "' />

    $(".university_div").append(html);

    universityDD_ID = '#study_' + country_name + '';
    universityDD_ID = universityDD_ID.replace(/ /g, '');
    //console.log(universityDD_ID);
    get_Universities(country_id, country_name, universityDD_ID);
}

function RemoveUniversity(university_id) {
    debugger;
    $(university_id).remove();

    if ($('.university_div').children().length == 0) {
        $("#university_id").addClass('d-none');
    }
}

function get_Universities(country_id, country_name, universityDD_ID) {
    debugger
    //var countryname = "United Kingdom";
    param = "{'country_name':'" + country_name + "'}";

    //    country_name: country_name

    var serviceResponse = "";
    $.ajax({
        type: "post",
        url: "/Student_Registration/Student_Registration.aspx/GET_UNIVERSITIES",
        contentType: "application/json; charset=utf-8",
        data: param,
        async: false,
        datatype: "json",
        success: function (response) {
            debugger;

            // The DOM elements you wish to replace with Tagify
            var input = document.querySelector(universityDD_ID);
            var data = response.d;
            $(input).select2();
            debugger;
            $(input).empty();
            $.each(data, function (key, entry) {
                $(input).append($('<option></option>').attr('value', entry.Id).text(entry.name));
            });

        }
,
        error: function (response) { debugger; swal("Failed"); }


    });

}
function load_Entry_Levels() {
    debugger;
    $.ajax({
        type: "post",
        url: "/Student_Registration/Student_Registration.aspx/GET_STUDY_LEVLES",
        contentType: "application/json; charset=utf-8",
        //data: param,
        datatype: "json",
        async: false,
        success: function (response) {
            debugger;
            var entryLevellookup = response.d;
            var newOption = new Option("", "", true, false);
            $("#Entry_Level").append(newOption);
            $.each(entryLevellookup, function (i) {
                var newOption = new Option(entryLevellookup[i].name, entryLevellookup[i].Id, false, false);
                $("#Entry_Level").append(newOption);
            });
        },
        error: function (response) { debugger; swal("Failed"); }
    });
}
function load_Countries() {
    debugger
    $.ajax({
        type: "post",
        url: "/Student_Registration/Student_Registration.aspx/GET_COUNTRIES",
        contentType: "application/json; charset=utf-8",
        //data: param,
        datatype: "json",
        async: false,
        success: function (response) {
            debugger;
            var entryLevellookup = response.d;
            var newOption = new Option("", "", true, false);
            $("#residence").append(newOption);
            $.each(entryLevellookup, function (i) {
                var newOption = new Option(entryLevellookup[i].name, entryLevellookup[i].Id, false, false);
                $("#residence").append(newOption);
            });
        },
        error: function (response) { debugger; swal("Failed"); }
    });

}
function load_PFL_OFFICES(ID) {
    debugger;
    //param = "{'country_name':'" + ID + "'}";
    $.ajax({
        type: "post",
        url: "/Student_Registration/Student_Registration.aspx/GET_PFL_OFFICES",
        contentType: "application/json; charset=utf-8",
        data: "{'ID':'" + ID + "'}",
        datatype: "json",
        async: false,
        success: function (response) {
            debugger;
            var entryLevellookup = response.d;
            var newOption = new Option("", "", true, false);
            $("#PFL_Office").append(newOption);
            $.each(entryLevellookup, function (i) {
                var newOption = new Option(entryLevellookup[i].name, entryLevellookup[i].Id, false, false);
                $("#PFL_Office").append(newOption);
            });
        },
        error: function (response) { debugger; swal("Failed"); }
    });

}
