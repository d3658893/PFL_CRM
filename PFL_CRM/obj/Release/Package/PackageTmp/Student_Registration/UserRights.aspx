<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRights.aspx.cs" Inherits="PFL_CRM.Student_Registration.UserRights" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Toolbar-->
        <div class="toolbar" id="kt_toolbar">

            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">User Access Management
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
                    <div class="col-xl-12">
                        <div class="card card-xl-stretch mb-xl-8" <%--style="box-shadow: rgba(0, 0, 0, 0.45) 0px 25px 20px -20px;"--%>>
                            <!--begin::Header-->
                            <!--end::Header-->
                            <!--begin::Header-->
                            <div class="card-header border-0 bg-success">
                                <h3 class="card-title fw-bolder text-white">Users</h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <a class="btn btn-secondary" onclick="AddUser('User')" title="Add New"><i class="fas fa-plus"></i></a>
                                </div>
                            </div>
                            <!--end::Header-->
                            <div class="card-body pt-5 border border-2 border-top-0 ">
                                <div class="table-responsive">
                                    <table class="table table-row-bordered gy-5 gs-7 text-center" id="kt_datatable_UserRights_listing">
                                        <thead>
                                            <tr class="fw-bolder fs-6 text-gray-800">
                                                <th class="min-w-10px">Sr#</th>
                                                <th class="min-w-30px">ID</th>
                                                <th class="min-w-50px">Name</th>
                                                <th class="min-w-50px">Designation</th>
                                                <th class="min-w-70px">Role</th>
                                                <th class="min-w-70px">UserName</th>
