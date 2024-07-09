<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PFL_Offices.aspx.cs" Inherits="PFL_CRM.Student_Registration.PFL_Offices" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Toolbar-->
        <div class="toolbar" id="kt_toolbar">

            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">PFL Offices
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
                            <!--begin::Body-->
                            <div class="card-body pt-5 border border-2 border-top-0 ">
                                <div class="table-responsive">
                                    <table class="table table-row-bordered gy-5 gs-7 text-center" id="kt_datatable_Countries_listing">
                                        <thead>
                                            <tr class="fw-bolder fs-6 text-gray-800">
                                                <th class="min-w-10px">Sr#</th>
                                                <th class="min-w-10px">ID</th>
                                                <th class="min-w-30px">Office Name</th>
                                                <th class="min-w-30px">Country</th>
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
                                                    <span class="required">Office Name</span>
                                                    <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-html="true" data-bs-content="Office Name is required."></i>
                                                </label>
                                                <input class="form-control form-control-solid" placeholder="Enter University Name" id="office_name" name="office_name" />
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
    <script>
        $(document).ready(function () {
            GetOffices();
        });

        function GetOffices() {
            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/Student_Registration.aspx/GET_All_PFL_OFFICES",
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
            table = $('#kt_datatable_Countries_listing').DataTable();
            table.clear();
            for (var i = 0; i < data.length; i++) {

                count++;
                table.row.add([count, data[i].Office_Id, data[i].office_name, data[i].country, 0]);
            }
            table.draw();
            //}

        }
        var Offices = function () {
            return {
                init: function () {

                    ! function () {
                        var t = document.querySelector("#kt_datatable_Countries_listing");
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
                                    filename: 'Countries Data export_' + datetime,
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
                                    targets: 4,
                                    render: function (data, type, full, meta) {
                                        var btns = '';
                                        if (full[0] != 0) {

                                            btns += '<a href="javascript:void(0)" class="btn btn-icon btn-warning h-30px w-30px mx-1"  title="Edit" onclick="EditLevelAndGroup(this,' + full[0] + ')" id="UpdateUser"><i class="fa fa-edit fs-base"></i></a>';
                                            btns += '<a href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mx-1"  title="Delete" data-kt-page-modal-action="delete" onclick="DeleteUser(this,' + full[0] + ')" id="deleteUser")"><i  class="fa fa-trash fs-base"></i></a>';
                                            //btns += '<a href="javascript:void(0)"  class="btn btn-icon btn-success h-30px w-30px mx-1 AddEmployee"  title="Add Employee" data-kt-page-modal-action="addEmployee" onclick="" id="addEmpGroup")"><i class="fas fa-user"></i></a>';

                                        }
                                        else {

                                            btns += '<a href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mx-1"  title="Delete" data-kt-page-modal-action="delete" onclick="DeleteUser(this,' + full[0] + ')" id="deleteUser")"><i  class="fa fa-trash fs-base"></i></a>';
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
           // KTUserSettingsAddAction.init();
        }));

        function AddUser_Settings(obj) {
        $("#updateUserSettingButton").addClass('d-none');
        $("#updatelevelButton").addClass('d-none');

        if (obj == "Country") {
            $(".modaltitle").text("Add Country");
            $(".level_content").addClass("d-none");
            $(".group_content").removeClass("d-none");
        }
        $("#kt_modal_usersettings_location").modal('show');
        }
        function EditLevelAndGroup(obj, id) {
            if ($(obj).attr('id') == "UpdateUser") {
                GetUserByID(id);
                $(".modaltitle").text("Update User");
                $(".level_content").addClass("d-none");
                $(".group_content").removeClass("d-none");
                $("#updatelevelButton").addClass('d-none');
                $("#submitlevelButton").addClass('d-none');
                $("#submitUserSettingButton").addClass('d-none');
                $("#updateUserSettingButton").removeClass('d-none');
                $("#kt_modal_usersettings_location").modal('show');
            }
            else if ($(obj).attr('id') == "UpdateLocation") {
                GetLocationByID(id);
                $(".modaltitle").text("Update Location");
                $(".group_content").addClass("d-none");
                $(".level_content").removeClass("d-none");
                $("#updatelevelButton").removeClass('d-none');
                $("#submitlevelButton").addClass('d-none');
                $("#submitUserSettingButton").addClass('d-none');
                $("#updateUserSettingButton").addClass('d-none');
                $("#kt_modal_usersettings_location").modal('show');
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
                            url: "/Student_Registration/Universities_Countries.aspx/DELETE_COUNTRY",
                            contentType: "application/json; charset=utf-8",
                            data: param,
                            datatype: "json",
                            async: false,
                            success: function (response) {
                                var data = response.d;
                                if (data[0].return == "1") {
                                    Swal.fire({
                                        text: "PFL Office has been deleted successfully",
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
        var KTUserSettingsAddAction = function () {
            const t = document.getElementById("kt_modal_usersettings_location"),
                e = t.querySelector("#kt_modal_add_usersettings_form"),
                n = new bootstrap.Modal(t);
            return {
                init: function () {
                    (() => {
                        var o = FormValidation.formValidation(e, {
                            fields: {
                                country: {
                                    validators: {
                                        notEmpty: {
                                            message: "Country Name is required"
                                        }
                                    }
                                }
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
                        })), t.querySelector('[data-kt-modal-group="cancel"]').addEventListener("click", (t => {
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
                        const i = t.querySelector('[data-kt-modal-group="submit"]');
                        i.addEventListener("click", (function (t) {
                            t.preventDefault(), o && o.validate().then((function (t) {
                                console.log("validated!"), "Valid" == t ? (i.setAttribute("data-kt-indicator", "on"), i.disabled = !0, setTimeout((function () {
                                    debugger
                                    var country = $("#country").val();
                                    param = "{'name':'" + country + "'}";
                                    $.ajax({
                                        type: "post",
                                        url: "/Student_Registration/Universities_Countries.aspx/INSERT_COUNTRY",
                                        contentType: "application/json; charset=utf-8",
                                        data: param,
                                        datatype: "json",
                                        async: false,
                                        success: function (response) {
                                            var data = response.d;
                                            if (data[0].return == "1") {
                                                debugger;
                                                i.removeAttribute("data-kt-indicator"), i.disabled = !1, Swal.fire({
                                                    text: "Country has been successfully created!",
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
                        const u = t.querySelector('[data-kt-modal-group="update"]');
                        u.addEventListener("click", (function (t) {
                            t.preventDefault(), o && o.validate().then((function (t) {
                                console.log("validated!"), "Valid" == t ? (u.setAttribute("data-kt-indicator", "on"), u.disabled = !0, setTimeout((function () {

                                    debugger
                                    var ID = $("#Country_ID").val();
                                    var country = $("#country").val();
                                    param = "{'ID':'" + ID + "','name':'" + country + "'}";
                                    $.ajax({
                                        type: "post",
                                        url: "/Student_Registration/Universities_Countries.aspx/UPDATE_COUNTRY",
                                        contentType: "application/json; charset=utf-8",
                                        data: param,
                                        datatype: "json",
                                        async: false,
                                        success: function (response) {
                                            var data = response.d;
                                            if (data[0].return == "1") {
                                                debugger;
                                                i.removeAttribute("data-kt-indicator"), i.disabled = !1, Swal.fire({
                                                    text: "Country has been successfully updated!",
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
