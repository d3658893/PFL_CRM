<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Student_Registration.aspx.cs" Inherits="PFL_CRM.Student_Registration.Student_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <!--begin::Container-->
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">STUDENT REGISTRATION 
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
        <a href="javascript:void(0)" id="kt_tms_single_upload_btn" class="btn btn-warning me-5 mt-9 fs-8 d-none" data-bs-toggle="modal" data-bs-target="#kt_modal_Feedback"><i class="fa fa-user"></i>Add User </a>

            <div class="stepper stepper-pills stepper-column d-flex flex-column flex-xl-row flex-row-fluid" id="kt_create_account_stepper">
                <div class="d-flex justify-content-center bg-body rounded justify-content-xl-start flex-row-auto w-100 w-xl-300px w-xxl-400px me-9">
                    <div class="px-6 px-lg-10 px-xxl-15 py-20">
                        <div class="stepper-nav">
                            <div class="stepper-item current" data-kt-stepper-element="nav">
                                <div class="stepper-line w-40px"></div>
                                <div class="stepper-icon w-40px h-40px">
                                    <i class="stepper-check fas fa-check"></i>
                                    <span class="stepper-number">1</span>
                                </div>
                                <div class="stepper-label">
                                    <h3 class="stepper-title">Personal Detail</h3>
                                    <div class="stepper-desc fw-bold">Student Personal, Educational Detail</div>
                                </div>
                            </div>
                            <div class="stepper-item" data-kt-stepper-element="nav">
                                <div class="stepper-line w-40px"></div>
                                <div class="stepper-icon w-40px h-40px">
                                    <i class="stepper-check fas fa-check"></i>
                                    <span class="stepper-number">2</span>
                                </div>
                                <div class="stepper-label">
                                    <h3 class="stepper-title">University Info</h3>
                                    <div class="stepper-desc fw-bold">Choose University Country, Courses, Intakes </div>
                                </div>
                            </div>
                            <div class="stepper-item" data-kt-stepper-element="nav">
                                <div class="stepper-line w-40px"></div>
                                <div class="stepper-icon w-40px h-40px">
                                    <i class="stepper-check fas fa-check"></i>
                                    <span class="stepper-number">3</span>
                                </div>
                                <div class="stepper-label">
                                    <h3 class="stepper-title">Passport Detail</h3>
                                    <div class="stepper-desc fw-bold">Student Passport Detail</div>
                                </div>
                            </div>
                            <div class="stepper-item" data-kt-stepper-element="nav">
                                <div class="stepper-line w-40px"></div>
                                <div class="stepper-icon w-40px h-40px">
                                    <i class="stepper-check fas fa-check"></i>
                                    <span class="stepper-number">4</span>
                                </div>
                                <div class="stepper-label">
                                    <h3 class="stepper-title">Registration Fee & Interview Detail</h3>
                                    <div class="stepper-desc fw-bold">Fee Payments, Interviewer, Interview Time & Interview Type</div>
                                </div>
                            </div>
                            <div class="stepper-item" data-kt-stepper-element="nav">
                                <div class="stepper-line w-40px"></div>
                                <div class="stepper-icon w-40px h-40px">
                                    <i class="stepper-check fas fa-check"></i>
                                    <span class="stepper-number">6</span>
                                </div>
                                <div class="stepper-label">
                                    <h3 class="stepper-title">Completed</h3>
                                    <div class="stepper-desc fw-bold">Woah, we are done!</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex flex-row-fluid flex-center bg-body rounded">
                    <form class="py-20 w-100 w-xl-700px px-9" novalidate="novalidate" id="kt_create_account_form">
                        <div class="current" data-kt-stepper-element="content">
                            <div class="w-100">
                                <div class="pb-10 pb-lg-15">
                                    <h2 class="fw-bolder d-flex align-items-center text-dark">Personal Details
                                        <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="Student's Complete detail"></i>
                                    </h2>
                                    <div class="text-muted fw-bold fs-6">
                                        Which country do you live in & your nationality?
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-6">
                                             <input type="hidden" id="studID" name="studID" value="">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                First Name *
                                            </label>
                                            <input name="student_name" class="form-control form-control form-control-solid p-2" autocomplete="off" id="student_name">
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Last Name *
                                            </label>
                                            <input name="student_name" class="form-control form-control form-control-solid p-2" autocomplete="off" id="sir_name">
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-switch form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Date of Birth *
                                            </label>
                                            <input name="DOB" class="form-control form-control form-control-solid p-2" id="DOB" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Gender *
                                            </label>
                                            <select class="form-control form-control-solid form-select gender p-2" data-control="select2" autocomplete="off" data-placeholder="Select Gender" id="gender" name="gender">
                                                <option>Male
                                                </option>
                                                <option>Female
                                                </option>
                                            </select>
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-switch form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Mobile No. *
                                           
                                            </label>
                                            <input name="mobile" class="form-control form-control form-control-solid p-2" id="mobile" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2" autocomplete="off">
                                                Email * 
                                            </label>
                                            <input name="Email" class="form-control form-control form-control-solid p-2" id="Email" autocomplete="off">
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-switch form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
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
                                            <select class="form-control form-control-solid form-select Nationality p-2" autocomplete="off" data-control="select2" data-placeholder="Select Nationality" id="Nationality" name="Nationality">
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
                                                Marital Status
                                            </label>
                                            <select class="form-control form-control-solid form-select Marital-Status p-2" autocomplete="off" data-control="select2" data-placeholder="Select Marital Status" id="Marital_Status" name="Marital_Status">
                                                <option value="Divorced">Divorced</option>
                                                <option value="Married">Married</option>
                                                <option value="Single">Single</option>
                                                <option value="Widowed">Widowed</option>
                                                <option value="-">-</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Permanent Address *
                                            </label>
                                            <textarea class="form-control form-control-solid p-2" type="" autocomplete="off" placeholder="Your Permanent Address" id="PAddress" name="PAddress"></textarea>
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Current Address *
                                            </label>
                                            <textarea class="form-control form-control-solid p-2" type="" autocomplete="off" placeholder="Your Current Address" id="CAddress" name="CAddress"></textarea>
                                        </div>
                                        <div class="pt-2 fv-row  col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Student/Sponser Employment Status
                                            </label>
                                            <select class="form-control form-control-solid form-select Employment-Status p-2" autocomplete="off" data-control="select2" data-placeholder="Select Employment Status" id="Employment-Status" name="Employment-Status">
                                                <option>Employee</option>
                                                <option>Self-employed</option>
                                                <option>Contractor/Freelancer</option>
                                            </select>
                                        </div>
                                        <div class="pt-2 fv-row  col-lg-6">
                                            <label class="form-check form-switch form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Monthly Income
                                            </label>
                                            <input name="income" class="form-control form-control form-control-solid p-2" type="number" id="income" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="row fv-row  p-1">
                                        <div class="pt-2 fv-row col-lg-8">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Student Type
                                            </label>
                                            <select class="form-control form-control-solid form-select p-2" autocomplete="off" data-control="select2" data-placeholder="Select Student Type" id="Student_Type" name="Student_Type">
                                                <option>Direct Student – App and Visa Counseling</option>
                                                <option>Tagged Student – Compliance and Visa Counselling</option>
                                                <option>Tagged Student – Visa Counselling</option>
                                                <option>Non-Partner – App and Visa Counseling</option>
                                                <option>Non-Partner – Visa Counseling</option>
                                                <option>Premium Services – Tier 1</option>
                                                <option>Premium Services – Tier 2</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div data-kt-stepper-element="content">
                            <div class="w-100">
                                <div class="pb-10 pb-lg-15">
                                    <h2 class="fw-bolder text-dark">University Information</h2>
                                    <div class="text-muted fw-bold fs-6">
                                        Choose University Country, Courses, Intakes.
                                    <%--<a href="#" class="link-primary fw-bolder">Help Page</a>.--%>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                PFL Office (Nearest) *
                                            </label>
                                            <select class="form-control form-control-solid form-select PFL_Office p-2" autocomplete="off" data-control="select2" data-placeholder="Select PFL Nearest Office" id="PFL_Office" name="PFL_Office"></select>
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Study Countries (Preffered) *
                                            </label>
                                            <%--<input class="form-control form-control-solid" name="study_countries" id="study_countries" />--%>
                                            <select id="study_countries" name="study_countries" class="form-control form-select study_countries select2" data-control="select2" data-placeholder="Select Study Countries" multiple="multiple">
                                                <option></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Entry Study Level
                                            </label>
                                            <select class="form-control form-control-solid form-select p-2" autocomplete="off" data-control="select2" data-placeholder="Select Study Level" id="Entry_Level" name="Entry_Level">
                                            </select>
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                Study Intake Period *
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
                                    </div>
                                    <div class="row p-1 pt-6">
                                        <div class="pt-2 fv-row col-lg-6" id="div_university">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2 d-none" id="university_id">Study University Selection *</label>
                                            <div class="university_div ">
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
                                </div>
                            </div>
                        </div>
                        <div data-kt-stepper-element="content">
                            <div class="w-100">
                                <div class="pb-10 pb-lg-15">

                                    <h2 class="fw-bolder text-dark">Passport Details</h2>
                                    <div class="text-muted fw-bold fs-6">
                                        Passport No. , Passort Expiry etc.
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row  col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Passport No.
                                            </label>
                                            <input class="form-control form-control-solid" name="passport_no" id="passport_no" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Passport Authority
                                            </label>
                                            <input class="form-control form-control-solid" name="passport_auth" id="passport_auth" />
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row  col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Place of Birth
                                            </label>
                                            <input class="form-control form-control-solid" name="place_issue" id="place_issue" />
                                        </div>
                                        <div class="pt-2 fv-row  col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Date of Issue
                                            </label>
                                            <input class="form-control form-control-solid" name="issue_date" id="issue_date" />
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Date of Expiry
                                            </label>
                                            <input class="form-control form-control-solid" name="expiry_date" id="expiry_date" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Previous Visa Refusal
                                            </label>
                                            <input class="form-check-input ms-3" type="checkbox" name="Visa_Refusal" id="Visa_Refusal" />
                                        </div>
                                    </div>
                                    <div class="row p-1 visa_refusalR d-none">
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Refusal Year
                                            </label>
                                            <input class="form-control form-control-solid" name="refusal_Year" id="refusal_Year" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Refusal Country
                                            </label>
                                            <select id="refusal_Country" name="refusal_Country" class="form-control form-control-solid form-select refusal_Country p-2" autocomplete="off" data-control="select2" data-placeholder="Select Refusal Countries">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="p-2 pt-4">
                                        <h2 class="fw-bolder text-dark pt-6">Source Details</h2>
                                        <div class="text-muted fw-bold fs-6">
                                            Source, Source Detail
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Source *
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
                                                Source Detail *
                                            </label>
                                            <input class="form-control form-control-solid" name="Source_Detail" id="Source_Detail" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div data-kt-stepper-element="content">
                            <div class="w-100">
                                <div class="pb-10 pb-lg-15">
                                    <h2 class="fw-bolder text-dark">Registration Fee & Interview Detail</h2>
                                    <div class="text-muted fw-bold fs-6">
                                        Fee Payments, Interviewer, Interview Time, Interview Type, Interviewer Name & Interview Date
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row  col-lg-4 d-none">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Interviewer Type
                                            </label>
                                            <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Year" name="Interview_Type" id="Interview_Type">
                                                <option>PFL Officer</option>
                                            </select>
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Interviewer Name
                                            </label>
                                            <input class="form-control form-control-solid" name="Interview_Name" id="Interview_Name" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Follow Up
                                            </label>
                                            <input class="form-check-input ms-3" id="Follow_Up" name="Follow_Up" type="checkbox">
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row  col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Interview Date & Time
                                            </label>
                                            <input class="form-control form-control-solid" name="Interview_Date" id="Interview_Date" />
                                        </div>
                                        <div class="pt-2 fv-row  col-lg-6 d-none">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Interview Time
                                            </label>
                                            <input class="form-control form-control-solid" name="Interview_Time" id="Interview_Time" />
                                        </div>
                                        <div class="pt-2 fv-row  col-lg-6">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Counsellor *
                                            </label>
                                            <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Counsellor" id="Counceler" name="Counceler">
                                            </select>
