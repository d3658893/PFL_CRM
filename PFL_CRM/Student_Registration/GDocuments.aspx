<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="GDocuments.aspx.cs" Inherits="PFL_CRM.Student_Registration.GDocuments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">General Documents System
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
                            <row class="mb-10">
                                <div class="col-12 ">
                                    <button onclick="OpenModel()" data-toggle="modal" data-target="#Document_Content" href="javascript:void(0)" class="btn btn-success me-5 mt-9 fs-5">
                                        <i class="fa fa-download"></i>Upload Document
                                    </button>
                                    <hr>
                                </div>
                            </row>
                            <!--begin::Table container-->
                            <div class="table-responsive">
                                <table class="table table-row-bordered gy-5 fs-7 gs-7" id="kt_datatable_docs_listing">
                                    <thead>
                                        <tr class="fw-bolder fs-7 text-gray-800">
                                            <th class="min-w-10px">Sr.#</th>
                                            <th class="w-40px">ID</th>
                                            <th class="min-w-70px">Name</th>
                                            <th class="min-w-40px">Category</th>
                                            <th class="min-w-40px">Description</th>
                                            <th class="min-w-40px">Created By</th>
                                            <th class="min-w-40px">Created Date</th>
                                            <th class="min-w-40px">Actions</th>
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
                                                    <div class="col-8">
                                                        <label class="form-check form-check-custom form-check-solid fw-bold mb-2 fs-6 p-2">
                                                            Name
                                                        </label>
                                                        <input class="form-control form-control-solid p-2" autocomplete="off" data-placeholder="Document Name" id="name" name="name"/>
                                                    </div>
                                                </div>
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

            </div>
        </div>
        </div>
    </div>
    <script>
        var Documents = function () {
            return {
                init: function () {

                    ! function () {
                        var t = document.querySelector("#kt_datatable_docs_listing");
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
                            columnDefs: [
                                {
                                    "targets": [1],
                                    "visible": false,
                                    "searchable": false
                                },
                                {
                                    targets: 13,
                                    render: function (data, type, full, meta) {
                                        if (full[14] == '15' || full[14] == '16') {
                                            var view_data = '<a href ="/Student_Registration/Leads.aspx?StdId=' + full[1] + '&' + '"  class="btn btn-icon btn-warning h-30px w-30px mx-1"><i  class="fa fa-edit fs-base"></i></a>';
                                            var delete_data = '<a onclick="DeleteDoc(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mx-1"><i  class="fa fa-trash fs-base"></i></a>';
                                            return view_data + delete_data;
                                        }
                                        else {
                                            return '';
                                        }
                                    }
                                }

                            ]
                        })

                    }()
                }
            }
        }();
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

        KTUtil.onDOMContentLoaded((function () {
            Documents.init();
            KTCreateAccounts.init();
        }));
        function GetDocs() {
            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/GDocuments.aspx/GET_Docs",
                contentType: "application/json; charset=utf-8",
                //data: param,
                datatype: "json",
                success: RenderDocs,
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
        function RenderDocs(response) {
            var data = response.d;
            var count = 0;
            var table;
            table = $('#kt_datatable_docs_listing').DataTable();
            table.clear();
            for (var i = 0; i < data.length; i++) {
                count++;
                table.row.add([count, data[i].Student_Id, data[i].Student_Name + " " + data[i].SirName, data[i].residence_country_M, data[i].Nationality, data[i].PFL_Office_M, data[i].Study_Countries_M, /*university,*/ data[i].StudyLevelF, data[i].Intake_Semester + " / " + data[i].Intake_Year + " / " + data[i].Intake_Month, data[i].Source, data[i].Source_Detail, data[i].Status_M, data[i].regDate_F, 0, data[i].Status]);
            }
            table.draw();
        }
        // Doc
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
        function showResult(file) {
            debugger;
            fileDataURL(file)
                .then(data => (document.getElementById("result").textContent = data))
                .catch(err => console.log(err));
        }

        $(document).ready(function () {
            GetDocs();

        });
        function OpenModel(id) {
            debugger;
            $('#Document_Content').modal('show');
        }

        function DeleteDocd(id) {
            Swal.fire({
                title: "Confirm!",
                showCancelButton: true,
                text: "Do you really want to delete this Document?",
                icon: "warning",
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
                        url: "/Student_Registration/GDocuments.aspx/DELETE_DOC",
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
                                title: 'Doc deleted successfully',
                                showConfirmButton: false,
                                timer: 5000
                            })
                            GetDocs();
                        }
                        else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error, Please try again.',
                                showConfirmButton: false,
                                timer: 1500
                            })
                            GetDocs();
                        }

                    }

                }
            });
        }

    </script>

</asp:Content>
