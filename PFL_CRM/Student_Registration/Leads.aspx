<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Leads.aspx.cs" Inherits="PFL_CRM.Student_Registration.Leads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <!--begin::Container-->
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">LEADS 
                    </h1>
                    <!--end::Title-->
                </div>
            </div>
        </div>
        <!--begin::Container-->
        <!--begin::Entry-->
        <div class="d-flex flex-column-fluid">
            <!--begin::Container-->
            <div class="container">
                <!--begin::Container-->
                <!--begin::Container-->
                <a href="javascript:void(0)" id="kt_tms_single_upload_btn" class="btn btn-warning me-5 mt-9 fs-8 d-none" data-bs-toggle="modal" data-bs-target="#kt_modal_Feedback"><i class="fa fa-user"></i>Add User </a>
                <form class="py-20 px-9  bg-body" novalidate="novalidate" id="kt_create_account_form">

                    <div class="row p-1">
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                First Name
                            </label>
                            <input name="student_name" class="form-control form-control form-control-solid p-2" autocomplete="off" id="student_name">
                        </div>
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                Last Name
                            </label>
                            <input name="sir_name" class="form-control form-control form-control-solid p-2" autocomplete="off" id="sir_name">
                        </div>
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-switch form-check-custom form-check-solid fw-bold fs-6 p-2">
                                Email
                            </label>
                            <input name="Email" class="form-control form-control form-control-solid p-2" id="Email" autocomplete="off">
                        </div>
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-switch form-check-custom form-check-solid fw-bold fs-6 p-2">
                                Status
                            </label>
                            <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Status" id="Status" name="Status">
                                <option value="15">Followup</option>
                                <option value="16">Drop</option>
                                <option value="1">Register</option>
                            </select>
                        </div>
                    </div>
                    <div class="row p-1">
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                Phone No.
                            </label>
                            <input name="phone" class="form-control form-control form-control-solid p-2" autocomplete="off" id="phone">
                        </div>
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-switch form-check-custom form-check-solid fw-bold fs-6 p-2">
                                Residence (Country) 
                            </label>
                            <select class="form-control form-control-solid form-select residence p-2" autocomplete="off" data-control="select2" data-placeholder="Select Country Residence" id="residence" name="residence"></select>
                        </div>
                    </div>
                    <div class="row p-1">
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                Nationality
                            </label>
                            <select data-control="select2" class="form-control form-control-solid form-select Nationality p-2" autocomplete="off" data-placeholder="Select Nationality" id="Nationality" name="Nationality">
                                <option value="Afghani">Afghani</option>
                                <option value="American">American</option>
                                <option value="Argentinian">Argentinian</option>
                                <option value="Australian">Australian</option>
                                <option value="Burundian">Burundian</option>
                                <option value="Canadian">Canadian</option>
                                <option value="Chinese">Chinese</option>
                                <option value="Cypriot">Cypriot</option>
                                <option value="Danish">Danish</option>
                                <option value="Egyptian">Egyptian</option>
                                <option value="Emirati">Emirati</option>
                                <option value="English">English</option>
                                <option value="French">French</option>
                                <option value="German">German</option>
                                <option value="Ghanaian">Ghanaian</option>
                                <option value="Indian">Indian</option>
                                <option value="Iranian">Iranian</option>
                                <option value="Irish">Irish</option>
                                <option value="Italian">Italian</option>
                                <option value="Japanese">Japanese</option>
                                <option value="Kenyan">Kenyan</option>
                                <option value="Malawian">Malawian</option>
                                <option value="Malaysian">Malaysian</option>
                                <option value="Maltese">Maltese</option>
                                <option value="Mauritian">Mauritian</option>
                                <option value="New Zealand">New Zealand</option>
                                <option value="Nigerian">Nigerian</option>
                                <option value="Pakistani">Pakistani</option>
                                <option value="Peruvian">Peruvian</option>
                                <option value="Russian">Russian</option>
                                <option value="Sierra Leonean">Sierra Leonean</option>
                                <option value="Spanish">Spanish</option>
                                <option value="Sri Lankan">Sri Lankan</option>
                                <option value="Swiss">Swiss</option>
                                <option value="Syrian">Syrian</option>
                                <option value="Yemeni">Yemeni</option>
                                <option value="Zimbabwean">Zimbabwean</option>
                            </select>
                        </div>
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                PFL Office (Nearest)
                            </label>
                            <select class="form-control form-control-solid form-select PFL_Office p-2" autocomplete="off" data-control="select2" data-placeholder="Select PFL Nearest Office" id="PFL_Office" name="PFL_Office"></select>
                        </div>
                    </div>
                    <div class="row p-1">
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                Study Countries (Preffered)
                            </label>
                            <div class="mb-2 col-lg-7 col-md-7 col-sm-12 col-xs-12">
                                <select id="study_countries" name="study_countries" class="form-control form-select study_countries select2" data-control="select2" data-placeholder="Select Study Countries" multiple="multiple">
                                    <option></option>
                                </select>
                            </div>
                            <%-- change for combobox of study countries --%>
                            <%--                        <input class="form-control form-control-solid" name="study_countries" id="study_countries" />--%>
                        </div>
                    </div>
                    <div class="row p-1">
                        <div class="pt-2 fv-row col-lg-6" id="div_university">
                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2 d-none" id="university_id">Study University Selection</label>
                            <div class="university_div ">
                            </div>
                        </div>

                    </div>
                    <div class="row p-1">
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                Entry Study Level
                            </label>
                            <select class="form-control form-control-solid form-select p-2" data-control="select2" data-placeholder="Select Study Level" id="Entry_Level" name="Entry_Level"></select>
                        </div>
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                Study Intake Period
                            </label>
                            <div class="row">
                                <div class="col-6">
                                    <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Semester" id="Intake_Semester" name="Intake_Semester">
                                        <option value="Autumn">Autumn</option>
                                        <option value="Winter">Winter</option>
                                        <option value="Spring">Spring</option>
                                        <option value="Summer">Summer</option>
                                        <option value="Month">Month</option>
                                    </select>
                                </div>
                                <div class="col-6">
                                    <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Year" id="Intake_Year" name="Intake_Year">
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                        <option value="2026">2026</option>
                                        <option value="2027">2027</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="pt-2 fv-row col-lg-6" id="div_IntakeMonth">
                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2" id="IntakeMonth">Intake Month</label>
                            <div class="col-lg-6">
                                <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Month" id="Intake_Month" name="Intake_Month">
                                    <option value="">-</option>
                                    <option value="Jan">Jan</option>
                                    <option value="Feb">Feb</option>
                                    <option value="Mar">Mar</option>
                                    <option value="Apr">Apr</option>
                                    <option value="May">May</option>
                                    <option value="June">June</option>
                                    <option value="July">July</option>
                                    <option value="Aug">Aug</option>
                                    <option value="Sep">Sep</option>
                                    <option value="Oct">Oct</option>
                                    <option value="Nov">Nov</option>
                                    <option value="Dec">Dec</option>
                                </select>
                            </div>
                        </div>

                    </div>
                    <div class="row p-1 mb-10">
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                Source
                            </label>
                            <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Source" id="Source" name="Source">
                                <option value="Inquiry (Call, SMS, Social Media)">Inquiry (Call, SMS, Social Media)</option>
                                <option value="Leads">Leads</option>
                                <option value="Radio/ News Paper Advertising">Radio/ News Paper Advertising</option>
                                <option value="Advert - Flyer">Advert - Flyer</option>
                                <option value="Webinar/ Event">Webinar/ Event</option>
                                <option value="Advert - Poster">Advert - Poster</option>
                                <option value="University Partner Referral">University Partner Referral</option>
                                <option value="Ambassador Referral">Ambassador Referral</option>
                                <option value="Student Referral">Student Referral</option>
                                <option value="Email - Branch">Email - Branch</option>
                                <option value="HQ/ Staff Referral">HQ/ Staff Referral</option>
                                <option value="Self-Reference">Self-Reference</option>
                            </select>
                        </div>
                        <div class="pt-2 fv-row col-lg-6">
                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                Source Detail
                            </label>
                            <input class="form-control form-control-solid" name="Source_Detail" id="Source_Detail" />
                        </div>
                    </div>
                    <div class="text-center mb-0">
                        <button type="button" id="btn_submit" class="btn btn-lg btn-success me-3">
                            <span class="indicator-label">Submit
                        <span class="svg-icon svg-icon-3 ms-2 me-0">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black" />
                                <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black" />
                            </svg>
                        </span>
                            </span>
                            <span class="indicator-progress">Please wait...
                    <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                        </button>
                        <button type="button" id="btn_update" class="btn btn-lg btn-primary me-3 d-none">
                            <span class="indicator-label">Update
                        <span class="svg-icon svg-icon-3 ms-2 me-0">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black" />
                                <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black" />
                            </svg>
                        </span>
                            </span>
                            <span class="indicator-progress">Please wait...
                    <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script src="/assets/js/custom/Student_Registration/leads.js?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>
    <script src="https://unpkg.com/@yaireo/tagify"></script>
    <script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
    <link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"
        integrity="sha512-BNaRQnYJYiPSqHHDb58B0yaPfCu+Wgds8Gp/gU33kqBtgNS4tSPHuGibyoeqMV/TJlSKda6FXzoEyYGjTe+vXA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
    <script>
        // On document ready
        KTUtil.onDOMContentLoaded(function () {
            KTCreateAccountt.init();
        });

        var KTCreateAccountt = function () {
            // Elements
            var form;
            var formSubmitButton;
            var formContinueButton;
            var formPreviousButton;
            debugger;
            // Variables
            var stepperObj;
            var validations = [];

            var handleForm = function () {
                formSubmitButton.addEventListener('click', function (e) {
                    debugger;
                    // Validate form before change stepper step
                    var validator = validations[0]; // get validator for last form
                    var input = $('#div_university select');
                    debugger;
                    var found = false;
                    for (var i = 0; i < input.length; i++) {
                        if ($(input[i]) !== '') {
                            found = true;
                        }
                    }

                    debugger;
                    validator.validate().then(function (status) {
                        console.log('validated!');
                        debugger;

                        if (status == 'Valid' && (found == true)) {
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
                                var mobile = $("#phone").val();
                                var email = $("#Email").val();
                                var residence = $("#residence option:selected").val();
                                var nationality = $("#Nationality option:selected").text();
                                var pfl_office = $("#PFL_Office").val();
                                var study_countries = $("#study_countries").val();
                                var study_level = $("#Entry_Level").val();
                                var intake_semester = $("#Intake_Semester").val();
                                var intake_year = $("#Intake_Year").val();
                                var intake_month = $("#Intake_Month").val();
                                var source = $("#Source").val();
                                var source_detail = $("#Source_Detail").val();
                                var Status = $("#Status").val();
                                study_countries = JSON.stringify(study_countries.toString());
                                study_countries = study_countries.toString();


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
                                    sir_name: sir_name, mobile: mobile,
                                    email: email, nationality: nationality, residence: residence, pfl_office: pfl_office,
                                    study_countries: study_countries, study_universities: study_universities, study_universities_id: study_universities_id,
                                    study_level: study_level, intake_year: intake_year,
                                    intake_semester: intake_semester, intake_month: intake_month,
                                    source: source, source_detail: source_detail, Status: Status
                                }

                                formData = JSON.stringify(formData);
                                $.ajax({
                                    type: "post",
                                    url: "/Student_Registration/Leads.aspx/Insert_Lead",
                                    contentType: "application/json; charset=utf-8",
                                    data: formData,
                                    datatype: "json",
                                    success: success_lead,
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
                    var validator = validations[0]; // get validator for last form
                    var input = $('#div_university select');
                    debugger;
                    var found = false;
                    for (var i = 0; i < input.length; i++) {
                        if ($(input[i]) !== '') {
                            found = true;
                        }
                    }

                    debugger;
                    validator.validate().then(function (status) {
                        console.log('validated!');
                        debugger;

                        if (status == 'Valid' && (found == true)) {
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
                                var mobile = $("#phone").val();
                                var email = $("#Email").val();
                                var residence = $("#residence option:selected").val();
                                var nationality = $("#Nationality option:selected").text();
                                var pfl_office = $("#PFL_Office option:selected").val();
                                var study_countries = $("#study_countries").val();
                                var study_level = $("#Entry_Level").val();
                                var intake_semester = $("#Intake_Semester").val();
                                var intake_year = $("#Intake_Year").val();
                                var intake_month = $("#Intake_Month").val();
                                var source = $("#Source").val();
                                var source_detail = $("#Source_Detail").val();
                                var Status = $("#Status").val();

                                //study_countries = JSON.stringify(study_countries);
                                study_countries = JSON.stringify(study_countries.toString());
                                study_countries = study_countries.toString();

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
                                    sir_name: sir_name, mobile: mobile,
                                    email: email, nationality: nationality, residence: residence, pfl_office: pfl_office,
                                    study_countries: study_countries, study_universities: study_universities, study_universities_id: study_universities_id,
                                    study_level: study_level, intake_year: intake_year,
                                    intake_semester: intake_semester, intake_month: intake_month,
                                    source: source, source_detail: source_detail, Status: Status,lead_id: Lead_id
                                }

                                formData = JSON.stringify(formData);
                                $.ajax({
                                    type: "post",
                                    url: "/Student_Registration/Leads.aspx/Update_Lead",
                                    contentType: "application/json; charset=utf-8",
                                    data: formData,
                                    datatype: "json",
                                    success: success_lead,
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
            function success_lead(response) {
                debugger;
                if (response.d[0]['return'] == '1') {
                    Swal.fire({
                        icon: 'success',
                        title: 'Lead Submitted Successfully.',
                        showConfirmButton: true,
                        timer: 50000,
                        confirmButtonText: "Ok",
                        customClass: {
                            confirmButton: "btn btn-success"
                        }
                    });
                    if ($('#Status').val() == '1') {
                        var stdId = response.d[0]['id'];
                        window.location.href = '/Student_Registration/Student_Registration.aspx?StdId=' + stdId + '&' + '';
                    } else {
                        window.location.href = "/Student_Registration/Leads_List.aspx";
                    }

                    //var location = window.location.href;
                    //location.reload();
                }
                else if (response.d[0]['return'] == '2') {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Email Already Exist!',
                        showConfirmButton: true,
                        timer: 20000,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-light"
                        }
                    })
                }
                else {
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
                            'phone': {
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
                            'Entry_Level': {
                                validators: {
                                    notEmpty: {
                                        message: 'Entry Level is required'
                                    }

                                }
                            },
                            'study_countries': {
                                validators: {
                                    notEmpty: {
                                        message: 'Study Country is required'
                                    }
                                }
                            },
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
                            bootstrap: new FormValidation.plugins.Bootstrap5({
                                rowSelector: '.fv-row',
                                eleInvalidClass: '',
                                eleValidClass: ''
                            })
                        }
                    }
                ));


            }

            return {
                // Public Functions
                init: function () {
                    // Elements

                    form = document.querySelector('#kt_create_account_form');
                    formSubmitButton = form.querySelector('#btn_submit');
                    formUpdateButton = form.querySelector('#btn_update');
                    initValidation();
                    handleForm();
                }
            };
        }();
        var Lead_id = "";

        var doc = new jsPDF();
        var specialElementHandlers = {
            '#editor': function (element, renderer) {
                return true;
            }
        };

        $('#cmd').click(function () {

            //////////////
            //////////////
            //document.querySelector('#btn-print').addEventListener('click', function () {
            //    // window.print();

            //    let wspFrame = document.getElementById('frame').contentWindow;
            //    wspFrame.focus();
            //    wspFrame.print();
            //});
            //////////////
            //////////////

            //document.querySelector('#btn-one').addEventListener('click', function () {
            html2canvas(document.querySelector('#content')).then((canvas) => {
                let base64image = canvas.toDataURL('image/png');
                // console.log(base64image);
                let pdf = new jsPDF('p', 'px', [1600, 1131]);
                pdf.addImage(base64image, 'PNG', 15, 15, 2540, 1966);
                pdf.save('webtylepress-two.pdf');
            });
            //});
            //////////////
            //////////////
            //document.querySelector('#btn-two').addEventListener('click', function () {
            //    html2canvas(
            //        document
            //            .querySelector('iframe')
            //            .contentWindow.document.querySelector('.receipt-wrap'),
            //    ).then((canvas) => {
            //        let base64image = canvas.toDataURL('image/png');
            //        // console.log(base64image);
            //        let pdf = new jsPDF('p', 'px', [1600, 1131]);
            //        pdf.addImage(base64image, 'PNG', 15, 15, 1140, 966);
            //        pdf.save('webtylepress-receipt.pdf');
            //    });
            //});


            //debugger;
            //doc.fromHTML($('#content').html(), 15, 15, {
            //    'width': 170,
            //    'elementHandlers': specialElementHandlers
            //});
            //doc.save('sample-file.pdf');

        });
        $(document).ready(function () {
            $('#div_IntakeMonth').hide();
            load_Countries();
            load_PFL_OFFICES();
            $("#residence").change(function () {
                debugger;
                var end = this.value;
                var Country_ID = $('#residence').val();
            });
            load_Entry_Levels();

            $("#Intake_Semester").change(function () {
                var end = this.value;
                $('#intake_month').val("");
                var Intake = $('#Intake_Semester').val();
                if (Intake == "Month") {
                    $('#div_IntakeMonth').show();
                }
                else {
                    $('#div_IntakeMonth').hide();
                    $('#intake_month').val("");
                }
            });
            //onchange for Study Country university row repeater
            $.ajax({
                type: "post",
                url: "/Student_Registration/Student_Registration.aspx/GET_STUDY_COUNTRIES",
                contentType: "application/json; charset=utf-8",
                async: false,
                //data: param,
                datatype: "json",
                success: load_StudyCountries,
                error: function (response) { debugger; swal("Failed"); }
            });

            //Edit Call
            var urlParams = new URLSearchParams(window.location.search).toString().split('&');
            if (urlParams.length > 0 && urlParams[0] != "") {
                debugger;
                var recordId = urlParams[0].toString().split("=");
                if (recordId[0] == 'StdId') {
                    Lead_id = recordId[1];
                    EditLead(recordId[1]);
                }
            }

            function EditLead(Lead_id) {

                var formData = {
                    Lead_id: Lead_id
                }
                formData = JSON.stringify(formData);
                $.ajax({
                    type: "post",
                    url: "/Student_Registration/Leads.aspx/Lead_ById",
                    contentType: "application/json; charset=utf-8",
                    data: formData,
                    datatype: "json",
                    success: EditLeadResponse,
                    error: function (response) { debugger; swal("Failed"); }
                });
            }
            function EditLeadResponse(response) {
                debugger;
                var leadDetails = response.d;
                $('#btn_update').removeClass('d-none');
                $('#btn_submit').hide();

                debugger;
                $("#student_name").val(leadDetails[0].Student_Name);
                $("#sir_name").val(leadDetails[0].SirName);
                $("#Email").val(leadDetails[0].Email);
                $("#phone").val(leadDetails[0].Mobile_No);
                //$("#residence option:contains(" + leadDetails[0].Residence_Country + ")").attr('selected', 'selected'); $("#select2-residence-container").val(leadDetails[0].Residence_Country);
                $("#residence").val(leadDetails[0].Residence_Country).trigger('change');

                $("#Nationality option:contains(" + leadDetails[0].Nationality + ")").attr('selected', 'selected'); $("#select2-Nationality-container").text(leadDetails[0].Nationality);
                //$("#Nationality").select2("val", leadDetails[0].Nationality);

                $("#PFL_Office").val(leadDetails[0].PFL_Office).trigger('change');
                $("#Intake_Semester option:contains(" + leadDetails[0].Intake_Semester + ")").attr('selected', 'selected'); $("#select2-Intake_Semester-container").text(leadDetails[0].Intake_Semester);
                $("#Intake_Year option:contains(" + leadDetails[0].Intake_Year + ")").attr('selected', 'selected'); $("#select2-Intake_Year-container").text(leadDetails[0].Intake_Year);
                if (leadDetails[0].intake_month != "") {
                    $("#Intake_month option:contains(" + leadDetails[0].Intake_Month + ")").attr('selected', 'selected'); $("#select2-Intake_month-container").text(leadDetails[0].Intake_Year);
                }
                $("#Entry_Level").val(leadDetails[0].Study_Level).trigger('change');

                $("#Source option:contains(" + leadDetails[0].Source + ")").attr('selected', 'selected'); $("#select2-Source-container").text(leadDetails[0].Source);
                $("#Source_Detail").val(leadDetails[0].Source_Detail);
                const countriess = JSON.parse(leadDetails[0].Study_Countries);
                $('#study_countries').select2().val(countriess).trigger('change');
                var selected = $('#study_countries').select2("data"); var country = [];
                for (var i = 0; i <= selected.length - 1; i++) {
                    country.push(selected[i].text);
                }
                console.log(country);

                debugger;
                for (let i = 0; i < countriess.length; i++) {

                    AddUniversity(countriess[i], country[i]);
                }

                let input = $('#div_university select');
                //console.log(input);
                let id_uni = '';
                debugger;
                for (let i = 0; i < input.length; i++) {
                    debugger;
                    if ((input[i]).id !== '') {
                        debugger;
                        id_uni += input[i].id.replace(/ /g, '') + ',';
                    }
                }
                var UniIds = id_uni.split(",");

                var universities = (leadDetails[0].Study_Universities).replace(/ /g, '');
                universities = (universities).split(";");
                for (let i = 0; i < universities.length; i++) {
                    debugger;
                    var UniId = universities[i].toString().split("=");
                    if (UniIds[i] != "") {
                        //alert(UniId[1]);
                        var UniIdd = UniId[1].split(",");
                        $('#' + UniId[0]).select2().val(UniIdd).trigger('change');
                    }
                }
                debugger;
                //console.log(countries);
                //for (let i = 0; i < countriess.length; i++) {

                //    //$("#study_countries").find("option[value=" + countriess[i] + "]").prop("selected", "selected");
                //    $('#study_countries').val(countriess[i]).trigger('change');
                //}
                //$("#study_countries").multiselect('reload');
                //var countries = (countriess).split(",");
                //console.log(countries);
                //for (let i = 0; i < countries.length; i++) {
                //    //debugger;
                //    ////$('#study_countries').val(countries)
                //    //$('#study_countries').val(countriess).trigger('change');;
                //}
                debugger
                //    $("#complaint_date").html(
                //        complaintDetails[0].Complaint_Date +
                //        "<br><span class='fs-7'>" + complaintDetails[0].Complaint_Time + "</span>"
                //    );
                //    $("#rasied_by").html(
                //        complaintDetails[0].Raised_By_Employee_Number +
                //        "<br><span class='fs-7'>" + complaintDetails[0].Raised_By_Name + "</span>"
                //    );

                //    if (complaintDetails[0].Representative == null) {
                //        $("#responsibility").html(
                //            "<br><span class='fs-7 text-ufone'>-</span>"
                //        )
                //    }
                //    else {
                //        $("#responsibility").html(
                //            complaintDetails[0].Department_Name +
                //            "<br><span class='fs-7 text-ufone'>" + complaintDetails[0].Representative + "</span>"
                //        )
                //    }

                //    var complaintComments = getServiceResponse("ECMS.asmx/GetComplaintComments", "POST", formData);
                //    if (complaintComments.Code == "1") {
                //        complaintComments = JSON.parse(complaintComments.Data);

                //        RenderComplaintComments(complaintComments);
                //    }
                //    $("#kt_modal_view_complaint").modal("show");
                //    //table.draw();
            }

            var countries_data;
            function load_StudyCountries(dataa) {
                var data = dataa.d;
                debugger;
                $('#study_countries').empty();

                $.each(data, function (key, entry) {

                    $('#study_countries').append($('<option></option>').attr('value', entry.Id).text(entry.name));
                })

                //const Universities = [{ id: 1, name: "United Kingdom" }];
                //// The DOM elements you wish to replace with Tagify
                //var input = document.querySelector("#study_countriess");
                //countries_data = data;
                // Initialize Tagify script on the above inputs
                //    tagify = new Tagify(input, {

                //        //wishlist is for rendering data from backend to in data table after deserializing the datatable
                //        whitelist: data.d.map(({ Id, name }) => ({ value: Id, name })),
                //        enforceWhitelist: false,
                //        tagTextProp: 'name',
                //        maxtags: 5,
                //        dropdown: {
                //            enabled: 1,
                //            position: 'name',
                //            mapValueTo: 'name',
                //            highlightFirst: true,
                //            searchKeys: ['name'],
                //            maxItems: 300,           // <- mixumum allowed rendered suggestions
                //            closeOnSelect: true    // <- do not hide the suggestions dropdown once an item has been selected
                //        }
                //        ,
                //        callbacks: {
                //            "add": (e) => { AddUniversity(e.detail["data"].value, e.detail["data"].name) },
                //            "remove": (e) => {
                //                debugger;
                //                console.log(e.detail["data"].name);
                //                var div_id = '#div_study_' + e.detail["data"].name;
                //                div_id = div_id.replace(/ /g, '');
                //                RemoveUniversity(div_id);
                //            },

                //        }
                //    });
            }
            $('#study_countries').on('select2:select', function (e) {
                debugger;
                var data = e.params.data;
                AddUniversity(data.id, data.text)
                console.log(data);
            });
            $('#study_countries').on('select2:unselecting', function (e) {
                debugger;
                var data = e.params.args.data;
                var div_id = '#div_study_' + data.text;
                div_id = div_id.replace(/ /g, '');
                RemoveUniversity(div_id);
                console.log(data);
            });

            //$('#residence').on('change', function (e, data) {
            //    debugger;
            //    //var ID = data;
            //    load_PFL_OFFICES(e.isTrigger);
            //});
            function load_PFL_OFFICES() {
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

        });

    </script>
</asp:Content>
