<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Financial_Approval.aspx.cs" Inherits="PFL_CRM.Student_Registration.Financial_Approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid bg-light-info" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <!--begin::Container-->
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">FINANCIAL BUCKET
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
                                                <th class="min-w-20px text-center">Total Paid Amount</th>
                                                <th class="min-w-20px text-center">Reg Fee</th>
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
                    <div id="Document_Content" class="modal fade col-lg-4" tabindex="-1">
                        <div class="modal-dialog mw-900px">
                            <div class="modal-content" id="content">
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
                                <div class="modal-body h-auto" id="Document_Content_body">
                                    <div class="row mb-6">
                                        <div class="col-6">
                                            <form class="bg-body mw-400px" novalidate="novalidate" id="kt_create_account_form">
                                                <input type="hidden" id="StudentID" name="StudentID" />
                                                <div class="align-items-center">
                                                    <div class="row">
                                                        <div class="pt-2 fv-row row">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                    Payment Type
                                                                </label>
                                                                <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Payment Type" id="PaymentType" name="PaymentType">
                                                                    <option>Full</option>
                                                                    <option>Partial</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                                    Paid Amount *
                                                                </label>
                                                                <input class="form-control form-control-solid" name="PaidAmount" id="PaidAmount" type="number" />
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row deadline d-none">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                                    Payment Deadline 
                                                                </label>
                                                                <select id="paymentdeadline" name="paymentdeadline" data-control="select2" class="form-control form-select" data-placeholder="Select Payment deadline">
                                                                    <option value="19">Deposit Made</option>
                                                                    <option value="23">CAS Attained</option>
                                                                    <option value="18">Offer Recieved & Accepted</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                                    Payment Method 
                                                                </label>
                                                                <select id="method" name="method" data-control="select2" class="form-control form-select" data-placeholder="Select Payment method">
                                                                    <option value="Cash">Cash</option>
                                                                    <option value="Bank Transfer">Bank Transfer</option>
                                                                    <option value="Cheque">Cheque</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="pt-2 fv-row row">
                                                            <div class="col-12">
                                                                <label class="form-check form-check-custom form-check-solid fw-bold fs-6 p-2">
                                                                    Payment Reference *
                                                                </label>
                                                                <input class="form-control form-control-solid" name="Bank_Reciept" id="Bank_Reciept" />
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
                                                            <%--<th class="min-w-10px">Sr.#</th>--%>
                                                            <th class="min-w-60px text-center">Status</th>
                                                            <th class="min-w-60px text-center">Paid Amount</th>
                                                            <th class="min-w-50px text-center">Dated</th>
                                                            <th class="min-w-80px">Notes</th>
                                                            <%--<th class="min-w-80px text-center">Assignee</th>--%>
                                                        </tr>
                                                    </thead>
                                                    <tbody class="text-center">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                                    <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">Payment Details <span class="recieptspans" id="Payment_Header"></span></span>
                                        <i class="fas fa-exclamation-circle ms-2 fs-8 d-none" data-bs-toggle="tooltip" title="Nature of Service in which ticket can be rasied."></i>
                                    </h6>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Reciept No
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="Reciept_No">U110556</span>
                                    </div>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Date Issued
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="DateIssued">2022-09-02</span>
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
                                                <span id="Office" class="recieptspans">PFL Islamabad</span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                                <span>Address</span>
                                            </div>
                                            <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                                <span id="address" class="recieptspans"></span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                                <span>PFL Officer</span>
                                            </div>
                                            <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                                <span id="PFLOfficer" class="recieptspans">Yasir</span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                                <span>Amount</span>
                                            </div>
                                            <div class="text-dark fs-8 col-3 border border-dark col-md-6">
                                                <span id="Amount" class="recieptspans">PKR 150,000</span>
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
                                        <span class="form-check-label recieptspans" id="BankReciept_No">U110556U110556U110556</span>
                                    </div>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Tel-No
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="TelNo">20220902</span>
                                    </div>
                                </div>
                                <div class="ps-4 row">
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Intake Month/Year
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="Intake">Winter/Spring 2023</span>
                                    </div>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Method Of Payment
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="Payment"></span>
                                    </div>
                                </div>
                                <div class="ps-4 row">
                                    <div class="text-muted fw-bold fs-8 col-6 text-center">
                                    </div>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Study Country:
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="Country">United Country</span>
                                    </div>
                                </div>
                                <div class="ps-4 pb-6 row d-none">
                                    <div class="text-muted fw-bold fs-8 col-6 text-center">
                                    </div>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Intake Period:
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="Period">2023</span>
                                    </div>
                                </div>
                                <div class="ps-4 row">
                                    <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">Student Details</span>
                                    </h6>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        PFL Ref.
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="PFLRef">U110556U110556</span>
                                    </div>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Title
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="Title">Mr.</span>
                                    </div>
                                </div>
                                <div class="ps-4 row">
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Fore Name.
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="ForeName">Abdul Saboor</span>
                                    </div>
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Last Name
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="LastName">Zazai</span>
                                    </div>
                                </div>
                                <div class="ps-4 pb-6 row">
                                    <div class="text-dark fw-bold fs-8 col-3 border border-dark">
                                        Address
                                    </div>
                                    <div class="text-dark fs-8 col-3 border border-dark">
                                        <span class="form-check-label recieptspans" id="Student_Address"></span>
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
                                        <span class="form-check-label recieptspans" id="PFLMember"></span>
                                    </div>
                                </div>
                                <div class="ps-4 p-0 row">
                                    <div class="text-dark fw-bold fs-8 pb-3 col-3 border border-dark">
                                        Position 
                                    </div>
                                    <div class="text-dark fs-8 col-9 border border-dark">
                                        <span class="form-check-labelrecieptspans" id="Position"></span>
                                    </div>
                                </div>
                                <div class="ps-4 p-0 row">
                                    <div class="text-dark fw-bold fs-8 pb-3 col-3 border border-dark">
                                        Signature 
                                    </div>
                                    <div class="text-dark fs-8 col-9 border border-dark">
                                        <span class="form-check-label recieptspans" id="Signature"></span>
                                    </div>
                                </div>
                                <div class="ps-4 pb-6 p-0 row">
                                    <div class="text-dark fw-bold  fs-8 col-3 border border-dark">
                                        Date Signed
                                        <br />
                                        (dd/mm/yyyy)
                                    </div>
                                    <div class="text-dark fs-8 col-9  border border-dark">
                                        <span class="form-check-label recieptspans" id="DateSigned"></span>
                                    </div>
                                </div>
                                <div class="ps-4 pb-6 row">
                                    <h6 class="fw-bolder bg-dark p-2 pb-3 text-center text-white"><span class="ms-2">Notes</span>
                                    </h6>
                                    <div class="text-dark fw-bold fs-8 col-12">
                                        <span class="form-check-label recieptspans" id="Notes"></span>
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
                                        <span class="form-check-label recieptspans" id="StudentName"></span>
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
                    <div id="DocumentView_Content" class="modal fade col-lg-4" tabindex="-1"  aria-modal="true" role="dialog">
                        <div class="modal-dialog mw-600px">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2>Student Registration Fee Reciepts</h2>
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
                                    <form class="bg-body" novalidate="novalidate">
                                        <div class="row mb-6">
                                            <input type="hidden" id="StudentID_" name="StudentID_" />
                                            <label class="fs-6 fw-bold mb-3">
                                                All Reciepts <span class="fs-7 text-muted fw-bold mx-5"></span>
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
            GetLiveStudents();
        });
        $(document).on("change", "#PaymentType", function () {
            if ($(this).val() == 'Partial') {
                $('.deadline').removeClass('d-none');
            }
            else {
                $('.deadline').addClass('d-none');
                $('#paymentdeadline').val('');
            }
        })
        KTUtil.onDOMContentLoaded((function () {
            KTCreateAccountt.init();
            Students.init();
            InProcess_Statuses.init();
        }));

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
                                var ID = $("#StudentID").val();
                                var formData = {
                                    ID: ID
                                }

                                formData = JSON.stringify(formData);
                                $.ajax({
                                    type: "post",
                                    url: "/Student_Registration/Financial_Approval.aspx/GetRegPaymentFull_Status",
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
                                            title: 'Registration Fee already fully paid !',
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

                                    }
                                    else {

                                        debugger;
                                        var ID = $("#StudentID").val();
                                        var PaymentType = $("#PaymentType").val();
                                        var PaidAmount = $("#PaidAmount").val();
                                        var paymentdeadline = $("#paymentdeadline").val();
                                        var method = $("#method").val();
                                        var Bank_Reciept = $("#Bank_Reciept").val();
                                        var Comments = $("#Comments").val();
                                        var formData = {
                                            ID: ID,
                                            PaymentType: PaymentType,
                                            PaidAmount: PaidAmount,
                                            paymentdeadline: paymentdeadline,
                                            method: method,
                                            Bank_Reciept: Bank_Reciept,
                                            Comments: Comments,
                                        }

                                        formData = JSON.stringify(formData);
                                        $.ajax({
                                            type: "post",
                                            url: "/Student_Registration/Financial_Approval.aspx/FinanceStatusUpdate",
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
                            'Bank_Reciept': {
                                validators: {
                                    notEmpty: {
                                        message: 'Bank_Reciept is required'
                                    }
                                }
                            }
                            ,
                            'PaidAmount': {
                                validators: {
                                    notEmpty: {
                                        message: 'Paid Amount is required'
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

                            ]
                            , columnDefs: [
                                {
                                    "targets": [1, 5, 6, 7, 9, 10, 13, 14, 15, 16],
                                    "visible": false,
                                    "searchable": false
                                },
                                {
                                    targets: 19,
                                    render: function (data, type, full, meta) {
                                        //var view_data = '<a href ="/Student_Registration/Student_Registration.aspx?StdId=' + full[1] + '&' + '"  class="btn btn-icon btn-warning h-30px w-30px mx-1"><i  class="fa fa-edit fs-base"></i></a>';
                                        var approval_data = '<a onclick="FinanceStudentModel(' + full[1] + ')" data-toggle="modal" data-target="#Document_Content" href="javascript:void(0)"  class="btn btn-icon btn-success h-30px w-30px mx-1"><i  class="fa fa-check fs-base"></i></a>';
                                        var reject_data = '<a onclick="GetRecieptData(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-primary h-30px w-30px mt-2 mx-1"><i  class="fa fa-eye fs-base"></i></a>';
                                        //var document_data = '<a onclick="UploadDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#Document_Content"  class="btn btn-icon btn-success h-30px w-30px mx-1"><i  class="fa fa-upload fs-base"></i></a>';
                                        var documentview_data = '<a onclick="ViewDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#DocumentView_Content"   class="btn btn-icon btn-primary h-30px w-30px mx-1"><i  class="fa fa-eye fs-base"></i></a>';
                                        return approval_data +  documentview_data;
                                    }
                                }
                            ]
                        })
                    }()
                }
            }
        }();
        function ViewDocument(id) {

            $('#StudentID_').val(id);
            param = "{'ID':'" + id + "'}";

            $.ajax({
                type: "post",
                url: "/Student_Registration/Financial_Approval.aspx/Get_FinanceStudentFee_Reciept",
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
        function showAttachment(id) {
            debugger;
            if (recieptsdata[0].Student_Id == id ) {
                $.each(recieptsdata, function (index, item) {
                    Generate_Reciept(recieptsdata[0], '1');
                })
            }
            else {
                $.each(recieptsdata, function (index, item) {
                    if (recieptsdata[index].Id == id) {
                        Generate_Reciept(recieptsdata[index], '2');
               }
                })
            }



        }
        var AttachmentBase64 = "";
        var recieptsdata = '';
        function get_documents(response) {
            if (response.d != null) {
                debugger;
                recieptsdata = '';
                recieptsdata = response.d;
                var html = "";
                html += '<div class="row g-6 g-xl-9 mb-6 mb-xl-9">';
                $('#tr_docs_uploaded').html("");
                $.each(recieptsdata, function (index, item) {
                    debugger
                    if (index === 0 && (recieptsdata[0].PaymentTypeA == 'Partial' || recieptsdata[0].PaymentTypeA == 'Full') ) {
                        if (recieptsdata[0].PaymentTypeA == 'Partial') {
                            html += '<div class="col-md-6 col-lg-4 col-xl-3" id="div_' + recieptsdata[0].PaymentDateA + '"><div class="card h-100"><div class="card-body d-flex justify-content-center text-center flex-column p-8">';
                            html += '<a onclick="showAttachment(' + recieptsdata[0].Student_Id + ')" href="javascript:void(0)" class="text-gray-800 text-hover-primary d-flex flex-column"><div class="symbol symbol-60px mb-5"><img src="/assets/media/svg/files/pdf.svg" alt=""></div>';
                            html += '<div class="fs-7 fw-bolder mb-2" > ' + 'Payment Slip ' + recieptsdata[0].PaymentDateA + ' - ' + recieptsdata[0].PaymentTypeA+  '</div></a><div class="fs-7 fw-bold text-gray-400"></div></div></div></div>';
                        }
                        else if (recieptsdata[0].PaymentTypeA == 'Full') {
                            html += '<div class="col-md-6 col-lg-4 col-xl-3" id="div_' + recieptsdata[0].PaymentDateA + '"><div class="card h-100"><div class="card-body d-flex justify-content-center text-center flex-column p-8">';
                            html += '<a onclick="showAttachment(' + recieptsdata[0].Student_Id + ')" href="javascript:void(0)" class="text-gray-800 text-hover-primary d-flex flex-column"><div class="symbol symbol-60px mb-5"><img src="/assets/media/svg/files/pdf.svg" alt=""></div>';
                            html += '<div class="fs-7 fw-bolder mb-2" > ' + 'Payment Slip ' + recieptsdata[0].PaymentDateA + ' - ' + recieptsdata[0].PaymentTypeA+  '</div></a><div class="fs-7 fw-bold text-gray-400"></div></div></div></div>';
                        }
                    }
                    else if (index > 0 && recieptsdata[index].Id != '' && recieptsdata[index].StatusB != '0') {
                        html += '<div class="col-md-6 col-lg-4 col-xl-3" id="div_' + recieptsdata[index].PaymentDateB + '"><div class="card h-100"><div class="card-body d-flex justify-content-center text-center flex-column p-8">';
                        html += '<a onclick="showAttachment(' + recieptsdata[index].Id + ')" href="javascript:void(0)" class="text-gray-800 text-hover-primary d-flex flex-column"><div class="symbol symbol-60px mb-5"><img src="/assets/media/svg/files/pdf.svg" alt=""></div>';
                        html += '<div class="fs-7 fw-bolder mb-2" > ' + 'Payment Slip ' + recieptsdata[index].PaymentDateB + ' - ' + recieptsdata[index].PaymentTypeB+  '</div></a><div class="fs-7 fw-bold text-gray-400"></div></div></div></div>';
                    }
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
        $('#kt_modal_PolicyAttachment').on('shown.bs.modal', function () {
            $(this).find('iframe').attr('src', AttachmentBase64)
        })
        //$('#DocumentView_Content').on('shown.bs.modal', function () {
        //    $(this).modal('show');
        //});
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

        // Load Initial Data
        function FinanceStudentModel(id) {
            debugger;
            $('#StudentID').val(id);
            GetFinance_StudentFee_Statuses();
            $('#Document_Content').modal('show');
        }
        function GetFinance_StudentFee_Statuses() {
            debugger;
            var ID = $('#StudentID').val();
            var formData = {
                ID: ID
            };
            param = "{'ID':'" + ID + "'}";
            $.ajax({
                type: "post",
                url: "/Student_Registration/Financial_Approval.aspx/GetFinance_StudentFee_Statuses",
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
            $('#ModelHeaderName').text(data[0].name + ' - ' + 'Registration Fee Statuses');

            //if (response.Code == "1") {
            var rows = '';
            var count = 0;
            //if (data.length > 0) {

            var table;
            table = $('#kt_datatable_InProcess_Status').DataTable();
            table.clear();
            for (var i = 0; i < data.length; i++) {
                count++;
                table.row.add([data[i].Status, data[i].Paid_Amount, data[i].Dated_F, data[i].Comments]);
            }
            table.draw();
            //  }
            //}
        }


        function GetLiveStudents() {
            debugger;
            $.ajax({
  

          type: "post",
                url: "/Student_Registration/Financial_Approval.aspx/Financial_PendingApproval",
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
            var rows = '';
            var count = 0;
            //if (data.length > 0) {

            var table;
            table = $('#kt_datatable_students_listing').DataTable();
            table.clear();
            for (var i = 0; i < data.length; i++) {

                count++;
                table.row.add([count, data[i].Student_Id, data[i].Student_Name, data[i].regDate_F, data[i].Student_Id + "/" + data[i].Ref_No, data[i].Mobile_No, data[i].Email, data[i].Residence_Country, data[i].Nationality, data[i].Marital_Status, data[i].Student_Type, data[i].PFL_Office_M, data[i].Study_Countries_M, /*university,*/ data[i].Study_Level, data[i].Intake_Month + ' ' + data[i].Intake_Semester + '/' + data[i].Intake_Year, data[i].Counceler, data[i].Payment_Type, data[i].TotalPaidAmount, data[i].TotalReg_Fee,0]);
            }
            table.draw();
        }

        function GetRecieptData(ID) {
            var formData = {
                ID: ID
            };
            param = "{'ID':'" + ID + "'}";

            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/Financial_Approval.aspx/Get_FinanceStudentFee_Reciept",
                contentType: "application/json; charset=utf-8",
                data: param,
                datatype: "json",
                success: Generate_Reciept,
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
        function Generate_Reciept(response, no) {
            var modalId = '#kt_modal_Feedback';

            $(modalId + ' input').each(function () {
                $(this).val(''); // Set the value of each input to an empty string
            });
            $('#DocumentView_Content').modal('hide');
           
            $(modalId + ' textarea').each(function () {
                $(this).val('');
            });
            $(modalId + ' .recieptspans').each(function () {
                $(this).text('');
            });
            debugger;
            //alert(no)
            if (response['response'] == '1') {
                debugger;
                //$('#Reciept_No').text(response['Reciept_No']);
                
                if (no == '1') { $('#Payment_Header').text(' - ' + response['PaymentTypeA']); }
                else { $('#Payment_Header').text(' - ' + response['PaymentTypeB']); }

                var d = new Date();
                var strDate = d.getDate() + "/" + (d.getMonth() + 1) + "/" + d.getFullYear();
                //$('#DateIssued').text(strDate);
                if (no == '1') { $('#DateIssued').text(response['PaymentDateA']); }
                else { $('#DateIssued').text(response['PaymentDateB']); }
                if (no == '1') { $('#Reciept_No').text(response['Reciept_NoA']); }
                else { $('#Reciept_No').text(response['Reciept_NoB']); }

                $('#Office').text(response['OfficeF']);
                $('#address').text(response['Permanent_Address']);
                $('#PFLOfficer').text(response['Officer']);
                if (no == '1') { $('#Amount').text(response['Payment_Currency'] + ' ' + response['TotalPaidAmount']); }
                else { $('#Amount').text(response['Payment_Currency'] + ' ' + response['TotalPaidAmount']); }
                $('#BankReciept_No').text(response['Bank_Reciept']);
                if (no == '1') { $('#BankReciept_No').text(response['Bank_RecieptA']); }
                else { $('#BankReciept_No').text(response['Bank_RecieptB']); }
                $('#TelNo').text(response['Mobile_No']);
                if (no == '1') { $('#Payment').text(response['Payment_MethodA']); }
                else { $('#Payment').text(response['Payment_MethodB']); }
                if (no == '1') { $('#Notes').text(response['Disclaimer']); }
                else { $('#Notes').text(response['Comments']); }

                //$('#Notes').text(response['Disclaimer']);
                var university = '';
                var universities = JSON.parse(response['Study_Countries']);
                $.each(universities, function (index, item) {
                    university += universities[index].name + ',';
                });

                $('#Country').text(response['Study_Countries_M']);
                $('#Period').text(response['Intake_Year']);
                $('#PFLRef').text(response['Ref_No']);
                if (response['Gender'] == 'Female') { $('#Title').text('Ms.'); }
                if (response['Gender'] == 'Male') { $('#Title').text('Mr.'); }
                $('#ForeName').text(response['Student_Name']);
                $('#LastName').text(response['SirName']);

                $('#Intake').text(response['Intake_Semester'] + '/' + response['Intake_Month'] + '/' + response['Intake_Year']);
                debugger;
                $('#kt_modal_Feedback').modal('show');

            }
            else {
                Swal.fire({
                    icon: 'error',
                    title: 'Report Failed.',
                    showConfirmButton: true,
                    timer: 20000,
                    confirmButtonText: "Ok, got it!",
                    customClass: {
                        confirmButton: "btn btn-light"
                    }
                })
            }
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
