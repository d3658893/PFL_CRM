<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Universities_Countries.aspx.cs" Inherits="PFL_CRM.Student_Registration.Universities_Countries" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Toolbar-->
        <div class="toolbar" id="kt_toolbar">

            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">UNIVERSITIES & COUNTRIES
                    </h1>
                    <!--end::Title-->
                </div>
            </div>
        </div>
    <!--end::Toolbar-->
    <!--begin::Post-->
        <div class="d-flex flex-column-fluid">
            <!--begin::Container-->
            <div class="container">
                <div class="row">
                    <!-- waleed-org-start-->
                    <div class="col-xl-6">
                        <div class="card card-xl-stretch mb-xl-8" <%--style="box-shadow: rgba(0, 0, 0, 0.45) 0px 25px 20px -20px;"--%>>
                            <!--begin::Header-->
                            <div class="card-header border-0 bg-success">
                                <h3 class="card-title fw-bolder text-white">Countries</h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <a class="btn btn-secondary" onclick="AddUser_Settings('Country')" title="Add New"><i class="fas fa-plus"></i></a>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-5 border border-2 border-top-0 ">
                                <div class="table-responsive">
                                    <table class="table table-row-bordered gy-5 gs-7 text-center" id="kt_datatable_Countries_listing">
                                        <thead>
                                            <tr class="fw-bolder fs-6 text-gray-800">
                                                <th class="min-w-10px">ID</th>
                                                <th class="min-w-30px">Countries</th>
                                                <th class="min-w-50px">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="card card-xl-stretch mb-xl-8" <%--style="box-shadow: rgba(0, 0, 0, 0.45) 0px 25px 20px -20px;"--%>>
                            <!--begin::Header-->
                            <div class="card-header border-0 bg-success">
                                <h3 class="card-title fw-bolder text-white">Universities</h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <a class="btn btn-secondary fw-bolder " onclick="AddUser_Settings('University')" title="Add New"><i class="fas fa-plus"></i></a>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-5 border border-2 border-top-0 ">
                                <div class="table-responsive">
                                    <table class="table table-row-bordered gy-5 gs-7" id="kt_datatable_university_listing">
                                        <thead>
                                            <tr class="fw-bolder fs-6 text-gray-800">
                                                <th class="min-w-10px">ID</th>
                                                <th class="min-w-120px">University Name</th>
                                                <th class="min-w-80px">Country</th>
                                                <th class="min-w-50px">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="kt_modal_usersettings_location" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered mw-650px">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="fw-bolder modaltitle"></h2>
                                <div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-modal-level="close">
                                    <span class="svg-icon svg-icon-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
                                            <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
                                        </svg>
                                    </span>
                                </div>
                            </div>
                            <div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
                                <form id="kt_modal_add_usersettings_form" class="form">
                                    <div class="group_content d-none">
                                        <input type="hidden" id="Country_ID" />
                                        <div class="fv-row row mb-7">
                                            <div class="col-12">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Country Name</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Country is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Select Country" id="country" name="country"/>
                                            </div>
                                        </div>
                                        <div class="text-center pt-15">
                                            <button type="reset" class="btn btn-light me-3" data-kt-modal-group="cancel">Discard</button>
                                            <button type="submit" class="btn btn-primary" data-kt-modal-group="submit" id="submitUserSettingButton">
                                                <span class="indicator-label">Submit</span>
                                                <span class="indicator-progress">Please wait...
											<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                            </button>
                                            <button type="submit" class="btn btn-primary" data-kt-modal-group="update" id="updateUserSettingButton">
                                                <span class="indicator-label">Update</span>
                                                <span class="indicator-progress">Please wait...
											<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <form id="kt_modal_add_location_form" class="form">
                                    <div class="level_content d-none">
                                        <input type="hidden" id="University_ID" />
                                        <div class="fv-row row mb-7">
                                            <div class="col-12">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Country Name</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Country is required."></i>
                                                </label>
                                                <select class="form-control form-control-solid" placeholder="Select Country" id="country_name" name="country_name">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="fv-row row mb-7">
                                            <div class="col-12">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">University Name</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="University Name is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Enter University Name" id="university_name" name="university_name" />
                                            </div>
                                        </div>
                                        <div class="text-center pt-15">
                                            <button type="reset" class="btn btn-light me-3" data-kt-modal-level="cancel">Discard</button>
                                            <button type="submit" class="btn btn-primary" data-kt-modal-level="submit" id="submitlevelButton">
                                                <span class="indicator-label">Submit</span>
                                                <span class="indicator-progress">Please wait...
											<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                            </button>
                                            <button type="submit" class="btn btn-primary" data-kt-modal-level="update" id="updatelevelButton">
                                                <span class="indicator-label">Update</span>
                                                <span class="indicator-progress">Please wait...
											<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/assets/js/custom/Student_Registration/Country_University.js?rndstr =<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>
</asp:Content>