<%--                                            <input class="form-control form-control-solid" name="Counceler" id="Counceler" />--%>
                                        </div>
                                    </div>
                                    <div class="row p-1 d-none">
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                UCAS No.
                                            </label>
                                            <input class="form-control form-control-solid" name="UCAS_No" id="UCAS_No" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                UCAS Login ID
                                            </label>
                                            <input class="form-control form-control-solid" name="UCAS_Login" id="UCAS_Login" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                UCAS Password
                                            </label>
                                            <input class="form-control form-control-solid" name="UCAS_Password" id="UCAS_Password" />
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-4 d-none">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Accomodation Arranged
                                            </label>
                                            <input class="form-check-input ms-3" id="Accomodation_Arranged" name="Accomodation_Arranged" type="checkbox">
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Ability to Pay Tution Fee Proved
                                            </label>
                                            <input class="form-check-input ms-3" id="Abitlity_To_Fee" name="Abitlity_To_Fee" type="checkbox">
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4 d-none">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Primary Contact Officer *
                                            </label>
                                            <input class="form-control form-control-solid" name="Contact_Officer" id="Contact_Officer" />
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Payment Type *
                                            </label>
                                            <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Year" name="Payment_Type" id="Payment_Type">
                                                <option>Full</option>
                                                <option>Partial</option>
                                                <option>No Payment</option>
                                            </select>
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Paid Amount *
                                            </label>
                                            <input class="form-control form-control-solid" name="Reg_Fee" id="Reg_Fee" type="number" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-6 payment_deadlineR d-none">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Payment Deadline
                                            </label>
                                            <select id="paymentdeadline" name="paymentdeadline" data-control="select2"  class="form-control form-select" data-placeholder="Select Payment deadline">
                                                <option value="19">Deposit Made</option>
                                                <option value="23">CAS Attained</option>
                                                <option value="18">Offer Recieved & Accepted</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Payment Method*
                                            </label>
                                            <%--                                            <input class="form-control form-control-solid" name="Payment_Method" id="Payment_Method" />--%>
                                            <select id="Payment_Method" name="Payment_Method" class="form-control form-select" data-control="select2"  data-placeholder="Select Payment Method">
                                                <option value="Cash">Cash</option>
                                                <option value="Bank Transfer">Bank Transfer</option>
                                                <option value="Cheque">Cheque</option>
                                            </select>
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Payment Reference *
                                            </label>
                                            <input class="form-control form-control-solid" name="Bank_Reciept" id="Bank_Reciept" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4 d-none">
                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                               Registration No.
                                            </label>
                                            <input class="form-control form-control-solid p-2" type="number" autocomplete="off" placeholder="Your Registration No." id="Reg_No" name="Reg_No"/>
                                        </div>

                                    </div>
                                    <div class="row p-1">
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Payment Currency *
                                            </label>
                                            <select id="Payment_Currency" name="Payment_Currency" class="form-control form-select" data-placeholder="Select Payment Currency">
                                                <option value="PKR">PKR</option>
                                                <option value="NGN">NGN</option>
                                                <option value="USD">USD</option>
                                                <option value="GBP">GBP</option>
                                            </select>
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Total Fee *
                                            </label>
                                            <input class="form-control form-control-solid" name="TotalReg_Fee" id="TotalReg_Fee" type="number" />
                                        </div>
                                        <div class="pt-2 fv-row col-lg-4">
                                            <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                Disclaimer / Notes
                                            </label>
                                            <textarea class="form-control form-control-solid p-2" type="" autocomplete="off" placeholder="Your Disclaimer" id="Disclaimer" name="Disclaimer"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div data-kt-stepper-element="content">
                            <div class="w-100">
                                <div class="pb-8 pb-lg-10">
                                    <h2 class="fw-bolder text-dark">Your Are Done!</h2>
                                </div>
                                <div class="mb-0">
                                    <div class="fs-6 text-gray-600 mb-5">Registration has been successfuly submitted and forwarded to concerned team for their consideration.</div>
                                    <div class="notice d-flex bg-light-warning rounded border-warning border border-dashed p-6">
                                        <span class="svg-icon svg-icon-2tx svg-icon-warning me-4">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="10" fill="black" />
                                                <rect x="11" y="14" width="7" height="2" rx="1" transform="rotate(-90 11 14)" fill="black" />
                                                <rect x="11" y="17" width="2" height="2" rx="1" transform="rotate(-90 11 17)" fill="black" />
                                            </svg>
                                        </span>
                                        <div class="d-flex flex-stack flex-grow-1">
                                            <div class="fw-bold">
                                                <h4 class="text-gray-900 fw-bolder">We need your attention!</h4>
                                                <div class="fs-6 text-gray-700 mb-1">
                                                    Please track the status of your Live Student in
                                                </div>
                                                <a class="btn btn-light-primary bg-hover-primary" href="/Student_Registration/Live_Students.aspx">Live Students</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex flex-stack pt-10">
                            <div class="mr-2">
                                <button type="button" class="btn btn-lg btn-light-primary me-3" data-kt-stepper-action="previous">
                                    <span class="svg-icon svg-icon-4 me-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <rect opacity="0.5" x="6" y="11" width="13" height="2" rx="1" fill="black" />
                                            <path d="M8.56569 11.4343L12.75 7.25C13.1642 6.83579 13.1642 6.16421 12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75L5.70711 11.2929C5.31658 11.6834 5.31658 12.3166 5.70711 12.7071L11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25C13.1642 17.8358 13.1642 17.1642 12.75 16.75L8.56569 12.5657C8.25327 12.2533 8.25327 11.7467 8.56569 11.4343Z" fill="black" />
                                        </svg>
                                    </span>
                                    Back</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-lg btn-primary me-3" data-kt-stepper-action="submit">
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
                                </button><button type="button" class="btn btn-lg btn-primary me-3 d-none" data-kt-stepper-action="update">
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
                                <button type="button" class="btn btn-lg btn-primary" data-kt-stepper-action="next">
                                    Continue
                                        <span class="svg-icon svg-icon-4 ms-1 me-0">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black" />
                                                <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black" />
                                            </svg>
                                        </span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div id="kt_modal_Feedback" class="modal fade col-lg-4" tabindex="-1">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" id="content">
                        <div id="editor"></div>
                        <div class="modal-header d-none">
                            <div class="modal-title">
                                <h3 class="fw-bolder text-white">Feedback</h3>
                            </div>
                            <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                                <span class="svg-icon svg-icon-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                        <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black"></rect>
                                        <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black"></rect>
                                    </svg>
                                </span><a href="../assets/">../assets/</a>
                                <!--end::Svg Icon-->
                            </div>
                        </div>
                        <div class="modal-body border-1">
                            <div class="ps-4 pb-6 row">
                                <button class="w-80px d-none" id="2cmd">download</button>
                                <button class="d-none" id="ptint_reciept" onclick='printDiv();'>print</button>
                                <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">Payment Details</span>
                                    <i class="fas fa-exclamation-circle ms-2 fs-8 d-none" data-bs-toggle="tooltip" title="Nature of Service in which ticket can be rasied."></i>
                                </h6>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Reciept No
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="Reciept_No">U110556</span>
                                </div>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Date Issued
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="DateIssued">2022-09-02</span>
                                </div>
                            </div>
                            <%--                            <div class="ps-4 p-4 row">
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Office
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="Office">PFL Islamabad</span>
                                </div>
                                <div class="text-dark fw-bold fs-8 col-6 text-center">
                                    Account Officer Stamp
                                </div>
                            </div>--%>
                            <div class="ps-4 pb-6 row">
                                <div class="col-md-6" style="height: 80px;">
                                    <div class="row">
                                        <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                            <span>Office</span>
                                        </div>
                                        <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                            <span id="Office">PFL Islamabad</span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                            <span>Address</span>
                                        </div>
                                        <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                            <span id="address"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                            <span>PFL Officer</span>
                                        </div>
                                        <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                            <span id="PFLOfficer">Yasir</span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                            <span>Amount</span>
                                        </div>
                                        <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                            <span id="Amount">PKR 150,000</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-dark m-0 p-0 fs-8 col-12 border border-dark col-md-6 h-75px">
                                    <div class="text-dark fs-8 border border-dark col-md-12 text-center">
                                        <span>Account Officer Stamp</span>
                                    </div>
                                </div>
                            </div>
                            <div class="ps-4 row">
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Bank Reciept No
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="BankReciept_No">U110556U110556U110556</span>
                                </div>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Tel-No
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="TelNo">20220902</span>
                                </div>
                            </div>
                            <div class="ps-4 row">
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Intake Month/Year
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="Intake">Winter/Spring 2023</span>
                                </div>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Method Of Payment
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="Payment">Standard Paid in Office</span>
                                </div>
                            </div>
                            <div class="ps-4 row">
                                <div class="text-muted fw-bold fs-8 col-6 text-center">
                                </div>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Study Country:
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="Country">United Country</span>
                                </div>
                            </div>
                            <div class="ps-4 pb-6 row">
                                <div class="text-muted fw-bold fs-8 col-6 text-center">
                                </div>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Intake Period:
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="Period">2023</span>
                                </div>
                            </div>
                            <div class="ps-4 row">
                                <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">Student Details</span>
                                </h6>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    PFL Ref.
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="PFLRef">U110556U110556</span>
                                </div>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Title
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="Title">Mr.</span>
                                </div>
                            </div>
                            <div class="ps-4 row">
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Fore Name.
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="ForeName">Abdul Saboor</span>
                                </div>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Last Name
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="LastName">Zazai</span>
                                </div>
                            </div>
                            <div class="ps-4 pb-6 row">
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Address
                                </div>
                                <div class="text-dark fs-8 col-3 border border-dark">
                                    <span class="form-check-label" id="Student_Address"></span>
                                </div>
                            </div>
                            <div class="ps-4 p-0 row">
                                <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">PFL Details</span>
                                </h6>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    PFL Staff Member
                                    <br />
                                    (please print name)
                                </div>
                                <div class="text-dark fs-8 col-9 border border-dark">
                                    <span class="form-check-label" id="PFLMember"></span>
                                </div>
                            </div>
                            <div class="ps-4 p-0 row">
                                <div class="text-dark fw-bold fs-8 pb-3 col-3 border border-dark">
                                    Position 
                                </div>
                                <div class="text-dark fs-8 col-9 border border-dark">
                                    <span class="form-check-label" id="Position"></span>
                                </div>
                            </div>
                            <div class="ps-4 p-0 row">
                                <div class="text-dark fw-bold fs-8 pb-3 col-3 border border-dark">
                                    Signature 
                                </div>
                                <div class="text-dark fs-8 col-9 border border-dark">
                                    <span class="form-check-label" id="Signature"></span>
                                </div>
                            </div>
                            <div class="ps-4 pb-6 p-0 row">
                                <div class="text-dark fw-bold  fs-8 col-3 border border-dark">
                                    Date Signed
                                    <br />
                                    (dd/mm/yyyy)
                                </div>
                                <div class="text-dark fs-8 col-9 border border-dark">
                                    <span class="form-check-label" id="DateSigned"></span>
                                </div>
                            </div>
                            <div class="ps-4 pb-6 row">
                                <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">Notes</span>
                                </h6>
                                <div class="text-dark fw-bold fs-8 col-12">
                                    <span class="form-check-label" id="Notes"></span>
                                </div>
                            </div>
                            <div class="ps-4 pb-6 row">
                                <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">DISLAIMER</span>
                                </h6>
                                <div class="text-dark fw-bold fs-8 col-12">
                                    1. All admissions are sub.jected to meeting institution requirements.<br />
                                    2. The granting/not granting of admission is at the sole discretion of the educational establishment/s concerned in the application
                                    process.<br />
                                    3. Granting/not granting of a student visa is at the sole discretion of the country of origin.<br />
                                    4. By signing the receipt, the student and/or sponsor accepts that s/he has read and accepted the full terms and conditions of PFL<br />
                                    5. Please note that the registration fee is non-refundable                        
                                    <br />
                                </div>
                            </div>
                            <div class="ps-4 p-0 row">
                                <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">STUDENT SIGNATURE</span>
                                </h6>
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Student Name
                                    <br />
                                    (please print name)
                                </div>
                                <div class="text-dark fs-8 col-9 border border-dark">
                                    <span class="form-check-label" id="StudentName"></span>
                                </div>
                            </div>
                            <div class="ps-4 p-0 row">
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Signature
                                    <br />
                                    (please print name)
                                </div>
                                <div class="text-dark fs-8 col-9 border border-dark">
                                    <span class="form-check-label" id="SignatureS"></span>
                                </div>
                            </div>
                            <div class="ps-4 p-0 row">
                                <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                    Date Signed
                                    <br />
                                    (dd/mm/yyyy)
                                </div>
                                <div class="text-dark fs-8 col-9 border border-dark">
                                    <span class="form-check-label" id="DateSignedS"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            </div>
        </div>
    </div>
    <script src="/assets/_jsPDF/jspdf.umd.min.js?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.3.2/html2canvas.min.js"></script>
    <script src="https://unpkg.com/@yaireo/tagify"></script>
    <script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
    <link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"
        integrity="sha512-BNaRQnYJYiPSqHHDb58B0yaPfCu+Wgds8Gp/gU33kqBtgNS4tSPHuGibyoeqMV/TJlSKda6FXzoEyYGjTe+vXA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>--%>
    <script>
        //var doc = new jspdf();
        window.jsPDF = window.jspdf.jsPDF;

        $('#cmd').click(function () {
            // Get the content container element
            var contentContainer = document.querySelector('#kt_modal_Feedback');

            // Check if the content container element exists
            if (contentContainer) {
                // Create a new jsPDF instance
                var doc = new jsPDF();

                // Get the width of the content container
                var containerWidth = contentContainer.offsetWidth;

                // Use html2canvas to capture the content container as an image
                html2canvas(contentContainer).then(function (canvas) {
                    // Convert the captured image to base64 data URL
                    var imgData = canvas.toDataURL('image/jpeg');

                    // Calculate the scale factor based on the container width and the canvas width
                    var scaleFactor = containerWidth / canvas.width;

                    // Calculate the final width and height based on the scale factor
                    var finalWidth = canvas.width * scaleFactor;
                    var finalHeight = canvas.height * scaleFactor;

                    // Add the image to the PDF document with the adjusted dimensions and position
                    doc.addImage(imgData, 'JPEG', 15, 15, 150, 170);

                    // Download the PDF
                    doc.save('StudentReceipt.pdf');
                });
            } else {
                console.error('Content container element not found.');
            }
        });

            //var doc = new jsPDF();
            //var specialElementHandlers = {
            //    '#editor': function (element, renderer) {
            //        return true;
            //    }
            //};

            //function printDiv() {

            //    var divToPrint = document.getElementById('content');

            //    var newWin = window.open('', 'Print-Window');

            //    newWin.document.open();

            //    newWin.document.write('<html><body onload="window.print()">' + content.innerHTML + '</body></html>');

            //    newWin.document.close();

            //    setTimeout(function () { newWin.close(); }, 10);

            //}
            //$('#cmd').click(function () {

            //        //////////////
            //        //////////////
            //        //document.querySelector('#btn-print').addEventListener('click', function () {
            //        //    // window.print();

            //        //    let wspFrame = document.getElementById('frame').contentWindow;
            //        //    wspFrame.focus();
            //        //    wspFrame.print();
            //        //});
            //        //////////////
            //        //////////////

            //        //document.querySelector('#btn-one').addEventListener('click', function () {
            //            html2canvas(document.querySelector('#content')).then((canvas) => {
            //                let base64image = canvas.toDataURL('image/png');
            //                var doc = new jsPDF("p", "mm", "a4");

            //                //var width = doc.internal.pageSize.getWidth();
            //                //var height = doc.internal.pageSize.getHeight();
            //                doc.addImage(base64image, 'PNG');
            //                // console.log(base64image);
            //                //let pdf = new jsPDF('p', 'px', [1400, 1000]);
            //                //pdf.addImage(base64image, 'PNG', 15, 15, 900, 606);
            //                pdf.save($('#Reciept_No').text()+'.pdf');
            //            });
            //        //});
            //        //////////////
            //        //////////////
            //        //document.querySelector('#btn-two').addEventListener('click', function () {
            //        //    html2canvas(
            //        //        document
            //        //            .querySelector('iframe')
            //        //            .contentWindow.document.querySelector('.receipt-wrap'),
            //        //    ).then((canvas) => {
            //        //        let base64image = canvas.toDataURL('image/png');
            //        //        // console.log(base64image);
            //        //        let pdf = new jsPDF('p', 'px', [1600, 1131]);
            //        //        pdf.addImage(base64image, 'PNG', 15, 15, 1140, 966);
            //        //        pdf.save('webtylepress-receipt.pdf');
            //        //    });
            //        //});


            //    //debugger;
            //    //doc.fromHTML($('#content').html(), 15, 15, {
            //    //    'width': 170,
            //    //    'elementHandlers': specialElementHandlers
            //    //});
            //    //doc.save('sample-file.pdf');

            //});

            $(document).ready(function () {
                load_Entry_Levels(); $('#div_IntakeMonth').hide();
                load_RefusalCountries(); Get_ConversionStaffs(); $("[id$='refusal_Year']").flatpickr({
                    dateFormat: "d-m-Y"
                });

                load_Countries(); load_PFL_ALLOFFICES();
                $("#residence").change(function () {
                    var end = this.value;
                    var Country_ID = $('#residence').val();
                //    load_PFL_OFFICES(Country_ID);
                });

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
                $("#Payment_Type").change(function () {
                    var Type = $('#Payment_Type').val();
                    if (Type == "Partial") {
                        $('.payment_deadlineR').removeClass('d-none');
                    }
                    else {
                        $('.payment_deadlineR').addClass('d-none');
                        $('#paymentdeadline').val("");
                    }
                });
                $(document).on('change', '#refusal_Year', function () {
                    debugger
                    var refusal_date = $(this).prop('value');

                    if (refusal_date) {
                        var date_parts = refusal_date.split('-');

                        // Create JavaScript date objects
                        var refusal_obj = new Date(date_parts[2], date_parts[1] - 1, date_parts[0]);
                        var today = new Date(); // Create a Date object for the current date

                        if (refusal_obj < today) {
                            return true; // Expiry date is valid
                        } else {
                            Swal.fire({
                                text: "Refusal Date should be older than today!",
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-light"
                                }
                            }).then(function () {
                                $(this).val('');
                            });
                        }
                    }

                });
                $(document).on('change', '#Visa_Refusal', function () {
                    if ($(this).prop('checked')) {
                        $('.visa_refusalR').removeClass('d-none');
                    }
                    else {
                        $('.visa_refusalR').addClass('d-none');
                        $('#refusal_Year').val("");
                        $('#refusal_Country').val("");
                    }
                });
                function Get_ConversionStaffs() {
                    $.ajax({
                        type: "post",
                        url: "/Student_Registration/ConvStaffBucket.aspx/GET_SALES_STAFF",
                        contentType: "application/json; charset=utf-8",
                        async: false,
                        //data: param,
                        datatype: "json",
                        success: load_ConversionStaffs,
                        error: function (response) { debugger; swal("Failed"); }
                    });
                }
                function load_ConversionStaffs(dataa) {
                    var data = dataa.d;
                    debugger;
                    $('#Counceler').empty();
                    $.each(data, function (key, entry) {
                        if (entry.name == 'Self') {

                        } else {
                            $('#Counceler').append($('<option></option>').attr('value', entry.Id).text(entry.name));
                        }
                    })
                }

                function load_RefusalCountries() {
                    debugger
                    $.ajax({
                        type: "post",
                        url: "/Student_Registration/Student_Registration.aspx/GET_STUDY_COUNTRIES",
                        contentType: "application/json; charset=utf-8",
                        //data: param,
                        datatype: "json",
                        success: function (response) {
                            debugger;
                            var entryLevellookup = response.d;
                            var newOption = new Option("Select Country", "", true, false);
                            $("#refusal_Country").append(newOption);
                            $.each(entryLevellookup, function (i) {
                                var newOption = new Option(entryLevellookup[i].name, entryLevellookup[i].Id, false, false);
                                $("#refusal_Country").append(newOption);
                            });
                        },
                        error: function (response) { debugger; swal("Failed"); }
                    });
                }


                $("expiry_date").keyup(function () {
                    $("input").css("background-color", "pink");
                });

                var Student_id = "";
                var urlParams = new URLSearchParams(window.location.search).toString().split('&');
                if (urlParams.length > 0 && urlParams[0] != "") {
                    debugger;
                    var recordId = urlParams[0].toString().split("=");
                    if (recordId[0] == 'StdId') {
                        Student_id = recordId[1];
                        EditStudent(recordId[1]);
                    }
                }
                function EditStudent(Student_id) {

                    var formData = {
                        Student_id: Student_id
                    }
                    formData = JSON.stringify(formData);
                    $.ajax({
                        type: "post",
                        url: "/Student_Registration/Student_Registration.aspx/LiveStudent_ById",
                        contentType: "application/json; charset=utf-8",
                        data: formData,
                        datatype: "json",
                        success: EditStudentResponse,
                        error: function (response) { debugger; swal("Failed"); }
                    });

                    function EditStudentResponse(response) {
                        var studentDetails = response.d;
                        //stepper = document.querySelector('#kt_create_account_stepper');
                        //formPreviousButton = stepper.querySelector('[data-kt-stepper-action="previous"]');
                        //formSubmitButton = stepper.querySelector('[data-kt-stepper-action="submit"]');
                        //formUpdateButton = stepper.querySelector('[data-kt-stepper-action="update"]');
                        //formUpdateButton.classList.remove('d-none');
                        //formSubmitButton.classList.remove('d-inline-block');
                        //formSubmitButton.classList.add('d-none');
                        //formPreviousButton.classList.add('d-none');
                        $('#studID').val(Student_id);
                        //$('#btn_submit').hide();
                        debugger
                        console.log(studentDetails);
                        $("#student_name").val(studentDetails[0].Student_Name);
                        $("#sir_name").val(studentDetails[0].SirName);
                        $("#DOB").val(studentDetails[0].dob_F);
                        $("#passport_no").val(studentDetails[0].Passport_No);
                        $("#passport_auth").val(studentDetails[0].Passport_Auth);
                        $("#place_issue").val(studentDetails[0].Passport_POI);
                        $("#issue_date").val(studentDetails[0].Passport_DOI_F);
                        $("#expiry_date").val(studentDetails[0].Passport_DOE_F);
                        $("#Source_Detail").val(studentDetails[0].Source_Detail);
                        $('#Source').select2().val(studentDetails[0].Source).trigger('change');
                        $('#gender').select2().val(studentDetails[0].Gender).trigger('change');
                        $('#residence').val(studentDetails[0].Residence_Country).trigger('change');
                        $("#PFL_Office").val(studentDetails[0].PFL_Office).trigger('change');
                        //$('#PFL_Office').select2().val(studentDetails[0].PFL_Office).trigger('change');
                        //$('#Entry_Level').select2().text(studentDetails[0].Study_Level).trigger('change');
                        //$('#Entry_Level').select2().val(studentDetails[0].Study_Level).trigger('change', { "ID": studentDetails[0].Study_Level });
                        $("#Entry_Level").val(studentDetails[0].Study_Level).trigger('change');
                        //$("#Entry_Level option:contains(" + studentDetails[0].Study_Level + ")").attr('selected', 'selected'); $("#select2-Entry_Level-container").val(studentDetails[0].Study_Level);
                        $("#mobile").val(studentDetails[0].Mobile_No);
                        $("#Email").val(studentDetails[0].Email);
                        $('#Nationality').select2().val(studentDetails[0].Nationality).trigger('change');
                        $('#Marital_Status').select2().val(studentDetails[0].Marital_Status).trigger('change');
                        $('#Employment-Status').select2().val(studentDetails[0].Employment_Status).trigger('change');
                        $('#Student_Type').val(studentDetails[0].Student_Type).trigger('change');
                        $('#Intake_Semester').select2().val(studentDetails[0].Intake_Semester).trigger('change');
                        $('#Intake_Year').select2().val(studentDetails[0].Intake_Year).trigger('change');
                        $('#Interview_Type').select2().val(studentDetails[0].Interview_Type).trigger('change');
                        //$('#Payment_Type').select2().val(studentDetails[0].Payment_Type).trigger('change');
                        $("#Interview_Name").val(studentDetails[0].Interview_Name);
                        $("#Interview_Date").val(studentDetails[0].Interview_DateTime_F);
                        $("#Counceler").select2().val(studentDetails[0].Counceler);
                        $("#UCAS_No").val(studentDetails[0].UCAS_No);
                        $("#UCAS_Login").val(studentDetails[0].UCAS_ID);
                        $("#UCAS_Password").val(studentDetails[0].UCAS_Password);
                        $("#Contact_Officer").val(studentDetails[0].Primary_OfficerContact);
                        $("#Reg_Fee").val(studentDetails[0].Reg_Fee);
                        $('#TotalReg_Fee').val(response.d[0]['TotalReg_Fee']);
                        $("#Payment_Method").val(studentDetails[0].Payment_Method);
                        $("#paymentdeadline").val(studentDetails[0].Payment_Deadline);
                        $("#Bank_Reciept").val(studentDetails[0].Bank_Reciept);
                        $("#Disclaimer").val(studentDetails[0].Disclaimer);
                        $("#PAddress").val(studentDetails[0].Permanent_Address);
                        $("#CAddress").val(studentDetails[0].Current_Address);
                        $("#income").val(studentDetails[0].Monthly_Income);
                        $("#Abitlity_To_Fee").prop('checked', true);
                        $("#Accomodation_Arranged").prop('checked', true);
                        $("#Follow_Up").prop('checked', studentDetails[0].Follow_Up);
                        $("#Visa_Refusal").prop('checked', studentDetails[0].Visa_Refusal);
                        $('#refusal_Country').select2().val(studentDetails[0].Visa_Refusal_Country).trigger('change');
                        $('#refusal_Year').val(studentDetails[0].Visa_Refusal_Date_F);
                        if ($('#Visa_Refusal').prop('checked')) {
                            $('.visa_refusalR').removeClass('d-none');
                        }
                        else {
                            $('.visa_refusalR').addClass('d-none');
                            $('#refusal_Year').val("");
                            $('#refusal_Country').val("");
                        }
                        $('#Reg_No').val(studentDetails[0].Ref_No);

                        debugger;
                        $("#Employment-Status").val(studentDetails[0].Employment_Status);
                        const countriess = JSON.parse(studentDetails[0].Study_Countries);
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

                        var universities = (studentDetails[0].Study_Universities).replace(/ /g, '');
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

                    }
                }

                $("#Payment_Type").change(function () {
                    //var end = this.value;
                    //$('#Payment_Type').val("");
                    var Payment_Type = $('#Payment_Type').val();
                    if (Payment_Type == "No Payment") {
                        $('#Reg_Fee').val('0');
                        $('#Reg_Fee').prop("disabled", true);
                    }
                    else {
                        $('#Reg_Fee').prop("disabled", false);
                        $('#Reg_Fee').val("");
                    }
                });
                $("[id$='DOB']").flatpickr({
                    dateFormat: "d-m-Y"
                });
                $("[id$='issue_date']").flatpickr({
                    dateFormat: "d-m-Y"
                });
                $("[id$='expiry_date']").flatpickr({
                    dateFormat: "d-m-Y"
                    //minDate: "today"
                });
                $("[id$='expiry_date']").flatpickr({
                    dateFormat: "d-m-Y"
                    //minDate: "today"
                });
                $("[id$='Interview_Date']").flatpickr({
                    dateFormat: "M d Y H:iK",
                    enableTime: true
                    //minDate: "today"
                });
                //onchange for Study Country university row repeater
                $.ajax({
                    type: "post",
                    url: "/Student_Registration/Student_Registration.aspx/GET_STUDY_COUNTRIES",
                    contentType: "application/json; charset=utf-8",
                    //data: param,
                    datatype: "json",
                    async: false,
                    success: load_StudyCountries,
                    error: function (response) { debugger; swal("Failed"); }
                });
                function load_StudyCountries(dataa) {
                    var data = dataa.d;
                    debugger;
                    $('#study_countries').empty();

                    $.each(data, function (key, entry) {

                        $('#study_countries').append($('<option></option>').attr('value', entry.Id).text(entry.name));
                    })
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

                //function load_StudyCountries(data) {
                //    debugger;
                //    const Universities = [{ id: 1, name: "United Kingdom" }];
                //    // The DOM elements you wish to replace with Tagify
                //    var input = document.querySelector("#study_countries");
                //    // Initialize Tagify script on the above inputs
                ////    new Tagify(input, {

                ////        //wishlist is for rendering data from backend to in data table after deserializing the datatable
                ////        whitelist: data.d.map(({ Id, name }) => ({ value: Id, name })),
                ////        enforceWhitelist: true,
                ////        tagTextProp: 'name',
                ////        maxtags: 5,
                ////        dropdown: {
                ////            enabled: 1,
                ////            position: 'name',
                ////            mapValueTo: 'name',
                ////            highlightFirst: true,
                ////            searchKeys: ['name'],
                ////            maxItems: 300,           // <- mixumum allowed rendered suggestions
                ////            closeOnSelect: true    // <- do not hide the suggestions dropdown once an item has been selected
                ////        }
                ////        ,
                ////        callbacks: {
                ////            "add": (e) => { AddUniversity(e.detail["data"].value, e.detail["data"].name) },
                ////            "remove": (e) => {
                ////                debugger;
                ////                console.log(e.detail["data"].name);
                ////                var div_id = '#div_study_' + e.detail["data"].name;
                ////                div_id = div_id.replace(/ /g, '');
                ////                RemoveUniversity(div_id);
                ////            }
                ////        }
                ////    });
                //}

                // stepper code
                //var element = document.querySelector("#kt_create_account_stepper");
                //var stepper = new KTStepper(element);
                //stepper.on("kt.stepper.next", function (stepper) {
                //    stepper.goNext(); // go next step
                //});
                //stepper.on("kt.stepper.previous", function (stepper) {
                //    stepper.goPrevious(); // go previous step
                //});



            });

    </script>
        <script src="/assets/js/custom/Student_Registration/registration.js?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>

</asp:Content>
