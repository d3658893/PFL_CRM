<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ConvStaffBucket.aspx.cs" Inherits="PFL_CRM.Student_Registration.ConvStaffBucket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid bg-light-info" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <!--begin::Container-->
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">Student Allocation to Conversion Team
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
                    <div id="Document_Content" class="modal fade col-lg-4" tabindex="-1">
                        <div class="modal-dialog mw-600px">
                            <div class="modal-content" id="content">
                                <div class="modal-header bg-warning text-white">
                                    <h2 class="text-white fw-bolder">Students Allocation</h2>
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
                                    <form class="bg-body" novalidate="novalidate" id="kt_create_account_form">
                                        <div class="row mb-6">
                                            <input type="hidden" id="StudentID" name="StudentID" />
                                            <div class="align-items-center">
                                                <div class="row">                                                    
                                                    <div class="pt-2 fv-row row">
                                                        <div class="col-8">
                                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                Conversion Staff
                                                            </label>
                                                            <select class="form-control form-control-solid form-select p-2" data-control="select2" autocomplete="off" data-placeholder="Conversion Staff" id="StaffId" name="StaffId">
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="pt-2 fv-row row">
                                                        <div class="col-8">
                                                            <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                                Comments
                                                            </label>
                                                            <textarea class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Comments" id="Comments" name="Comments"></textarea>
                                                        </div>
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
        Get_ConversionStaffs();
        
    });

    KTUtil.onDOMContentLoaded((function () {
        KTCreateAccountt.init();
        Students.init();
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

                            var ID = $("#StudentID").val();
                            var StaffId = $("#StaffId").val();
                            var Comments = $("#Comments").val();
                            var formData = {
                                ID: ID,
                                StaffId: StaffId,
                                Comments: Comments,
                            }

                            formData = JSON.stringify(formData);
                            $.ajax({
                                type: "post",
                                url: "/Student_Registration/ConvStaffBucket.aspx/AllocateStudent",
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
            if (response.d[0]['Column1'] == '1') {
                Swal.fire({
                    icon: 'success',
                    title: 'Student Allocated Successfully.',
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
                        'comment': {
                            validators: {
                                notEmpty: {
                                    message: 'Comment is required'
                                }
                            }
                        }
                        ,
                        'type': {
                            validators: {
                                notEmpty: {
                                    message: 'Conversion Staff is required'
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
                                    var approval_data = '<a onclick="AssignStudentModel(' + full[1] + ')" data-toggle="modal" data-target="#Document_Content" href="javascript:void(0)"  class="btn btn-icon btn-success h-30px w-30px mx-1"><i  class="fa fa-check fs-base"></i></a>';
                                    //var reject_data = '<a onclick="RejectApproval(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mt-2 mx-1"><i  class="fa fa-ban fs-base"></i></a>';
                                    //var document_data = '<a onclick="UploadDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#Document_Content"  class="btn btn-icon btn-success h-30px w-30px mx-1"><i  class="fa fa-upload fs-base"></i></a>';
                                    //var documentview_data = '<a onclick="ViewDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal"  class="btn btn-icon btn-primary h-30px w-30px mx-1"><i  class="fa fa-eye fs-base"></i></a>';
                                    return approval_data;
                                }
                            }
                        ]
                    })
                }()
            }
        }
    }();

    // Load Initial Data
    function AssignStudentModel(id) {
        debugger;
        $('#StudentID').val(id);
        $('#Document_Content').modal('show');

    }
    function GetLiveStudents() {
        debugger;
        $.ajax({
            type: "post",
            url: "/Student_Registration/ConvStaffBucket.aspx/ConversionManager_Approved",
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
    function Get_ConversionStaffs() {
        $.ajax({
            type: "post",
            url: "/Student_Registration/ConvStaffBucket.aspx/GET_CONVERSION_STAFF",
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
        $('#StaffId').empty();
        $.each(data, function (key, entry) {
            $('#StaffId').append($('<option></option>').attr('value', entry.Id).text(entry.name));
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
