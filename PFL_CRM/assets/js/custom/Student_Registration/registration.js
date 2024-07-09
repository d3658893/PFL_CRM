///*const { track } = require("modernizr");
var universityDD_ID = "";
function AddUniversity(country_id, country_name) {
    $("#university_id").removeClass('d-none');

    var html = "";
    html = "<div class='pt-2 col-lg-12' id='div_study_" + country_name.replace(/ /g, '') + "'><label class='form-check form-check-custom form-check-solid fw-bold fs-6 p-2'>" + country_name + " Universities</label><select id='study_" + country_name.replace(/ /g, '') + "' name='study_" + country_name.replace(/ /g, '') + "' class='form-control form-select universities select2' data-control='select2' data-placeholder='Select Study Universities' multiple='multiple'><option></option></select></div>";
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
    //var countryname = "United Kingdom";
    param = "{'country_name':'" + country_name + "'}";

    //    country_name: country_name
    debugger;

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
function load_Universities(data) {
    debugger;

    // The DOM elements you wish to replace with Tagify
    var input = document.querySelector(universityDD_ID);

    // Initialize Tagify script on the above inputs
    new Tagify(input, {
        whitelist: data.d.map(({ Id, name }) => ({ value: Id, name })),
        enforceWhitelist: true,
        tagTextProp: 'name',
        maxtags: 5,
        dropdown: {
            enabled: 1,
            position: 'name',
            mapValueTo: 'name',
            highlightFirst: true,
            searchKeys: ['name'],
            maxItems: 300,           // <- mixumum allowed rendered suggestions
            closeOnSelect: true    // <- do not hide the suggestions dropdown once an item has been selected
        }
    });

}
function load_PFL_ALLOFFICES() {
    debugger;
    //param = "{'country_name':'" + ID + "'}";
    $.ajax({
        type: "post",
        url: "/Student_Registration/Student_Registration.aspx/GET_ALL_PFL_OFFICES",
        contentType: "application/json; charset=utf-8",
        //data: "{'ID':'" + ID + "'}",
        datatype: "json",
        //async: false,
        success: function (response) {
            debugger;
            var entryLevellookup = response.d;
            var newOption = new Option("", "", true, false);
            $("#PFL_Office").append(newOption);
            $.each(entryLevellookup, function (i) {
                var newOption = new Option(entryLevellookup[i].office_name, entryLevellookup[i].Office_Id, false, false);
                $("#PFL_Office").append(newOption);
            });
        },
        error: function (response) { debugger; swal("Failed"); }
    });

}

function load_Entry_Levels() {
    debugger
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
        async: true,

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
$('#residence').on('change', function (e, data) {
    debugger;
    //var ID = data;
    //load_PFL_OFFICES(e.isTrigger);
});

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
// getting IDs data from tagify values 
//var data = $('#study_countries').val(); var categories = JSON.parse(data); categories[0].value
// Class definition
var KTCreateAccount = function () {
    // Elements
    var modal;
    var modalEl;

    var stepper;
    var form;
    var formSubmitButton;
    var formContinueButton;
    var formPreviousButton;

    // Variables
    var stepperObj;
    var validations = [];

    // Private Functions
    var initStepper = function () {

        // Initialize Stepper
        stepperObj = new KTStepper(stepper);
        stepperObj.on("kt.stepper.next", function (stepper) {
            debugger;
            if (stepper.getCurrentStepIndex() == 1) {
                debugger;
                var validator = validations[0]; // get validator for last form
                debugger;
                validator.validate().then(function (status) {
                    debugger;
                    if (status == 'Valid') {
                        debugger;
                        stepper.goNext();
                        KTUtil.scrollTop();

                    } else {
                        debugger;
                        Swal.fire({
                            text: "Sorry, fill fields, please try again.",
                            icon: "error",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn btn-light"
                            }
                        }).then(function () {
                            KTUtil.scrollTop();
                        });
                    }
                });
                // go next step
            }
            else if (stepper.getCurrentStepIndex() == 2) {
                var found = 0;
                var validator = validations[1]; // get validator for last form
                debugger;
                validator.validate().then(function (status) {
                    debugger;
                    var input = $('#div_university select');
                    var found = false;
                    for (var i = 0; i < input.length; i++) {
                        debugger;
                        if ($(input[i]).val() != '') {
                            found = true;
                        }
                    }
                    debugger;
                    if (status == 'Valid' && (found == true)) {
                        debugger;
                        stepper.goNext();
                        KTUtil.scrollTop();

                    } else if (!found) {
                        debugger;
                        Swal.fire({
                            text: "Sorry, fill fields, please try again.",
                            icon: "error",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn btn-light"
                            }
                        }).then(function () {
                            KTUtil.scrollTop();
                        });
                    } else {
                        debugger;
                        Swal.fire({
                            text: "Sorry, fill fields, please try again.",
                            icon: "error",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn btn-light"
                            }
                        }).then(function () {
                            KTUtil.scrollTop();
                        });
                    }
                });

            }
            else if (stepper.getCurrentStepIndex() == 3) {
                debugger;
                var validator = validations[2]; // get validator for last form
                debugger;
                validator.validate().then(function (status) {
                    debugger;
                    if (status == 'Valid') {
                        debugger;
                        stepper.goNext();
                        KTUtil.scrollTop();

                    } else {
                        debugger;
                        Swal.fire({
                            text: "Sorry, fill fields, please try again.",
                            icon: "error",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn btn-light"
                            }
                        }).then(function () {
                            KTUtil.scrollTop();
                        });
                    }
                });
                // go next step
            }
            else if (stepper.getCurrentStepIndex() == 4) {
                debugger;
                var validator = validations[3]; // get validator for last form
                debugger;
                validator.validate().then(function (status) {
                    debugger;
                    if ((status == 'Valid')) {
                        debugger;
                        stepper.goNext();
                        KTUtil.scrollTop();

                    }
                });
                // go next step
            }
            else {
                debugger
                // Validate form before change stepper step
                var validator = validations[stepper.getCurrentStepIndex() - 1]; // get validator for currnt step
                debugger;
                if (validator) {
                    validator.validate().then(function (status) {
                        console.log('validated!');

                        if (status == 'Valid') {
                            stepper.goNext();
                            //$('.stepper-four').find('.stepper-icon').addClass('bg-success');
                            //$('.stepper-four').find('.stepper-icon').append('<i class="text-white fas fa-check"></i>');

                            KTUtil.scrollTop();
                        } else {
                            Swal.fire({
                                text: "Sorry, looks like there are some errors detected, please try again.",
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-light"
                                }
                            }).then(function () {
                                KTUtil.scrollTop();
                            });
                        }
                    });
                } else {
                    stepper.goNext();

                    KTUtil.scrollTop();
                }
            }

        });

        stepperObj.on("kt.stepper.previous", function (stepper) {
            stepperObj.goPrevious(); // go previous step
        });

        // Stepper change event
        stepperObj.on('kt.stepper.changed', function (stepper) {

            if (stepperObj.getCurrentStepIndex() === 4 && $('#studID').val() === '') {
                debugger
                formSubmitButton.classList.remove('d-none');
                formSubmitButton.classList.add('d-inline-block');
                formContinueButton.classList.add('d-none');
            }
            else if (stepperObj.getCurrentStepIndex() === 4 && $('#studID').val() !== '') {
                debugger
                formSubmitButton.classList.add('d-none');
                formUpdateButton.classList.remove('d-none');
                formSubmitButton.classList.add('d-inline-block');
                formContinueButton.classList.add('d-none');
            }
            else if (stepperObj.getCurrentStepIndex() === 5) {
                formSubmitButton.classList.add('d-none');
                formContinueButton.classList.add('d-none');
            }
            else {
                formSubmitButton.classList.remove('d-inline-block');
                formSubmitButton.classList.remove('d-none');
                formContinueButton.classList.remove('d-none');
            }
        });
    }

    var handleForm = function () {
        formSubmitButton.addEventListener('click', function (e) {
            debugger;
            // Validate form before change stepper step
            var validator = validations[3]; // get validator for last form
            debugger;
            validator.validate().then(function (status) {
                console.log('validated!');
                debugger;

                if (status == 'Valid') {
                    // Prevent default button action
                    e.preventDefault();

                    // Disable button to avoid multiple click 
                    formSubmitButton.disabled = true;

                    // Show loading indication
                    formSubmitButton.setAttribute('data-kt-indicator', 'on');

                    // Simulate form submission
                    setTimeout(function () {
                        formSubmitButton.removeAttribute('data-kt-indicator');
                        formSubmitButton.disabled = false;

                        var name = $("#student_name").val();
                        var sir_name = $("#sir_name").val();
                        var DOB = $("#DOB").val();
                        var gender = $("#gender").val();
                        var mobile = $("#mobile").val();
                        var email = $("#Email").val();
                        var residence = $("#residence option:selected").val();
                        var nationality = $("#Nationality option:selected").text();
                        var marital_status = $("#Marital_Status").val();
                        var paddress = $("#PAddress").val();
                        var caddress = $("#CAddress").val();
                        var employement_status = $("#Employment-Status").val();
                        var monthly_income = $("#income").val();
                        var student_type = $("#Student_Type").val();
                        var pfl_office = $("#PFL_Office").val();
                        var study_countries = $("#study_countries").val();
                        var study_level = $("#Entry_Level").val();
                        var intake_semester = $("#Intake_Semester").val();
                        var intake_year = $("#Intake_Year").val();
                        var intake_month = $("#Intake_Month").val();
                        var passport_no = $("#passport_no").val();
                        var passport_auth = $("#passport_auth").val();
                        var passport_poi = $("#place_issue").val();
                        var passport_doi = $("#issue_date").val();
                        var passport_doe = $("#expiry_date").val();
                        var source = $("#Source").val();
                        var source_detail = $("#Source_Detail").val();
                        var interview_type = $("#Interview_Type").val();
                        var interview_name = $("#Interview_Name").val();
                        var interview_date = $("#Interview_Date").val();
                        var follow_up = $("#Follow_Up").val(); if (follow_up == 'on') { follow_up = '1' } else { follow_up = '0' }
                        var counceler = $("#Counceler").val();
                        var ucas_no = $("#UCAS_No").val();
                        var ucas_id = $("#UCAS_Login").val();
                        var ucas_password = $("#UCAS_Password").val();
                        var accomodation = $("#Accomodation_Arranged").val(); if (accomodation == 'on') { accomodation = '1' } else { accomodation = '0' }
                        var ability_fee = $("#Abitlity_To_Fee").val(); if (ability_fee == 'on') { ability_fee = '1' } else { ability_fee = '0' }
                        var primary_officer_no = $("#Contact_Officer").val();
                        var payment_type = "";
                        var reg_fee = $("#Reg_Fee").val();
                        var Payment_Method = $("#Payment_Method").val();
                        var Bank_Reciept = $("#Bank_Reciept").val();
                        var Payment_Currency = $("#Payment_Currency").val();
                        var TotalReg_Fee = $("#TotalReg_Fee").val();
                        var Disclaimer = $("#Disclaimer").val();
                        var Reg_No = $("#Reg_No").val();

                        study_countries = JSON.stringify(study_countries.toString());
                        study_countries = study_countries.toString();

                        //var study_universities = '';
                        //let input = $('#div_university select');
                        //for (let i = 0; i < input.length; i++) {
                        //	debugger;
                        //	if ($(input[i]).val() != '') {
                        //		study_universities += 'var ' + input[i].id + ' = ' + input[i].tagifyValue + ';';
                        //	}
                        //}

                        ////Universities ID list JSON
                        //var study_universities_id = '';
                        //for (let i = 0; i < input.length; i++) {
                        //	debugger;
                        //	if ($(input[i]).val() !== '') {
                        //		study_universities_id += input[i].id + ' , ';
                        //	}
                        //}
                        //debugger;

                        //Universities list JSON
                        var study_universities = '';
                        let input = $('#div_university select');

                        console.log(input);
                        debugger;
                        for (let i = 0; i < input.length; i++) {
                            debugger;
                            if ($(input[i]).id !== '') {
                                debugger;
                                let id_uni = input[i].id;
                                let university_ids = $("#" + id_uni).val();
                                //for (let i = 0; i < university_ids.length; i++) {
                                study_universities += id_uni + ' = ' + university_ids + ';';
                                //}
                            }
                        }

                        //Universities ID list JSON
                        var study_universities_id = '';
                        for (let i = 0; i < input.length; i++) {
                            debugger;
                            if ($(input[i]).id !== '') {
                                study_universities_id += input[i].id + ' , ';
                            }
                        }
                        debugger;
                        var formData = {
                            name: name,
                            sir_name: sir_name,
                            DOB: DOB,
                            gender: gender,
                            mobile: mobile,
                            email: email, nationality: nationality, residence: residence,
                            marital_status: marital_status, paddress: paddress, caddress: caddress, employement_status: employement_status,
                            monthly_income: monthly_income, student_type: student_type, pfl_office: pfl_office,
                            study_countries: study_countries, study_level: study_level, intake_year: intake_year, intake_semester: intake_semester,
                            intake_month: intake_month, study_universities: study_universities, study_universities_id: study_universities_id,
                            passport_no: passport_no, passport_auth: passport_auth, passport_poi: passport_poi, passport_doi: passport_doi, passport_doe: passport_doe,
                            source: source, source_detail: source_detail, interview_type: interview_type,
                            interview_name: interview_name, interview_date: interview_date, follow_up: follow_up, counceler: counceler,
                            ucas_no: ucas_no, ucas_id: ucas_id, ucas_password: ucas_password, accomodation: accomodation,
                            ability_fee: ability_fee, primary_officer_no: primary_officer_no,
                            payment_type: payment_type,
                            reg_fee: reg_fee, Payment_Method: Payment_Method, Bank_Reciept: Bank_Reciept, Payment_Currency: Payment_Currency,
                            TotalReg_Fee:TotalReg_Fee,Disclaimer: Disclaimer
                        }

                        formData = JSON.stringify(formData);
                        $.ajax({
                            type: "post",
                            url: "/Student_Registration/Student_Registration.aspx/LIVE_STUDENT_REGISTRATION",
                            contentType: "application/json; charset=utf-8",
                            data: formData,
                            datatype: "json",
                            success: student_registration,
                            error: function (response) {
                                debugger;
                                Swal.fire({
                                    text: "Sorry, looks like there are some errors detected, please try again.",
                                    icon: "error",
                                    buttonsStyling: false,
                                    confirmButtonText: "Ok, got it!",
                                    customClass: {
                                        confirmButton: "btn btn-light"
                                    }
                                }).then(function () {
                                    KTUtil.scrollTop();
                                });
                            }
                        });


                    }, 2000);
                } else {
                    Swal.fire({
                        text: "Sorry, looks like there are some errors detected, please try again.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-light"
                        }
                    }).then(function () {
                        KTUtil.scrollTop();
                    });
                }
            });
        });
        formUpdateButton.addEventListener('click', function (e) {
            debugger;
            // Validate form before change stepper step
            var validator = validations[3]; // get validator for last form
            debugger;
            validator.validate().then(function (status) {
                console.log('validated!');
                debugger;

                if (status == 'Valid') {
                    // Prevent default button action
                    e.preventDefault();

                    // Disable button to avoid multiple click 
                    formUpdateButton.disabled = true;

                    // Show loading indication
                    formUpdateButton.setAttribute('data-kt-indicator', 'on');

                    // Simulate form submission
                    setTimeout(function () {
                        formUpdateButton.removeAttribute('data-kt-indicator');
                        formUpdateButton.disabled = false;

                        var name = $("#student_name").val();
                        var sir_name = $("#sir_name").val();
                        var DOB = $("#DOB").val();
                        var gender = $("#gender").val();
                        var mobile = $("#mobile").val();
                        var email = $("#Email").val();
                        var residence = $("#residence option:selected").val();
                        var nationality = $("#Nationality option:selected").text();
                        var marital_status = $("#Marital_Status").val();
                        var paddress = $("#PAddress").val();
                        var caddress = $("#CAddress").val();
                        var employement_status = $("#Employment-Status").val();
                        var monthly_income = $("#income").val();
                        var student_type = $("#Student_Type").val();
                        var pfl_office = $("#PFL_Office").val();
                        var study_countries = $("#study_countries").val();
                        var study_level = $("#Entry_Level").val();
                        var intake_semester = $("#Intake_Semester").val();
                        var intake_year = $("#Intake_Year").val();
                        var intake_month = $("#Intake_Month").val();
                        var passport_no = $("#passport_no").val();
                        var passport_auth = $("#passport_auth").val();
                        var passport_poi = $("#place_issue").val();
                        var passport_doi = $("#issue_date").val();
                        var passport_doe = $("#expiry_date").val();
                        var refusal_Year = $("#refusal_Year").val();
                        var Visa_Refusal = $("#Visa_Refusal").val(); if (Visa_Refusal == 'on') { Visa_Refusal = '1' } else { Visa_Refusal = '0' }
                        //var refusal_Country = $("#refusal_Country").val();  
                        var refusal_Country = $('#refusal_Country').prop('value');
                        var source = $("#Source").val();
                        var source_detail = $("#Source_Detail").val();
                        var interview_type = $("#Interview_Type").val();
                        var interview_name = $("#Interview_Name").val();
                        var interview_date = $("#Interview_Date").val();
                        var follow_up = $("#Follow_Up").val(); if (follow_up == 'on') { follow_up = '1' } else { follow_up = '0' }
                        var counceler = $("#Counceler").val();
                        var ucas_no = $("#UCAS_No").val();
                        var ucas_id = $("#UCAS_Login").val();
                        var ucas_password = $("#UCAS_Password").val();
                        var accomodation = $("#Accomodation_Arranged").val(); if (accomodation == 'on') { accomodation = '1' } else { accomodation = '0' }
                        var ability_fee = $("#Abitlity_To_Fee").val(); if (ability_fee == 'on') { ability_fee = '1' } else { ability_fee = '0' }
                        var primary_officer_no = $("#Contact_Officer").val();
                        var payment_type = $("#Payment_Type").val();
                        //var payment_deadline = $("#paymentdeadline").val();
                        var payment_deadline = $('#paymentdeadline').prop('value');
                        var reg_fee = $("#Reg_Fee").val();
                        var Payment_Method = $("#Payment_Method").val();
                        var Bank_Reciept = $("#Bank_Reciept").val();
                        var Disclaimer = $("#Disclaimer").val();
                        var Student_Id = $('#studID').val();
                        var Payment_Currency = $("#Payment_Currency").val();
                        var TotalReg_Fee = $("#TotalReg_Fee").val();

                        study_countries = JSON.stringify(study_countries);


                        //var study_universities = '';
                        //let input = $('#div_university select');
                        //for (let i = 0; i < input.length; i++) {
                        //	debugger;
                        //	if ($(input[i]).val() != '') {
                        //		study_universities += 'var ' + input[i].id + ' = ' + input[i].tagifyValue + ';';
                        //	}
                        //}

                        ////Universities ID list JSON
                        //var study_universities_id = '';
                        //for (let i = 0; i < input.length; i++) {
                        //	debugger;
                        //	if ($(input[i]).val() !== '') {
                        //		study_universities_id += input[i].id + ' , ';
                        //	}
                        //}
                        //debugger;

                        //Universities list JSON
                        var study_universities = '';
                        let input = $('#div_university select');

                        console.log(input);
                        debugger;
                        for (let i = 0; i < input.length; i++) {
                            debugger;
                            if ($(input[i]).id !== '') {
                                debugger;
                                let id_uni = input[i].id;
                                let university_ids = $("#" + id_uni).val();
                                //for (let i = 0; i < university_ids.length; i++) {
                                study_universities += id_uni + ' = ' + university_ids + ';';
                                //}
                            }
                        }

                        //Universities ID list JSON
                        var study_universities_id = '';
                        for (let i = 0; i < input.length; i++) {
                            debugger;
                            if ($(input[i]).id !== '') {
                                study_universities_id += input[i].id + ' , ';
                            }
                        }
                        debugger;
                        var Payment_Currency = $("#Payment_Currency").val();
                        var TotalReg_Fee = $("#TotalReg_Fee").val();

                        var formData = {
                            name: name,
                            sir_name: sir_name,
                            DOB: DOB,
                            gender: gender,
                            mobile: mobile,
                            email: email, nationality: nationality, residence: residence,
                            marital_status: marital_status, paddress: paddress, caddress: caddress, employement_status: employement_status,
                            monthly_income: monthly_income, student_type: student_type, pfl_office: pfl_office,
                            study_countries: study_countries, study_level: study_level, intake_year: intake_year, intake_semester: intake_semester,
                            intake_month: intake_month, study_universities: study_universities, study_universities_id: study_universities_id,
                            passport_no: passport_no, passport_auth: passport_auth, passport_poi: passport_poi, passport_doi: passport_doi, passport_doe: passport_doe,
                            source: source, source_detail: source_detail, interview_type: interview_type,
                            interview_name: interview_name, interview_date: interview_date, follow_up: follow_up, counceler: counceler,
                            ucas_no: ucas_no, ucas_id: ucas_id, ucas_password: ucas_password, accomodation: accomodation,
                            ability_fee: ability_fee, primary_officer_no: primary_officer_no, payment_type: payment_type, reg_fee: reg_fee,
                            Payment_Method: Payment_Method, Bank_Reciept: Bank_Reciept, Disclaimer: Disclaimer, Student_Id: Student_Id,
                            payment_deadline: payment_deadline, Visa_Refusal: Visa_Refusal, refusal_Year: refusal_Year,
                            refusal_Country: refusal_Country, Payment_Currency: Payment_Currency, TotalReg_Fee: TotalReg_Fee
                        }

                        formData = JSON.stringify(formData);
                        $.ajax({
                            type: "post",
                            url: "/Student_Registration/Student_Registration.aspx/LIVE_STUDENT_UPDATE",
                            contentType: "application/json; charset=utf-8",
                            data: formData,
                            datatype: "json",
                            success: student_update,
                            error: function (response) {
                                debugger;
                                Swal.fire({
                                    text: "Sorry, looks like there are some errors detected, please try again.",
                                    icon: "error",
                                    buttonsStyling: false,
                                    confirmButtonText: "Ok, got it!",
                                    customClass: {
                                        confirmButton: "btn btn-light"
                                    }
                                }).then(function () {
                                    KTUtil.scrollTop();
                                });
                            }
                        });


                    }, 2000);
                } else {
                    Swal.fire({
                        text: "Sorry, looks like there are some errors detected, please try again.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-light"
                        }
                    }).then(function () {
                        KTUtil.scrollTop();
                    });
                }
            });
        });

    }

    function student_registration(response) {
        debugger;
        stepperObj.goNext();
        if (response.d[0]['response'] == '1') {
            Swal.fire({
                icon: 'success',
                title: 'Student Registered Successfully.',
                showConfirmButton: true,
                timer: 20000,
                confirmButtonText: "Ok",
                customClass: {
                    confirmButton: "btn btn-success"
                }
            })
            debugger;
            $('#Reciept_No').text(response.d[0]['Reciept_No']);
            var d = new Date();
            var strDate = d.getDate() + "/" + (d.getMonth() + 1) + "/" + d.getFullYear();
            $('#DateIssued').text(strDate);
            $('#Office').text($("#PFL_Office option:selected").text());
            $('#Student_Address').text(response.d[0]['Current_Address']);
            $('#PFLOfficer').text(response.d[0]['Counceler']);
            $('#Amount').text("PKR " + response.d[0]['Reg_Fee']);
            $('#BankReciept_No').text(response.d[0]['Bank_Reciept']);
            $('#TelNo').text(response.d[0]['Mobile_No']);
            $('#Payment').text(response.d[0]['Payment_Method']);
            $('#Notes').text(response.d[0]['Disclaimer']);
            var university = '';
            var universities = JSON.parse(response.d[0]['Study_Countries']);
            $.each(universities, function (index, item) {
                university += universities[index].name + ',';
            });

            $('#Country').text($("#study_countries option:selected").text());
            $('#Period').text(response.d[0]['Intake_Year']);
            $('#PFLRef').text(response.d[0]['Ref_No']);
            if (response.d[0]['Gender'] == 'Female') { $('#Title').text('Ms.'); }
            if (response.d[0]['Gender'] == 'Male') { $('#Title').text('Mr.'); }
            $('#ForeName').text(response.d[0]['Student_Name']);
            $('#LastName').text(response.d[0]['SirName']);
            //$('#LastName').text(response.d[0]['SirName']);

            $('#Intake').text(response.d[0]['Intake_Semester'] + '/' + response.d[0]['Intake_Month'] + '/' + response.d[0]['Intake_Year']);
            debugger;
            //$('#kt_modal_Feedback').modal('show');
            stepper = document.querySelector('#kt_create_account_stepper');
            formPreviousButton = stepper.querySelector('[data-kt-stepper-action="previous"]');
            formSubmitButton = stepper.querySelector('[data-kt-stepper-action="submit"]');
            formSubmitButton.classList.add('d-inline-block');
            formSubmitButton.classList.add('d-none');
            formPreviousButton.classList.add('d-none');

        } else {
            Swal.fire({
                icon: 'error',
                title: 'Record Submission Failed.',
                showConfirmButton: true,
                timer: 20000,
                confirmButtonText: "Ok, got it!",
                customClass: {
                    confirmButton: "btn btn-light"
                }
            })


        }
    }
    $('#kt_modal_Feedback').on('hidden.bs.modal', function () {
        debugger;
        //window.location.reload();
        //window.location.href = "Student_Registration/Live_Students.aspx";
        //stepper = document.querySelector('#kt_create_account_stepper');
        //stepper.goNext();
    })
    function student_update(response) {
        debugger;
        if (response.d[0]['response'] == '1') {
            Swal.fire({
                icon: 'success',
                title: 'Student Updated Successfully.',
                showConfirmButton: true,
                timer: 80000,
                confirmButtonText: "Ok",
                customClass: {
                    confirmButton: "btn btn-success"
                }
            })
            debugger;
            $('#Reciept_No').text(response.d[0]['Reciept_No']);
            var d = new Date();
            var strDate = d.getDate() + "/" + (d.getMonth() + 1) + "/" + d.getFullYear();
            $('#DateIssued').text(strDate);
            $('#Office').text($("#PFL_Office option:selected").text());
            $('#Student_Address').text(response.d[0]['Current_Address']);
            $('#PFLOfficer').text(response.d[0]['Counceler']);
            $('#Amount').text("PKR " + response.d[0]['Reg_Fee']);
            $('#BankReciept_No').text(response.d[0]['Bank_Reciept']);
            $('#TelNo').text(response.d[0]['Mobile_No']);
            $('#Payment').text(response.d[0]['Payment_Method']);
            $('#Notes').text(response.d[0]['Disclaimer']);
            var university = '';
            var universities = JSON.parse(response.d[0]['Study_Countries']);
            $.each(universities, function (index, item) {
                university += universities[index].name + ',';
            });

            $('#Country').text($("#study_countries option:selected").text());
            $('#Period').text(response.d[0]['Intake_Year']);
            $('#PFLRef').text(response.d[0]['Ref_No']);
            if (response.d[0]['Gender'] == 'Female') { $('#Title').text('Ms.'); }
            if (response.d[0]['Gender'] == 'Male') { $('#Title').text('Mr.'); }
            $('#ForeName').text(response.d[0]['Student_Name']);
            $('#LastName').text(response.d[0]['SirName']);
            //$('#LastName').text(response.d[0]['SirName']);

            $('#Intake').text(response.d[0]['Intake_Semester'] + '/' + response.d[0]['Intake_Month'] + '/' + response.d[0]['Intake_Year']);
            debugger;
            //$('#kt_modal_Feedback').modal('show');
            stepper = document.querySelector('#kt_create_account_stepper');
            formPreviousButton = stepper.querySelector('[data-kt-stepper-action="previous"]');
            formSubmitButton = stepper.querySelector('[data-kt-stepper-action="submit"]');
            formSubmitButton.classList.add('d-inline-block');
            formSubmitButton.classList.add('d-none');
            formPreviousButton.classList.add('d-none');

            //window.location.reload();
            window.location.href = "/Student_Registration/Live_Students.aspx";


        } else {
            Swal.fire({
                icon: 'error',
                title: 'Record Updation Failed!',
                showConfirmButton: true,
                timer: 20000,
                confirmButtonText: "Ok, got it!",
                customClass: {
                    confirmButton: "btn btn-light"
                }
            })


        }
    }

    var initValidation = function () {
        // Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
        // Step 1
        validations.push(FormValidation.formValidation(
            form,
            {
                fields: {
                    'student_name': {
                        validators: {
                            notEmpty: {
                                message: 'Student First Name is required'
                            }
                        }
                    }
                    ,
                    'sir_name': {
                        validators: {
                            notEmpty: {
                                message: 'Student Last Name is required'
                            }
                        }
                    }
                    ,
                    'DOB': {
                        validators: {
                            notEmpty: {
                                message: 'DOB is required'
                            }
                        }
                    }
                    ,
                    'gender': {
                        validators: {
                            notEmpty: {
                                message: 'Gender is required'
                            }
                        }
                    },
                    'mobile': {
                        validators: {
                            notEmpty: {
                                message: "Mobile No. is required"
                            }
                            ,
                            numeric: {
                                message: 'Mobile No. is not a number',
                                // The default separators
                                thousandsSeparator: '',
                                decimalSeparator: '.'
                            }
                        }
                    }
                    ,
                    'Email': {
                        validators: {
                            notEmpty: {
                                message: "E-mail is required"
                            }
                            ,
                            emailAddress: {
                                message: "The value is not a valid email address"
                            }
                        }
                    },
                    'residence': {
                        validators: {
                            notEmpty: {
                                message: 'Residence is required'
                            }
                        }
                    },
                    'Nationality': {
                        validators: {
                            notEmpty: {
                                message: 'Nationality is required'
                            }
                        }
                    }
                    ,
                    'Marital_Status': {
                        validators: {
                            notEmpty: {
                                message: 'Marital Status is required'
                            }
                        }
                    },
                    'PAddress': {
                        validators: {
                            notEmpty: {
                                message: 'Permanent Address is required'
                            }
                        }
                    },
                    'CAddress': {
                        validators: {
                            notEmpty: {
                                message: 'Current Address is required'
                            }
                        }
                    },
                    'Employment-Status': {
                        validators: {
                            notEmpty: {
                                message: 'Student/Sponser Employment Status is required'
                            }
                        }
                    },
                    //'income': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Monthly Income is required'
                    //		}
                    //	}
                    //},
                    'Student_Type': {
                        validators: {
                            notEmpty: {
                                message: 'Student Type is required'
                            }
                        }
                    },
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector: '.fv-row',
                        eleInvalidClass: '',
                        eleValidClass: ''
                    })
                }
            }
        ));

        // Step 2
        validations.push(FormValidation.formValidation(
            form,
            {
                fields: {

                    'study_countries': {
                        validators: {
                            notEmpty: {
                                message: 'Study Country is required'
                            }
                        }
                    },
                    //'Entry_Level': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Entry Level is required'
                    //		}
                    //	}
                    //},
                    'Intake_Semester': {
                        validators: {
                            notEmpty: {
                                message: 'Intake Sesester is required'
                            }
                        }
                    },
                    'Intake_Year': {
                        validators: {
                            notEmpty: {
                                message: 'Intake Year is required'
                            }
                        }
                    },
                    //	'IntakeMonth': {
                    //		validators: {
                    //			notEmpty: {
                    //				message: "Intake Month is required",
                    //				callback: function (value, validator, $field) {
                    //					var Semester = $('#Intake_Semester').find(":selected").val();
                    //					if ((Semester == "Month") && ($('#IntakeMonth').find(":selected").val() != "")){ return true; }
                    //					else { return false; }
                    //				}
                    //			}
                    //		}
                    //	}
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    // Bootstrap Framework Integration
                    bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector: '.fv-row',
                        eleInvalidClass: '',
                        eleValidClass: ''
                    })
                }
            }
        ));

        // Step 3
        validations.push(FormValidation.formValidation(
            form,
            {
                fields: {
                    //'passport_no': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Passport No is required'
                    //		}
                    //	}
                    //},'passport_auth': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Passport Auth is required'
                    //		}
                    //	}
                    //},'place_issue': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Place of Issue is required'
                    //		}
                    //	}
                    //},'issue_date': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Issue Date is required'
                    //		}
                    //	}
                    //},
                    //'expiry_date': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Expiry Date is required'
                    //		}
                    //	}
                    //},
                    'issue_date': {
                        validators: {
                            notEmpty: {
                                message: 'Issue Date is required'
                            }
                        }
                    },
                    'expiry_date': {
                        validators: {
                            callback: {
                                message: 'Expiry Date must be later than Issue Date',
                                callback: function (value, validator, $field) {
                                    debugger
                                    var issue_date = $('#issue_date').val();
                                    var expiry_date = $('#expiry_date').val();

                                    if (issue_date && expiry_date) {
                                        var issue_parts = issue_date.split('-');
                                        var expiry_parts = expiry_date.split('-');

                                        // Create JavaScript date objects
                                        var issue_obj = new Date(issue_parts[2], issue_parts[1] - 1, issue_parts[0]);
                                        var expiry_obj = new Date(expiry_parts[2], expiry_parts[1] - 1, expiry_parts[0]);

                                        if (expiry_obj > issue_obj) {
                                            return true; // Expiry date is valid
                                        } else {
                                            return false; // Expiry date is earlier than or same as Issue date
                                        }
                                    }

                                    return true; // If either date is not provided, consider it as valid
                                }
                            }
                        }
                    },
                    //'expiry_date': {
                    //	validators: {
                    //		//notEmpty: {
                    //		//	message: 'Expiry Date is required'
                    //		//},
                    //		//greaterThan: {
                    //		//	message: 'The date must be greater than Issue Date',
                    //		//	min: $('#issue_date').val(),
                    //		//},
                    //		callback: function (value, validator, $field) {
                    //			alert(value)
                    //			debugger;
                    //			var issue_date = $('#issue_date').val(); // Get the input value as a string
                    //			var issue_date = moment(issue_date, 'DD-MM-YYYY'); // Parse the string as a date object
                    //			//var issue_date = date.format('DD-MM-YYYY'); // Format the date object as a string in the desired format
                    //			console.log(issue_date);
                    //			var expiry_date = $('#expiry_date').val(); // Get the input value as a string
                    //			var expiry_date = moment(expiry_date, 'DD-MM-YYYY'); // Parse the string as a date object
                    //			//var expiry_date = date.format('DD-MM-YYYY'); // Format the date object as a string in the desired format
                    //			console.log(expiry_date);
                    //			if (expiry_date > issue_date) { debugger; return true; }
                    //			else { debugger; return false; }
                    //		}

                    //	}
                    //},

                    'Source': {
                        validators: {
                            notEmpty: {
                                message: 'Source is required'
                            }
                        }
                    },
                    'Source_Detail': {
                        validators: {
                            notEmpty: {
                                message: 'Source Detail is required'
                            }
                        }
                    }
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    // Bootstrap Framework Integration
                    bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector: '.fv-row',
                        eleInvalidClass: '',
                        eleValidClass: ''
                    })
                }
            }
        ));


        // Step 4
        validations.push(FormValidation.formValidation(
            form,
            {
                fields: {
                    //'Interview_Name': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Interview Name is required'
                    //		}
                    //	}
                    //},
                    //'Interview_Date': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'Interview Date is required'
                    //		}
                    //	}
                    //},
                    'Counceler': {
                        validators: {
                            notEmpty: {
                                message: 'Counceler is required'
                            }
                        }
                    },
                    //'UCAS_No': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'UCAS No is required'
                    //		}
                    //	}
                    //},
                    //'UCAS_Login': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'UCAS No is required'
                    //		}
                    //	}
                    //},
                    //'UCAS_Password': {
                    //	validators: {
                    //		notEmpty: {
                    //			message: 'UCAS No is required'
                    //		}
                    //	}
                    //},
                    //'Contact_Officer': {
                    //    validators: {
                    //        notEmpty: {
                    //            message: 'Primary Contact Officer is required'
                    //        }
                    //    }
                    //},
                    'Reg_Fee': {
                        validators: {
                            notEmpty: {
                                message: 'Registration Fee No is required'
                            }
                        }
                    },
                    'Payment_Method': {
                        validators: {
                            notEmpty: {
                                message: 'Payment Method is required'
                            }
                        }
                    }
                    ,
                    'TotalReg_Fee': {
                    	validators: {
                    		notEmpty: {
                                message: 'Total Reg Fee is required'
                    		}
                    	}
                    }
                    //,
                    //	'Disclaimer': {
                    //		validators: {
                    //			notEmpty: {
                    //				message: 'Disclaimer is required'
                    //			}
                    //		}
                    //	}
                    //,
                    //'Reg_No': {
                    //    validators: {
                    //        notEmpty: {
                    //            message: 'Registration No. is required'
                    //        }
                    //    }
                    //}
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    // Bootstrap Framework Integration
                    bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector: '.fv-row',
                        eleInvalidClass: '',
                        eleValidClass: ''
                    })
                }
            }
        ));

    }

    var handleFormSubmit = function () {

    }

    return {
        // Public Functions
        init: function () {
            // Elements
            modalEl = document.querySelector('#kt_modal_create_account');
            if (modalEl) {
                modal = new bootstrap.Modal(modalEl);
            }

            stepper = document.querySelector('#kt_create_account_stepper');
            form = stepper.querySelector('#kt_create_account_form');
            formSubmitButton = stepper.querySelector('[data-kt-stepper-action="submit"]');
            formUpdateButton = stepper.querySelector('[data-kt-stepper-action="update"]');
            formContinueButton = stepper.querySelector('[data-kt-stepper-action="next"]');
            formPreviousButton = stepper.querySelector('[data-kt-stepper-action="previous"]');

            initValidation();
            initStepper();
            handleForm();
        }
    };
}();

// On document ready
KTUtil.onDOMContentLoaded(function () {
    KTCreateAccount.init();
});

