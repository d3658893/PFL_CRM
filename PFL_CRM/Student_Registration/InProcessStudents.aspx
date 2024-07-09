<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="InProcessStudents.aspx.cs" Inherits="PFL_CRM.Student_Registration.InProcessStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid bg-light-info" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <!--begin::Container-->
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">In-Process Students
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
                <!---page code here-->
                <div class="row gy-5 g-xl-8">
                    <!--begin::Col-->
                    <div class="col-xl-12">
                        <!--begin::Tables Widget 9-->
                        <div class="card card-xl-stretch mb-5 mb-xl-8">
                            <div class="card-body pt-0 pr-0">
                                <!--begin::Table container-->
                                <div class="table-responsive">
                                    <table class="table table-row-bordered gy-5 fs-7 gs-7" id="kt_datatable_students_listing">
                                        <thead>
                                            <tr class="fw-bolder fs-8 text-gray-800">
                                                <th class="min-w-10px">Sr.#</th>
                                                <th class="min-w-40px">ID</th>
                                                <th class="min-w-70px">Name</th>
                                                <th class="min-w-40px text-center">Registration Date</th>
                                                <th class="min-w-80px text-center">Reference No.</th>
                                                <th class="min-w-50px">Mobile</th>
                                                <th class="min-w-65px">Email</th>
                                                <th class="min-w-55px">Residence Country</th>
                                                <th class="min-w-30px text-center">Nationality</th>
                                                <th class="min-w-40px">Marital Status</th>
                                                <th class="min-w-40px">Student Type</th>
                                                <th class="min-w-40px text-center">PFL Office</th>
                                                <th class="min-w-40px text-center">Study Countries</th>
                                                <th class="min-w-40px">Study Level</th>
                                                <th class="min-w-40px">Intake Semester/Month/Year</th>
                                                <th class="min-w-40px">Counceler</th>
                                                <th class="min-w-40px">Payment Type</th>
                                                <th class="min-w-20px text-center">Reg_Fee</th>
                                                <th class="min-w-40px">DOB</th>
                                                <th class="min-w-40px">Gender</th>

                                                <th class="min-w-60px">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--end::Tables Widget 9-->
                    </div>
                    <!--end::Col-->
                    <div id="Document_Contents" class="modal fade col-lg-4">
                        <div class="modal-dialog mw-900px">
                            <div class="modal-content" id="conten">
                                <div class="modal-header bg-warning text-white">
                                    <h2 class="text-white fw-bolder" id="ModelHeaderName"></h2>
                                    <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
                                                <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                                <div class="modal-body h-auto" id="Document_Contents_body">
                                    <div class="row mb-6">
                                        <div class="col-6">
                                            <form class="bg-body mw-400px" novalidate="novalidate" id="kt_create_account_form">
                                                <input type="hidden" id="StudentID" name="StudentID" />
                                                <div class="align-items-center">
                                                    <div class="row">
                                                        <div class="pt-2 fv-row">
                                                            <div class="col-12">
                                                                <label class="form-label form-label-solid fw-bold mb-2 fs-6 p-2">
                                                                    Selected Universities
                                                                </label>
                                                                <select class="form-control form-control-solid form-select p-2" onchange="GetInProcessStatuses();" data-control="select2" data-placeholder="Universities" id="UniId" name="UniId">
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Current Status
                                                                </label>
                                                                <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Current Status" id="Status" name="Status">
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row applId d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Application Id *
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Applicantion Id" id="appId" name="appId" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row studId d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Student Id
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Student Id" id="StudID" name="StudID" />
                                                            </div>
                                                        </div><div class="pt-2 fv-row row FeesR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    University Fees
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" type="number" autocomplete="off" data-placeholder="University Fees" id="Fees" name="Fees" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row ScholarshipR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Scholarship
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" type="number" autocomplete="off" data-placeholder="Scholarship" id="Scholarship" name="Scholarship" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row OAdateR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Offer Acceptance DueDate
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Offer Acceptance Date" id="OAdate" name="OAdate" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row CASDeadlineR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    CAS Deadline
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="CAS Deadline" id="CASDeadline" name="CASDeadline" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row fullfilmentR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Offer/Conditional Fullfilment
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Fullfilment" id="Fullfilment" name="Fullfilment" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row IntakeYearR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Intake Year
                                                                </label>
                                                                <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Year" id="IntakeYear" name="IntakeYear">
                                                                    <option value="2022">2022</option>
                                                                    <option value="2023">2023</option>
                                                                    <option value="2024">2024</option>
                                                                    <option value="2025">2025</option>
                                                                    <option value="2026">2026</option>
                                                                    <option value="2027">2027</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row IntakeSemR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Intake Semester
                                                                </label>
                                                                <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Semester" id="IntakeSem" name="IntakeSem">
                                                                    <option value="Autumn">Autumn</option>
                                                                    <option value="Winter">Winter</option>
                                                                    <option value="Spring">Spring</option>
                                                                    <option value="Summer">Summer</option>
                                                                    <option value="Month">Month</option>
                                                                </select>
                                                            </div>
                                                        </div> 
                                                        <div class="pt-2 fv-row row TravelDR d-none">
                                                            <div class="col-12">
                                                                <label id="TravelDLabel" class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Date of Travel
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Travel Date" id="TravelDate" name="TravelDate" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row GVisaDR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Got Visa Date
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Got Visa Date" id="GVisaDate" name="GVisaDate" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row VisaRNoR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Visa Reference No.
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Visa Reference No" id="VisaNo" name="VisaNo" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row CASNoR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    CAS No.
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="CAS No" id="CASNo" name="CASNo" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row APaidR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Amount Paid
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Amount Paid" id="AmountP" name="AmountP" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row PRNoR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Payment Reference No.
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Payment Reference No" id="PRNo" name="PRNo" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row PDateR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Payment Date
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Payment Date" id="PDate" name="VisaRNo" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row CourseSDR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Course Start Date
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Course Start No" id="CourseSD" name="CourseSD" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row CourseEDR d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Course End Date
                                                                </label>
                                                                <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Course End No" id="CourseED" name="CourseED" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Comments
                                                                </label>
                                                                <textarea class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Comments" id="Comments" name="Comments"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-center pt-7 " id="footer_uploader">
                                                    <button type="submit" id="kt_upload_submit" class="btn btn-primary px-6 ms-2">
                                                        <span class="indicator-label">Submit</span>
                                                        <span class="indicator-progress">Please wait... 
										            	<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-6">
                                            <!--begin::Table container-->
                                            <div class="table-responsive">
                                                <table class="table table-row-bordered gy-5 fs-7 gs-7" id="kt_datatable_InProcess_Status">
                                                    <thead>
                                                        <tr class="fw-bolder fs-8 text-gray-800">
                                                            <th class="min-w-10px">Sr.#</th>
                                                            <th class="min-w-80px text-center">Status</th>
                                                            <th class="min-w-30px text-center">Dated</th>
                                                            <th class="min-w-80px">Notes</th>
                                                            <%--<th class="min-w-80px text-center">Assignee</th>--%>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="Document_Content" class="modal fade col-lg-4">
                        <div class="modal-dialog mw-600px">
                            <div class="modal-content" id="content">
                                <div class="modal-header">
                                    <h2>Manage Documents</h2>
                                    <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
                                                <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                                <div class="modal-body h-auto" id="Document_Content_body">
                                    <form class="bg-body" novalidate="novalidate" id="kt_create_account_forms">
                                        <div class="row mb-6">
                                            <input type="hidden" id="Student_ID" name="Student_ID" />
                                            <label class="fs-6 fw-bold mb-3">
                                                Upload Document <span class="fs-7 text-muted fw-bold mx-5">(Only PDF files are allowed, Max Size 5mb)</span>
                                            </label>
                                            <div class="align-items-center">
                                                <div class="row">
                                                    <div class="pt-2 fv-row row">
                                                        <div class="col-lg-10">
                                                            <input type="file" onchange="ValidateFileSize(this);showResult(this.files[0]);" name="FileUploadPic" id="FileUploadPic_1" class="form-control form-control-solid ps-10 ">
                                                        </div>
                                                        <div id="result" class="d-none"></div>
                                                        <div class="col-lg-2">
                                                            <a class="btn btn-primary " onclick="buttonUploadonclickAttachments(this);" data-toggle="tooltip" data-placement="top" title="" data-bs-original-title="Upload Files">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="pt-2 fv-row row">
                                                        <div class="col-8">
                                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                Document Type
                                                            </label>
                                                            <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Document type" id="type" name="type">
                                                                <option value="Birth Certificate">Birth Certificate</option>
                                                                <option value="Transcripts">Transcripts</option>
                                                                <option value="Passport">Passport</option>
                                                                <option value="Identity Card">Identity Card</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="pt-2 fv-row row">
                                                        <div class="col-8">
                                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                Description
                                                            </label>
                                                            <textarea class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Document Description" id="Description" name="Description"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="pt-5 p-5" name="tr_docs_uploaded" width="100%"></div>
                                        </div>
                                        <div class="text-center pt-7 " style="display: none" id="footer_uploaders">
                                            <button type="submit" id="kt_upload_submits" class="btn btn-primary px-6 ms-2">
                                                <span class="indicator-label">Upload</span>
                                                <span class="indicator-progress">Please wait... 
											<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div id="DocumentView_Content" class="modal fade col-lg-4" tabindex="-1">
                        <div class="modal-dialog mw-600px">
                            <div class="modal-content" id="contents">
                                <div class="modal-header">
                                    <h2>Student Documents</h2>
                                    <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
                                                <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                                <div class="modal-body h-auto" id="DocumentView_Content_body">
                                    <form class="bg-body" novalidate="novalidate" id="kt_create_account_forms_">
                                        <div class="row mb-6">
                                            <input type="hidden" id="StudentID_" name="Student_ID" />
                                            <label class="fs-6 fw-bold mb-3">
                                                Student Documents <span class="fs-7 text-muted fw-bold mx-5"></span>
                                            </label>
                                            <div class="pt-5 p-5" id="tr_docs_uploaded" width="100%"></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="kt_modal_PolicyAttachment" class="modal fade col-lg-6 " tabindex="-1" aria-modal="true" role="dialog">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content w-750px">
                                <div class="modal-header">
                                    <div class="modal-title">
                                        <h3 class="fw-bolder text-white">Student Document</h3>
                                    </div>
                                    <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
                                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black"></rect>
                                                <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black"></rect>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </div>
                                </div>
                                <div class="modal-body w-700px h-550px" id="PolicyModal_Attachment">
                                    <iframe class="w-650px h-500px" id="Att_Iframe"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $("#Document_Contents select").select2({ dropdownParent: "#Document_Contents" });
            $("#Document_Content select").select2({ dropdownParent: "#Document_Content" });

            $("[id$='CASDeadline']").flatpickr({
                dateFormat: "d-m-Y"
            });
            $("[id$='OAdate']").flatpickr({
                dateFormat: "d-m-Y"
            });       
            $("[id$='TravelDate']").flatpickr({
                dateFormat: "d-m-Y"
            });
            $("[id$='GVisaDate']").flatpickr({
                dateFormat: "d-m-Y"
            });
            $("[id$='PDate']").flatpickr({
                dateFormat: "d-m-Y"
            });
            $("[id$='CourseSD']").flatpickr({
                dateFormat: "d-m-Y"
            });
            $("[id$='CourseED']").flatpickr({
                dateFormat: "d-m-Y"
            });

            GetLiveStudents();
            $(document).on("change", "#Status", function () {
                $('#TravelDLabel').html('Date of Travel');
                $('.CourseEDR').addClass('d-none');
                $(".CourseSDR").addClass('d-none');
                $(".PDateR").addClass('d-none');
                $(".PRNoR").addClass('d-none');
                $(".APaidR").addClass('d-none');
                $(".CASNoR").addClass('d-none');
                $(".VisaRNoR").addClass('d-none');
                $(".GVisaDR").addClass('d-none');
                $(".TravelDR").addClass('d-none');
                $('.applId').addClass('d-none');
                $(".studId").addClass('d-none');
                $('.fullfilmentR').addClass('d-none');
                $(".CASDeadlineR").addClass('d-none');
                $(".OAdateR").addClass('d-none');
                $(".FeesR").addClass('d-none');
                $(".ScholarshipR").addClass('d-none');
                $('#appId').val('');
                $("#StudID").val('');
                if ($(this).val() == '23') {
                    $('.CASNoR').removeClass('d-none');
                    $(".APaidR").removeClass('d-none');
                    $(".PRNoR").removeClass('d-none');
                    $(".PDateR").removeClass('d-none');
                    $(".CourseSDR").removeClass('d-none');
                    $(".CourseEDR").removeClass('d-none');
                }
                if ($(this).val() == '12') {
                    $('.GVisaDR').removeClass('d-none');
                    $(".VisaRNoR").removeClass('d-none');
                }
                if ($(this).val() == '5') {
                    $('.TravelDR').removeClass('d-none');
                    $('#TravelDLabel').html('Date of Enrollment');
                }
                if ($(this).val() == '16') {
                    $('.TravelDR').removeClass('d-none');
                }
                if ($(this).val() == '24') {
                    $('.IntakeSemR').removeClass('d-none');
                    $(".IntakeYearR").removeClass('d-none');
                }
                if ($(this).val() == '4') {
                    $('.applId').removeClass('d-none');
                    $(".studId").removeClass('d-none');
                }
                else if ($(this).val() == '13' || $(this).val() == '18') {
                    $('.fullfilmentR').removeClass('d-none');
                    $(".CASDeadlineR").removeClass('d-none');
                    $(".OAdateR").removeClass('d-none');
                    $(".FeesR").removeClass('d-none');
                    $(".ScholarshipR").removeClass('d-none');
                }

            });
            $(document).on("change", "#UniId", function () {
                Get_InProcessMStatuses();
            })

        });
        KTUtil.onDOMContentLoaded((function () {
            KTCreateAccountt.init();
            KTCreateAccounts.init();
            Students.init();
            InProcess_Statuses.init();
        }));

        var KTCreateAccounts = function () {
            // Elements
            var form;
            var formSubmitButton;
            debugger;
            // Variables
            var validations = [];

            var handleForm = function () {
                formSubmitButton.addEventListener('click', function (e) {
                    debugger;
                    // Validate form before change stepper step
                    var validator = validations[0]; // get validator for last form

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

                                var ID = $("#Student_ID").val();
                                var type = $("#type").val();
                                var Description = $("#Description").val();
                                var base64 = $('#result').text();


                                var formData = {
                                    ID: ID,
                                    filename: filename,
                                    base64: base64,
                                    type: type,
                                    Description: Description
                                }

                                formData = JSON.stringify(formData);
                                $.ajax({
                                    type: "post",
                                    url: "/Student_Registration/Live_Students.aspx/Student_Document_Upload",
                                    contentType: "application/json; charset=utf-8",
                                    data: formData,
                                    datatype: "json",
                                    success: success_upload,
                                    async: false,
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
            function success_upload(response) {
                debugger;
                if (response.d[0]['return'] == '1') {
                    Swal.fire({
                        icon: 'success',
                        title: 'Document Submitted Successfully.',
                        showConfirmButton: true,
                        timer: 50000,
                        confirmButtonText: "Ok",
                        customClass: {
                            confirmButton: "btn btn-success"
                        }
                    });
                    //var location = window.location.href;
                    //location.reload();
                    window.location.reload();
                    //window.location.href = "Student_Registration/Live_Students.aspx";


                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Document Submission Failed.',
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
                            //'Description': {
                            //    validators: {
                            //        notEmpty: {
                            //            message: 'Description is required'
                            //        }
                            //    }
                            //}
                            //,
                            'type': {
                                validators: {
                                    notEmpty: {
                                        message: 'Document Type is required'
                                    }
                                }
                            }
                            ,
                            'file': {
                                validators: {
                                    notEmpty: {
                                        message: "Document is Required",
                                    }
                                    ,
                                    //extension: '.png, .jpg, .jpeg',
                                    extension: 'pdf,jpeg,png,jpg,doc',
                                    //type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                                    //type: 'application/vnd.ms-excel',
                                    maxSize: 5000000,   // 2048 * 1024
                                    message: 'The selected file is not valid'
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

                    form = document.querySelector('#kt_create_account_forms');
                    formSubmitButton = form.querySelector('#kt_upload_submits');
                    initValidation();
                    handleForm();
                }
            };
        }();

        var obj_file = [];
        var filename = "";
        function buttonUploadonclickAttachments(obj) {

            var filenames = "";
            var filenameid = "";

            var attach_count = $.trim($("[name$='tr_docs_uploaded']").find("a").attr("href"));
            filenames = $.trim($(obj).parent().parent().find("[name$='FileUploadPic']").val());
            var File_obj = document.querySelector('#FileUploadPic_1').files[0];
            filenameid = $.trim($(obj).parent().parent().find("[name$='FileUploadPic']").attr("id"));

            var input = document.getElementById("FileUploadPic_1");
            filename = $('#FileUploadPic_1').val().replace(/C:\\fakepath\\/i, '');

            var arr = new Array();
            arr = filename.split(".")
            var ext = arr[arr.length - 1].toLowerCase();

            if (ext != "pdf" && ext != "png" && ext != "jpeg" && ext != "jpg" && ext != "doc" && ext != "docx") {
                Swal.fire({
                    text: "Please select pdf, png, doc or jpg file for upload.",
                    icon: "warning",
                    showConfirmButton: false,
                    timer: 1500
                })
                $("[id$='FileUploadPic_1']").val("");

            }
            else {
                if (filename != "") {

                    var isTrue = false, fileName = "";
                    var htm = "";
                    var attachmentdiv_id = 'file_obj_' + filename + '';

                    htm += "<div class='badge badge-secondary file' > <div style='display:none'>" + filename + "</div><a id=" + filename + " class='pt-4' name='hrefuploaddoc_CV' href='../" + File_obj + " ' target='_blank' style='font-style: italic; color:black; font-weight: bold;'>" + filename + "</a>&nbsp;&nbsp; <svg onclick='DeleteUpload(this);' title='Delete' xmlns='http://www.w3.org/2000/svg' style='cursor: pointer; position: relative; alt='delete' width='26' height='16' fill='currentColor' class='bi bi-dash-circle text-danger' viewBox='0 0 16 16'><path d = 'M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z' ></path ><path d='M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z'></path></svg><div>";
                    $("[name$='tr_docs_uploaded']").append(htm);
                    obj_file.push(File_obj);
                    //console.log(obj_file);

                    $("[name$='FileUploadPic']").val("");
                    $("[id$='footer_uploaders']").show();

                }
            }
        }
        function ValidateFileSize(file) {
            var FileSize = file.files[0].size / 1024; // in kB
            if (FileSize > 5000) {
                Swal.fire({
                    text: "Please upload file upto 5MB.",
                    icon: "warning",
                    showConfirmButton: false,
                    timer: 1500
                })
                $(file).val(''); //for clearing with Jquery
            } else {

            }
        }

        // Datatable Load tables
        var KTCreateAccountt = function () {
            // Elements
            var form;
            var formSubmitButton;
            debugger;
            // Variables
            var validations = [];

            var handleForm = function () {
                formSubmitButton.addEventListener('click', function (e) {
                    debugger;
                    // Validate form before change stepper step
                    var validator = validations[0]; // get validator for last for

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
                                // On submitting Application status                             

                                if ($("#Status").val() == '4') {
                                    
                                    var ID = $("#StudentID").val();
                                    var formData = {
                                        ID: ID
                                    }

                                    formData = JSON.stringify(formData);
                                    $.ajax({
                                        type: "post",
                                        url: "/Student_Registration/InProcessStudents.aspx/GetPassportED",
                                        contentType: "application/json; charset=utf-8",
                                        data: formData,
                                        datatype: "json",
                                        success: success_PassportExD,
                                        async: false,
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
                                    function success_PassportExD(response) {
                                        debugger;
                                        if (response.d[0]['Column1'] == '1') {

                                            Swal.fire({
                                                icon: 'error',
                                                title: 'Passport Expiry date has passed !!',
                                                showConfirmButton: true,
                                                timer: 2000,
                                                confirmButtonText: "Ok",
                                                customClass: {
                                                    confirmButton: "btn btn-danger"
                                                }
                                            }).then(function () {
                                                //window.location.reload();
                                            });;

                                            //var location = window.location.href;
                                            //location.reload();

                                        } else {

                                            debugger;
                                            var ID = $("#StudentID").val();
                                            var UniId = $("#UniId").val();
                                            var Status = $("#Status").val();
                                            var Comments = $("#Comments").val();
                                            var appId = $("#appId").val();
                                            var studId = $("#StudID").val();
                                            var Fees = $("#Fees").val();
                                            var Scholarship = $("#Scholarship").val();
                                            var OAdate = $("#OAdate").val();
                                            var CASDeadline = $("#CASDeadline").val();
                                            var Fullfilment = $("#Fullfilment").val();
                                            var IntakeSem = $("#IntakeSem").val();
                                            var IntakeYear = $("#IntakeYear").val();
                                            var CourseED = $("#CourseED").val();
                                            var CourseSD = $("#CourseSD").val();
                                            var PDate = $("#PDate").val();
                                            var PRNo = $("#PRNo").val();
                                            var AmountP = $("#AmountP").val();
                                            var CASNo = $("#CASNo").val();
                                            var VisaNo = $("#VisaNo").val();
                                            var GVisaDate = $("#GVisaDate").val();
                                            var TravelDate = $("#TravelDate").val();
                                            var formData = {
                                                ID: ID,
                                                UniId: UniId,
                                                Status: Status,
                                                Comments: Comments,
                                                appId: appId,
                                                studId: studId,
                                                Fees: Fees,
                                                Scholarship: Scholarship,
                                                OAdate: OAdate,
                                                CASDeadline: CASDeadline,
                                                Fullfilment: Fullfilment,
                                                IntakeSem: IntakeSem,
                                                IntakeYear: IntakeYear,
                                                TravelDate: TravelDate,
                                                GVisaDate: GVisaDate,
                                                VisaNo: VisaNo,
                                                CASNo: CASNo,
                                                AmountP: AmountP,
                                                PRNo: PRNo,
                                                PDate: PDate,
                                                CourseSD: CourseSD,
                                                CourseED: CourseED
                                            }

                                            formData = JSON.stringify(formData);
                                            $.ajax({
                                                type: "post",
                                                url: "/Student_Registration/InProcessStudents.aspx/InProcessStatusUpdate",
                                                contentType: "application/json; charset=utf-8",
                                                data: formData,
                                                datatype: "json",
                                                success: success_upload,
                                                async: false,
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
                                        }

                                    }

                                } else {
                                    var ID = $("#StudentID").val();
                                    var UniId = $("#UniId").val();
                                    var Status = $("#Status").val();
                                    var Comments = $("#Comments").val();
                                    var appId = $("#appId").val();
                                    var studId = $("#StudID").val();
                                    var Fees = $("#Fees").val();
                                    var Scholarship = $("#Scholarship").val();
                                    var OAdate = $("#OAdate").val();
                                    var CASDeadline = $("#CASDeadline").val();
                                    var Fullfilment = $("#Fullfilment").val();
                                    var IntakeSem = $("#IntakeSem").val();
                                    var IntakeYear = $("#IntakeYear").val();
                                    var CourseED = $("#CourseED").val();
                                    var CourseSD = $("#CourseSD").val();
                                    var PDate = $("#PDate").val();
                                    var PRNo = $("#PRNo").val();
                                    var AmountP = $("#AmountP").val();
                                    var CASNo = $("#CASNo").val();
                                    var VisaNo = $("#VisaNo").val();
                                    var GVisaDate = $("#GVisaDate").val();
                                    var TravelDate = $("#TravelDate").val();
                                    var formData = {
                                        ID: ID,
                                        UniId: UniId,
                                        Status: Status,
                                        Comments: Comments,
                                        appId: appId,
                                        studId: studId,
                                        Fees: Fees,
                                        Scholarship: Scholarship,
                                        OAdate: OAdate,
                                        CASDeadline: CASDeadline,
                                        Fullfilment: Fullfilment,
                                        IntakeSem: IntakeSem,
                                        IntakeYear: IntakeYear,
                                        TravelDate: TravelDate,
                                        GVisaDate: GVisaDate,
                                        VisaNo: VisaNo,
                                        CASNo: CASNo,
                                        AmountP: AmountP,
                                        PRNo: PRNo,
                                        PDate: PDate,
                                        CourseSD: CourseSD,
                                        CourseED: CourseED
                                    }

                                    formData = JSON.stringify(formData);
                                    $.ajax({
                                        type: "post",
                                        url: "/Student_Registration/InProcessStudents.aspx/InProcessStatusUpdate",
                                        contentType: "application/json; charset=utf-8",
                                        data: formData,
                                        datatype: "json",
                                        success: success_upload,
                                        async: false,
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
                                }

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
            function success_upload(response) {
                debugger;
                if (response.d[0]['Column1'] == '1') {
                    Swal.fire({
                        icon: 'success',
                        title: 'Status Updated Successfully.',
                        showConfirmButton: true,
                        timer: 2000,
                        confirmButtonText: "Ok",
                        customClass: {
                            confirmButton: "btn btn-success"
                        }
                    }).then(function () {
                        window.location.reload();
                    });;
                    //var location = window.location.href;
                    //location.reload();

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
            var initValidation = function () {
                // Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
                // Step 1
                validations.push(FormValidation.formValidation(
                    form,
                    {
                        fields: {
                            'IntakeSem': {
                                validators: {
                                    callback: {
                                        message: 'Intake Sem is required',
                                        callback: function (value, validator, $field) {
                                            debugger
                                            var status = $('#Status option:selected').val();
                                            if (status == '24') {
                                                debugger
                                                if ($('#IntakeSem').val() == '') {
                                                    return false;
                                                }
                                            }
                                            
                                            return true; // Field is either not required or meets the validation criteria
                                        }
                                    }
                                }
                            },
                            'IntakeYear': {
                                validators: {
                                    callback: {
                                        message: 'Intake Year is required',
                                        callback: function (value, validator, $field) {
                                            debugger
                                            var status = $('#Status option:selected').val();
                                            if (status == '24') {
                                                debugger
                                                if ($('#IntakeYear').val() == '') {
                                                    return false;
                                                }
                                            }
                                            
                                            return true; // Field is either not required or meets the validation criteria
                                        }
                                    }
                                }
                            },
                            'appId': {
                                validators: {
                                    callback: {
                                        message: 'Applicant Id is required',
                                        callback: function (value, validator, $field) {
                                            debugger
                                            var status = $('#Status option:selected').val();
                                            if (status == '4') {
                                                debugger
                                                if ($('#appId').val() == '') {
                                                    return false;
                                                }

                                            }
                                            
                                            return true; // Field is either not required or meets the validation criteria
                                        }
                                    }
                                }
                            },
                            'appId': {
                                validators: {
                                    callback: {
                                        message: 'Applicant Id is required',
                                        callback: function (value, validator, $field) {
                                            debugger
                                            var status = $('#Status option:selected').val();
                                            if (status == '4') {
                                                debugger
                                                if ($('#appId').val() == '') {
                                                    return false;
                                                }

                                            }
                                            
                                            return true; // Field is either not required or meets the validation criteria
                                        }
                                    }
                                }
                            },
                            'Status': {
                                validators: {
                                    notEmpty: {
                                        message: 'Status is required'
                                    }
                                }
                            }
                            ,
                            'UniId': {
                                validators: {
                                    notEmpty: {
                                        message: 'University Name is required'
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
                    formSubmitButton = form.querySelector('#kt_upload_submit');
                    initValidation();
                    handleForm();
                }
            };
        }();
        var Students = function () {
            return {
                init: function () {

                    ! function () {
                        var t = document.querySelector("#kt_datatable_students_listing");
                        var currentdate = new Date();
                        var datetime = currentdate.getDate() + "_"
                            + (currentdate.getMonth() + 1) + "_"
                            + currentdate.getFullYear() + "_"
                            + currentdate.getHours() + "_"
                            + currentdate.getMinutes() + "_"
                            + currentdate.getSeconds();
                        if (!t) return;

                        const e = $(t).DataTable({

                            language: {
                                sLengthMenu: "Showing _MENU_  records per page"
                            },
                            "order": [[0, "asc"]],
                            "scrollX": true,
                            pageLength: 10,
                            "lengthMenu": [
                                [10, 25, 50, -1],
                                [10, 25, 50, "All"]
                            ],
                            dom: "<'dt_top_searchBtn row mt-5 '<'col-lg-3 float-end me-2'f><'dt-buttonss col-lg-9 float-start'> >" +
                                "<'row'<'col-sm-12'tr>>" +
                                "<'row'<'col-sm-12 col-md-5'l><'col-sm-12 col-md-7'p>>",
                            buttons: [
                                {
                                    extend: 'excelHtml5',
                                    filename: 'Inititative Data export_' + datetime,
                                    text: '<i class="flaticon2-download"></i> Export To Excel',
                                    title: '',
                                    className: 'btn btn-sm btn-success mt-2',
                                    exportOptions: {
                                        columns: [1, 2, 3, 4, 5, 6, 7]
                                    }

                                },

                            ], columnDefs: [
                                {
                                    "targets": [1, 5, 6, 7, 9, 10, 13, 14, 15, 16, 18, 19],
                                    "visible": false,
                                    "searchable": false
                                },
                                {
                                    targets: 20,
                                    render: function (data, type, full, meta) {
                                        //var view_data = '<a href ="/Student_Registration/Student_Registration.aspx?StdId=' + full[1] + '&' + '"  class="btn btn-icon btn-warning h-30px w-30px mx-1"><i  class="fa fa-edit fs-base"></i></a>';
                                        var approval_data = '<a onclick="InProcessStudentModel(' + full[1] + ')" data-toggle="modal" data-target="#Document_Contents" href="javascript:void(0)"  class="btn btn-icon btn-success h-30px w-30px mx-1"><i  class="fa fa-check fs-base"></i></a>';
                                        var reject_data = '<a onclick="RejectApproval(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mt-2 mx-1"><i  class="fa fa-ban fs-base"></i></a>';
                                        var document_data = '<a onclick="UploadDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#Document_Content"  class="btn btn-icon btn-warning h-30px w-30px mt-2 mx-1"><i  class="fa fa-upload fs-base"></i></a>';
                                        var documentview_data = '<a onclick="ViewDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal"  class="btn btn-icon btn-primary h-30px w-30px mt-2 mx-1"><i  class="fa fa-eye fs-base"></i></a>';
                                        return approval_data + reject_data + document_data + documentview_data;
                                    }
                                }
                            ]
                        })
                    }()
                }
            }
        }();
        var InProcess_Statuses = function () {
            return {
                init: function () {

                    ! function () {
                        var t = document.querySelector("#kt_datatable_InProcess_Status");
                        var currentdate = new Date();
                        var datetime = currentdate.getDate() + "_"
                            + (currentdate.getMonth() + 1) + "_"
                            + currentdate.getFullYear() + "_"
                            + currentdate.getHours() + "_"
                            + currentdate.getMinutes() + "_"
                            + currentdate.getSeconds();
                        if (!t) return;

                        const e = $(t).DataTable({

                            language: {
                                sLengthMenu: "Showing _MENU_  records per page"
                            },
                            "order": [[0, "asc"]],
                            "scrollX": true,
                            pageLength: 10,
                            "info": false,
                            "lengthMenu": [
                                [10, 25, 50, -1],
                                [10, 25, 50, "All"]
                            ],
                            dom: "<'dt_top_searchBtn row mt-5 '<'col-lg-3 float-end me-2'f><'dt-buttonss col-lg-9 float-start'> >" +
                                "<'row'<'col-sm-12'tr>>" +
                                "<'row'<'col-sm-12 col-md-5'l><'col-sm-12 col-md-7'p>>",
                            buttons: [
                                {
                                    extend: 'excelHtml5',
                                    filename: 'InProcess Data export_' + datetime,
                                    text: '<i class="flaticon2-download"></i> Export To Excel',
                                    title: '',
                                    className: 'btn btn-sm btn-success mt-2',
                                    exportOptions: {
                                        columns: [1, 2, 3]
                                    }

                                },

                            ],
                            //columnDefs: [
                            //    {
                            //        "targets": [ 5, 6, 7, 9, 10, 13, 14, 15, 16, 18, 19],
                            //        "visible": false,
                            //        "searchable": false
                            //    },

                            //]
                        })
                    }()
                }
            }
        }();
        function UploadDocument(id) {
            $('#Student_ID').val(id);
        }
        function ViewDocument(id) {

            $('#StudentID_').val(id);
            param = "{'ID':'" + id + "'}";

            $.ajax({
                type: "post",
                url: "/Student_Registration/Live_Students.aspx/Get_Student_Documents",
                contentType: "application/json; charset=utf-8",
                data: param,
                datatype: "json",
                success: get_documents,
                error: function (response) {
                    debugger; Swal.fire({
                        text: "Sorry, looks like there are some errors detected, please try again.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-light"
                        }
                    }).then(function () {
                        ;
                    });
                }
            });
        }
        function showAttachment() {
            debugger
            var iframe = "<iframe width='100%' height='100%' src='" + AttachmentBase64 + "'></iframe>"
            $('#kt_modal_PolicyAttachment').modal('show');
            console.log(AttachmentBase64);
        }
        var AttachmentBase64 = "";
        function get_documents(response) {
            if (response.d != null) {
                debugger;
                var data = response.d;
                var html = "";
                html += '<div class="row g-6 g-xl-9 mb-6 mb-xl-9">';
                $('#tr_docs_uploaded').html("");
                $.each(data, function (index, item) {
                    debugger;
                    html += '<div class="col-md-6 col-lg-4 col-xl-3" id="div_' + data[index].Document_ID + '"><div class="card h-100"><div class="card-body d-flex justify-content-center text-center flex-column p-8">';
                    html += '<a onclick="showAttachment()" href="javascript:void(0)" class="text-gray-800 text-hover-primary d-flex flex-column"><div class="symbol symbol-60px mb-5"><img src="/assets/media/svg/files/pdf.svg" alt=""></div>';
                    AttachmentBase64 = data[index].Base64;
                    html += '<div class="fs-7 fw-bolder mb-2">' + data[index].File_Type + '</div></a><div class="fs-7 fw-bold text-gray-400"></div></div></div></div>';
                });
                html += "</div>";
                $('#tr_docs_uploaded').append(html);
                $('#DocumentView_Content').modal('show');

            }
            else {
                Swal.fire({
                    icon: 'error',
                    title: 'Error, Please try again.',
                    showConfirmButton: false,
                    timer: 1500
                })
                //GetLiveStudents();
            }

        }
        function showResult(file) {
            debugger;
            fileDataURL(file)
                .then(data => (document.getElementById("result").textContent = data))
                .catch(err => console.log(err));
        }
        function DeleteUpload(obj) {
            var filename = $(obj).parent().find('a').text();
            for (var i = 0; i < obj_file.length; i++) {
                if (obj_file[0]['name'] == filename) {
                    const index = i;
                    if (index > -1) {
                        obj_file.splice(index, 1);
                    }
                }
            }
            $(obj).parent().html("");
        }
        $('#kt_modal_PolicyAttachment').on('shown.bs.modal', function () {
            $(this).find('iframe').attr('src', AttachmentBase64)
        })
        const fileDataURL = file => new Promise((resolve, reject) => {
            let fr = new FileReader();
            fr.onload = () => resolve(fr.result);
            fr.onerror = reject;
            fr.readAsDataURL(file)
        });

        // Load Initial Data
        function InProcessStudentModel(id) {
            debugger;
            $('#StudentID').val(id);
            Get_StudentUniversities();
            Get_InProcessMStatuses();
            GetInProcessStatuses();
            $('#Document_Contents').modal('show');
        }
        function GetInProcessStatuses() {
            debugger;
            var StdId = $('#StudentID').val();
            var UniId = $('#UniId').val();
            var formData = {
                StdId: StdId,
                UniId: UniId
            };
            param = "{'StdId':'" + StdId + "','UniId':'" + UniId + "'}";
            $.ajax({
                type: "post",
                url: "/Student_Registration/InProcessStudents.aspx/Get_InProcessStatuses",
                contentType: "application/json; charset=utf-8",
                data: param,
                datatype: "json",
                success: RenderStatuses,
                error: function (response) {
                    debugger; Swal.fire({
                        text: "Sorry, looks like there are some errors detected, please try again.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-light"
                        }
                    }).then(function () {
                        ;
                    });
                }
            });
        }
        function RenderStatuses(response) {
            var data = response.d;
            debugger;

            //if (response.Code == "1") {
            var rows = '';
            var count = 0;
            //if (data.length > 0) {

            var table;
            table = $('#kt_datatable_InProcess_Status').DataTable();
            table.clear();
            for (var i = 0; i < data.length; i++) {
                count++;
                table.row.add([count, data[i].StatusN, data[i].Dated_F, data[i].Comments]);
            }
            table.draw();
            //  }
            //}
        }
        function GetLiveStudents() {
            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/InProcessStudents.aspx/Get_InProcessStudents",
                contentType: "application/json; charset=utf-8",
                //data: param,
                datatype: "json",
                success: RenderStudents,
                error: function (response) {
                    debugger; Swal.fire({
                        text: "Sorry, looks like there are some errors detected, please try again.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-light"
                        }
                    }).then(function () {
                        ;
                    });
                }
            });
        }
        function RenderStudents(response) {
            var data = response.d;
            debugger;
            //if (response.Code == "1") {
            var rows = '';
            var count = 0;
            //if (data.length > 0) {

            var table;
            table = $('#kt_datatable_students_listing').DataTable();
            table.clear();
            for (var i = 0; i < data.length; i++) {

                count++;
                table.row.add([count, data[i].Student_Id, data[i].Student_Name, data[i].regDate_F, data[i].Student_Id + "/" + data[i].Ref_No, data[i].Mobile_No, data[i].Email, data[i].Residence_Country, data[i].Nationality, data[i].Marital_Status, data[i].Student_Type, data[i].PFL_Office_M, data[i].Study_Countries_M, /*university,*/ data[i].Study_Level, data[i].Intake_Month + ' ' + data[i].Intake_Semester + '/' + data[i].Intake_Year, data[i].Counceler, data[i].Payment_Type, data[i].Reg_Fee, data[i].dob_F, data[i].Gender, 0]);
            }
            table.draw();
            //  }
            //}
        }
        function Get_StudentUniversities() {
            var id = $('#StudentID').val();
            var formData = {
                id: id
            };
            param = "{'id':'" + id + "'}";
            $.ajax({
                type: "post",
                url: "/Student_Registration/InProcessStudents.aspx/GET_APPLIEDUNIVERSITIES",
                contentType: "application/json; charset=utf-8",
                async: false,
                data: param,
                datatype: "json",
                success: load_ConversionStaffs,
                error: function (response) { debugger; swal("Failed"); }
            });
        }
        function Get_InProcessMStatuses() {
            var id = $('#StudentID').val();
            var UniId = $('#UniId').val();
            var formData = {
                id: id,
                UniId: UniId
            };
            param = "{'id':'" + id + "','UniId':'" + UniId + "'}";
            $.ajax({
                type: "post",
                url: "/Student_Registration/InProcessStudents.aspx/GET_InProcessMasterStatuses",
                contentType: "application/json; charset=utf-8",
                async: false,
                data: param,
                datatype: "json",
                success: load_MasterStatuses,
                error: function (response) { debugger; swal("Failed"); }
            });
        }
        function load_MasterStatuses(dataa) {
            var data = dataa.d;
            $('#ModelHeaderName').text(data[0].name + ' - ' + 'InProcess Student Statuses');

            debugger;
            $('#Status').empty();
            $.each(data, function (key, entry) {
                $('#Status').append($('<option></option>').attr('value', entry.ID).text(entry.Status));
            })
        }

        function load_ConversionStaffs(dataa) {
            var data = dataa.d;
            debugger;
            $('#UniId').empty();
            $.each(data, function (key, entry) {
                $('#UniId').append($('<option></option>').attr('value', entry.Id).text(entry.University_Name));
            })
        }
        // Approval button Popups Actions
        function DeleteComplaint(id) {
            Swal.fire({
                title: "Confirm!",
                showCancelButton: true,
                text: "Do you really want to Approve this Student as a Counseler?",
                icon: "success",
                buttons: true,
                dangerMode: true,
            }).then((willDelete) => {
                if (willDelete.isConfirmed) {
                    debugger;
                    var formData = {
                        id: id
                    };
                    param = "{'id':'" + id + "'}";
                    $.ajax({
                        type: "post",
                        url: "/Student_Registration/Conv_Sales_RegApproval.aspx/ApproveByCounseler_STUDENT",
                        contentType: "application/json; charset=utf-8",
                        data: param,
                        datatype: "json",
                        success: delete_Student,
                        error: function (response) {
                            debugger; Swal.fire({
                                text: "Sorry, looks like there are some errors detected, please try again.",
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-light"
                                }
                            }).then(function () {
                                ;
                            });
                        }
                    });
                    function delete_Student(response) {
                        if (response.d[0]['Column1'] == '1') {
                            Swal.fire({
                                icon: 'success',
                                title: 'Conversion Manager Approved successfully',
                                showConfirmButton: false,
                                timer: 5000
                            })
                            GetLiveStudents();
                        }
                        else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error, Please try again.',
                                showConfirmButton: false,
                                timer: 1500
                            })
                            GetLiveStudents();
                        }
                    }
                }
            });
        }
        function RejectApproval(id) {
            Swal.fire({
                customClass: {
                    confirmButton: 'btn btn-danger',
                    cancelButton: 'btn btn-secondary'
                },
                title: 'Reject Approval!',
                input: 'text',
                inputAttributes: {
                    autocapitalize: 'off'
                },
                showCancelButton: true,
                confirmButtonText: 'Reject Approval',
                showLoaderOnConfirm: true,
                preConfirm: (login) => {
                    param = "{'id':'" + id + "','comment':'" + login + "'}";
                    return $.ajax({
                        type: "post",
                        url: "/Student_Registration/Conv_Sales_RegApproval.aspx/RejectByCounseler_STUDENT",
                        contentType: "application/json; charset=utf-8",
                        data: param,
                        datatype: "json"
                    })
                        //return fetch(`//api.github.com/users/${login}`)
                        .then(response => {
                            debugger
                            if (!response.d[0].Column1 == '1') {
                                debugger
                                throw new Error(response.statusText)
                            }
                            //return response.json()
                        })
                        .catch(error => {
                            debugger
                            Swal.showValidationMessage(
                                `Request failed: ${error}`
                            )
                        })
                },
                allowOutsideClick: () => !Swal.isLoading()
            }).then((response) => {
                debugger
                if (response.isConfirmed) {
                    debugger
                    Swal.fire({
                        icon: 'success',
                        title: 'Your work has been saved',
                        showConfirmButton: false,
                        timer: 500,
                        title: 'Approval Rejected By Coversion Manager!'
                    })
                    GetLiveStudents();
                }
            })
        }
    </script>
</asp:Content>