<%--                                                <th class="min-w-30px">City</th>--%>
                                                <th class="min-w-80px">Country</th>
                                                <th class="min-w-70px">Office Location</th>
                                                <th class="min-w-70px">Action</th>
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

                <div class="modal fade" id="kt_modal_userrights" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered mw-650px">
                        <div class="modal-content">
                            <div class="modal-header bg-success">
                                <h2 class="fw-bolder modaltitle text-white"></h2>
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
                                    <div class="level_content d-none">
                                        <input type="hidden" id="User_ID" />
                                        <div class="fv-row row mb-7">
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Name</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Name is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Enter Name" id="name" name="name"/>
                                                
                                            </div>
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Designation</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Designation is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Enter Designation" id="designation" name="designation" />
                                            </div>
                                        </div>
                                        <div class="fv-row row mb-7">
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">User Role</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="User Role is required."></i>
                                                </label>
                                                <select class="form-control form-control-solid" placeholder="Select Role" id="role" name="role">
                                                </select>
                                            </div>
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">UserName</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="UserName is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Enter UserName" id="user_name" name="user_name" />
                                            </div>
                                        </div>
                                        <div class="fv-row row mb-7">
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Password</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Password is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Enter Password" id="password" name="password" />
                                            </div>
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Country</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Country is required."></i>
                                                </label>
                                                <select class="form-control form-control-solid" placeholder="Enter Country" id="country" name="country">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="fv-row row mb-7">
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Office Location</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Location is required."></i>
                                                </label>
                                                <select class="form-control form-control-solid" placeholder="Enter Location" id="location" name="location">
                                                </select>
                                            </div>
                                            <%--                                            <div class="col-6 d-none">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">City</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="City is required."></i>
                                                </label>
                                                <select class="form-control form-control-solid" placeholder="Enter City" id="city" name="city">
                                                </select>
                                            </div>--%>
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Email</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Email is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Enter Email" id="email" name="email" />
                                            </div>
                                        </div>
                                        <div class="fv-row row mb-7">
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Phone No</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Phone No is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Enter Phone No" id="phone" name="phone" />
                                            </div>
                                            <div class="col-6">
                                                <label class="fs-6 fw-bold form-label mb-2">
                                                    <span class="required">Active</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Active Bit is required."></i>
                                                    <input class="form-check form-check-input mt-3" type="checkbox" id="active" name="active" />
                                                </label>
                                            </div>
                                        </div>
                                        <div class="text-center pt-3">
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
    <script>
        $(document).ready(function () {
            load_Roles();
            load_Countries();
            $("#country").change(function () {
                var end = this.value;
                var Country_ID = $('#country').val();
                load_PFL_OFFICES(Country_ID);
            });
            GET_ALL_USERS();
        });
        function load_Roles() {
            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/Student_Registration.aspx/GET_ROLES",
                contentType: "application/json; charset=utf-8",
                //data: param,
                datatype: "json",
                async: false,
                success: function (response) {
                    debugger;
                    var entryLevellookup = response.d;
                    var newOption = new Option("Select Role", "", true, false);
                    $("#role").append(newOption);
                    $.each(entryLevellookup, function (i) {
                        var newOption = new Option(entryLevellookup[i].Role, entryLevellookup[i].Id, false, false);
                        $("#role").append(newOption);
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
                    var newOption = new Option("Select Country", "", true, false);
                    $("#country").append(newOption);
                    $.each(entryLevellookup, function (i) {
                        var newOption = new Option(entryLevellookup[i].name, entryLevellookup[i].Id, false, false);
                        $("#country").append(newOption);
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
                    var newOption = new Option("Select Location", "", true, false);
                    $("#location").append(newOption);
                    $.each(entryLevellookup, function (i) {
                        var newOption = new Option(entryLevellookup[i].name, entryLevellookup[i].Id, false, false);
                        $("#location").append(newOption);
                    });
                },
                error: function (response) { debugger; swal("Failed"); }
            });

        }
        function GET_ALL_USERS() {
            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/Student_Registration.aspx/GET_All_USER_RIGHTS",
                contentType: "application/json; charset=utf-8",
                //data: param,
                async: false,
                datatype: "json",
                success: RenderUsers
                ,
                error: function (response) { debugger; swal("Failed"); }


            });
        }
        function RenderUsers(response) {
            debugger
            var data = response.d;

            /*if (response.Code == "1") {*/
            var rows = '';
            var count = 0;

            var table;
            table = $('#kt_datatable_UserRights_listing').DataTable();
            table.clear();
            for (var i = 0; i < data.length; i++) {

                count++;
                table.row.add([count, data[i].Id, data[i].Name, data[i].Designation, data[i].Role, data[i].Username, data[i].Country_Id, data[i].Office_Location, data[i].Password,  data[i].Name, data[i].Email, data[i].City,  data[i].Phone_No, data[i].Created_By, data[i].Created_On, data[i].IsActive, 0]);
            }
            table.draw();
            //}

        }
        var Offices = function () {
            return {
                init: function () {

                    ! function () {
                        var t = document.querySelector("#kt_datatable_UserRights_listing");
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

                            dom: "<'dt_top_searchBtn row mt-5 '<'col-xs-6 col-sm-6 col-md-3 float-start'f><'col-xs-6 col-sm-6 col-md-3 float-end'> >" +
                                "<'row'<'col-sm-12'tr>>" +
                                "<'row'<'col-sm-12 col-md-5'l><'col-sm-12 col-md-7'p>>",
                            buttons: [
                                {
                                    extend: 'excelHtml5',
                                    filename: 'Users Data export_' + datetime,
                                    text: '<i class="flaticon2-download"></i> Export To Excel',
                                    title: '',
                                    className: 'btn btn-sm btn-success mt-2',
                                    exportOptions: {
                                        columns: [0, 1]
                                    }

                                },

                            ],
                            columnDefs: [
                                {
                                    "targets": [1],
                                    "visible": false,
                                    "searchable": false
                                },
                                //{
                                //    "targets": [1],
                                //    "visible": false,
                                //    "searchable": false
                                //},
                                //{
                                //    "targets": [2],
                                //    "visible": false,
                                //    "searchable": false
                                //},

                                //{
                                //    "targets": [2],
                                //    render: function (data, type, full, meta) {
                                //        return '<span class="badge badge-primary">' + full[2] + '</span>';
                                //    }
                                //},
                                //{
                                //    targets: 3,
                                //    render: function (data, type, full, meta) {
                                //        var status = "";
                                //        if (full[3] == "1") {
                                //            status = "<span class='badge badge-success'>Active</span>";
                                //        }
                                //        else {
                                //            status = "<span class='badge badge-danger'>InActive</span>";
                                //        }
                                //        return status;

                                //    }
                                //},
                                {
                                    targets: 8,
                                    render: function (data, type, full, meta) {
                                        debugger;
                                        var btns = '';
                                        if (full[0] != 0) {

                                            btns += '<a href="javascript:void(0)" class="btn btn-icon btn-warning h-30px w-30px mx-1"  title="Edit" onclick="EditLevelAndGroup(this,' + full[1] + ')" id="UpdateUser"><i class="fa fa-edit fs-base"></i></a>';
                                            btns += '<a href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mx-1"  title="Delete" data-kt-page-modal-action="delete" onclick="DeleteUser(this,' + full[1] + ')" id="deleteUser")"><i  class="fa fa-trash fs-base"></i></a>';
                                            //btns += '<a href="javascript:void(0)"  class="btn btn-icon btn-success h-30px w-30px mx-1 AddEmployee"  title="Add Employee" data-kt-page-modal-action="addEmployee" onclick="" id="addEmpGroup")"><i class="fas fa-user"></i></a>';

                                        }
                                        else {

                                            btns += '<a href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mx-1"  title="Delete" data-kt-page-modal-action="delete" onclick="DeleteUser(this,' + full[1] + ')" id="deleteUser")"><i  class="fa fa-trash fs-base"></i></a>';
                                        }

                                        return btns;

                                    }
                                }

                            ]
                        })

                    }()
                }
            }
        }();
        KTUtil.onDOMContentLoaded((function () {
            Offices.init();
            KTUserSettingsAddAction.init();
        }));

        function AddUser(obj) {
            $("#updatelevelButton").addClass('d-none');
            $("#submitlevelButton").removeClass('d-none');
            if (obj == "User") {
                $(".modaltitle").text("Add User");
                $(".level_content").removeClass("d-none");
            }
            $("#kt_modal_userrights").modal('show');
        }
        function EditLevelAndGroup(obj, id) {
            debugger
            if ($(obj).attr('id') == "UpdateUser") {
                GetUserByID(id);
                $(".modaltitle").text("Update User");
                $(".level_content").removeClass("d-none");
                $("#updatelevelButton").removeClass('d-none');
                $("#submitlevelButton").addClass('d-none');
                $("#kt_modal_userrights").modal('show');
            }
        }
        function DeleteUser(obj, id) {
            if ($(obj).attr('id') == "deleteUser") {

                Swal.fire({
                    title: "Confirm!",
                    text: "Do you really want to delete User?",
                    icon: "warning",
                    showCancelButton: true,
                    buttons: true,
                    dangerMode: true,
                }).then((willDelete) => {
                    if (willDelete.isConfirmed) {

                        param = "{'ID':'" + id + "'}";
                        $.ajax({
                            type: "post",
                            url: "/Student_Registration/UserRights.aspx/DELETE_USER",
                            contentType: "application/json; charset=utf-8",
                            data: param,
                            datatype: "json",
                            async: false,
                            success: function (response) {
                                var data = response.d;
                                if (data[0].return == "1") {
                                    Swal.fire({
                                        text: "User has been deleted successfully",
                                        icon: "success",
                                        buttonsStyling: !1,
                                        confirmButtonText: "Ok!",
                                        customClass: {
                                            confirmButton: "btn btn-primary"
                                        }
                                    }).then((function (t) {

                                        window.location.reload();
                                    }))
                                }
                                else {
                                    Swal.fire({
                                        text: "Something went wrong!",
                                        icon: "success",
                                        buttonsStyling: !1,
                                        confirmButtonText: "Ok!",
                                        customClass: {
                                            confirmButton: "btn btn-primary"
                                        }
                                    })
                                }

                            },
                            error: function (response) { debugger; swal("Failed"); }
                        });

                    }

                });
            }
            else {


            }

        }
        function GetUserByID(id) {

            var formData = {
                id: id
            }
            formData = JSON.stringify(formData);
            $.ajax({
                type: "post",
                url: "/Student_Registration/UserRights.aspx/User_ById",
                contentType: "application/json; charset=utf-8",
                data: formData,
                datatype: "json",
                success: EditUserResponse,
                error: function (response) { debugger; swal("Failed"); }
            });
        }
        function EditUserResponse(response) {
            debugger;
            var userDetails = response.d;
            
            $("#User_ID").val(userDetails[0].Id);
            $("#name").val(userDetails[0].Name);
            $("#name").val(userDetails[0].Name);
            $("#designation").val(userDetails[0].Designation);
            $("#country").val(userDetails[0].Country_Id);
            load_PFL_OFFICES(userDetails[0].Country_Id);
            $("#role").val(userDetails[0].Role);
            $("#user_name").val(userDetails[0].Username);
            $("#password").val(userDetails[0].Password);
            $("#location").val(userDetails[0].Office_Location);
            $("#email").val(userDetails[0].Email);
            $("#phone").val(userDetails[0].Phone_No);
            $("#active").prop("checked", userDetails[0].IsActive == '1');

        }

        var KTUserSettingsAddAction = function () {
            const t = document.getElementById("kt_modal_userrights"),
                e = t.querySelector("#kt_modal_add_usersettings_form"),
                n = new bootstrap.Modal(t);
            return {
                init: function () {
                    (() => {
                        var o = FormValidation.formValidation(e, {
                            fields: {
                                name: {
                                    validators: {
                                        notEmpty: {
                                            message: "Name is required"
                                        }
                                    }
                                },
                                designation: {
                                    validators: {
                                        notEmpty: {
                                            message: "Designation is required"
                                        }
                                    }
                                },
                                country: {
                                    validators: {
                                        notEmpty: {
                                            message: "Country Name is required"
                                        }
                                    }
                                },
                                role: {
                                    validators: {
                                        notEmpty: {
                                            message: "User Role is required"
                                        }
                                    }
                                },
                                location: {
                                    validators: {
                                        notEmpty: {
                                            message: "User Location is required"
                                        }
                                    }
                                },
                                user_name: {
                                    validators: {
                                        notEmpty: {
                                            message: "User Name is required"
                                        }
                                    }
                                },
                                password: {
                                    validators: {
                                        notEmpty: {
                                            message: "Password is required"
                                        }
                                    }
                                },
                                email: {
                                    validators: {
                                        notEmpty: {
                                            message: "Email is required"
                                        }
                                    }
                                },
                                phone: {
                                    validators: {
                                        notEmpty: {
                                            message: "Phone No. is required"
                                        },
                                        regexp: {
                                            regexp: /^[0-9]+$/,
                                            message: "Please enter numbers only."
                                        }
                                    }
                                },
                            },
                            plugins: {
                                trigger: new FormValidation.plugins.Trigger,
                                bootstrap: new FormValidation.plugins.Bootstrap5({
                                    rowSelector: ".fv-row",
                                    eleInvalidClass: "",
                                    eleValidClass: ""
                                })
                            }
                        });
                        t.querySelector('[data-kt-modal-level="close"]').addEventListener("click", (t => {
                            t.preventDefault(), Swal.fire({
                                text: "Are you sure you would like to close?",
                                icon: "warning",
                                showCancelButton: !0,
                                buttonsStyling: !1,
                                confirmButtonText: "Yes, close it!",
                                cancelButtonText: "No, return",
                                customClass: {
                                    confirmButton: "btn btn-primary",
                                    cancelButton: "btn btn-active-light"
                                }
                            }).then((function (t) {
                                t.value && n.hide()
                            }))
                        })), t.querySelector('[data-kt-modal-level="cancel"]').addEventListener("click", (t => {
                            t.preventDefault(), Swal.fire({
                                text: "Are you sure you would like to cancel?",
                                icon: "warning",
                                showCancelButton: !0,
                                buttonsStyling: !1,
                                confirmButtonText: "Yes, cancel it!",
                                cancelButtonText: "No, return",
                                customClass: {
                                    confirmButton: "btn btn-primary",
                                    cancelButton: "btn btn-active-light"
                                }
                            }).then((function (t) {
                                t.value ? (e.reset(), n.hide()) : "cancel" === t.dismiss && Swal.fire({
                                    text: "Your form has not been cancelled!.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok, got it!",
                                    customClass: {
                                        confirmButton: "btn btn-primary"
                                    }
                                })
                            }))
                        }));
                        const i = t.querySelector('[data-kt-modal-level="submit"]');
                        i.addEventListener("click", (function (t) {
                            t.preventDefault(), o && o.validate().then((function (t) {
                                console.log("validated!"), "Valid" == t ? (i.setAttribute("data-kt-indicator", "on"), i.disabled = !0, setTimeout((function () {
                                    debugger;
                                    
                                    var name = $("#name").val();
                                    var designation = $("#designation").val();
                                    var country = $("#country").val();
                                    var role = $("#role").val();
                                    var user_name = $("#user_name").val();
                                    var password = $("#password").val();
                                    var location = $("#location").val();
                                    var email = $("#email").val();
                                    var phone = $("#phone").val();
                                    var active = $("#active").val();

                                    param = "{'name':'" + name + "','designation':'" + designation + "','country':'" + country + "','role':'" + role + "','user_name':'" + user_name + "','password':'" + password + "','location':'" + location + "','email':'" + email + "','phone':'" + phone + "','active':'" + active + "'}";
                                    $.ajax({
                                        type: "post",
                                        url: "/Student_Registration/UserRights.aspx/INSERT_ROLE",
                                        contentType: "application/json; charset=utf-8",
                                        data: param,
                                        datatype: "json",
                                        async: false,
                                        success: function (response) {
                                            var data = response.d;
                                            if (data[0].return == "1") {
                                                debugger;
                                                i.removeAttribute("data-kt-indicator"), i.disabled = !1, Swal.fire({
                                                    text: "User has been successfully created!",
                                                    icon: "success",
                                                    buttonsStyling: !1,
                                                    confirmButtonText: "Ok, got it!",
                                                    customClass: {
                                                        confirmButton: "btn btn-primary"
                                                    }
                                                }).then((function (t) {
                                                    t.isConfirmed && n.hide();
                                                    window.location.reload();
                                                }))
                                            }
                                            else {
                                                i.removeAttribute("data-kt-indicator"), i.disabled = !1, Swal.fire({
                                                    text: "Something went wrong",
                                                    icon: "error",
                                                    buttonsStyling: !1,
                                                    confirmButtonText: "Ok, got it!",
                                                    customClass: {
                                                        confirmButton: "btn btn-danger"
                                                    }
                                                }).then((function (t) {
                                                    t.isConfirmed && n.hide()
                                                }))
                                            }

                                        },
                                        error: function (response) { debugger; swal("Failed"); }
                                    });
                                }), 10)) : Swal.fire({
                                    text: "Sorry, looks like there are some errors detected, please try again.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok, got it!",
                                    customClass: {
                                        confirmButton: "btn btn-primary"
                                    }
                                })
                            }))
                        }))
                        const u = t.querySelector('[data-kt-modal-level="update"]');
                        u.addEventListener("click", (function (t) {
                            t.preventDefault(), o && o.validate().then((function (t) {
                                console.log("validated!"), "Valid" == t ? (u.setAttribute("data-kt-indicator", "on"), u.disabled = !0, setTimeout((function () {
                                    debugger;
                                    var id = $("#User_ID").val();
                                    var name = $("#name").val();
                                    var designation = $("#designation").val();
                                    var country = $("#country").val();
                                    var role = $("#role").val();
                                    var user_name = $("#user_name").val();
                                    var password = $("#password").val();
                                    var location = $("#location").val();
                                    var email = $("#email").val();
                                    var phone = $("#phone").val();
                                    var active = $("#active").val();


                                    param = "{'id':'" + id + "','name':'" + name + "','designation':'" + designation + "','country':'" + country + "','role':'" + role + "','user_name':'" + user_name + "','password':'" + password + "','location':'" + location + "','email':'" + email + "','phone':'" + phone + "','active':'" + active + "'}";
                                    $.ajax({
                                        type: "post",
                                        url: "/Student_Registration/UserRights.aspx/UPDATE_ROLE",
                                        contentType: "application/json; charset=utf-8",
                                        data: param,
                                        datatype: "json",
                                        async: false,
                                        success: function (response) {
                                            var data = response.d;
                                            if (data[0].return == "1") {
                                                debugger;
                                                i.removeAttribute("data-kt-indicator"), i.disabled = !1, Swal.fire({
                                                    text: "User has been successfully updated!",
                                                    icon: "success",
                                                    buttonsStyling: !1,
                                                    confirmButtonText: "Ok, got it!",
                                                    customClass: {
                                                        confirmButton: "btn btn-primary"
                                                    }
                                                }).then((function (t) {
                                                    t.isConfirmed && n.hide();
                                                    window.location.reload();
                                                }))
                                            }
                                            else {
                                                i.removeAttribute("data-kt-indicator"), i.disabled = !1, Swal.fire({
                                                    text: "Something went wrong",
                                                    icon: "error",
                                                    buttonsStyling: !1,
                                                    confirmButtonText: "Ok, got it!",
                                                    customClass: {
                                                        confirmButton: "btn btn-danger"
                                                    }
                                                }).then((function (t) {
                                                    t.isConfirmed && n.hide()
                                                }))
                                            }

                                        },
                                        error: function (response) { debugger; swal("Failed"); }
                                    });
                                }), 10)) : Swal.fire({
                                    text: "Sorry, looks like there are some errors detected, please try again.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok, got it!",
                                    customClass: {
                                        confirmButton: "btn btn-primary"
                                    }
                                })
                            }))
                        }))
                    })()
                }
            }
        }();


    </script>
</asp:Content>
