<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="Conv_Sales_RegApproval.aspx.cs" Inherits="PFL_CRM.Student_Registration.Conv_Sales_RegApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid bg-light-info" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <!--begin::Container-->
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">CONVERSION APPROVAL
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
                                                <th class="min-w-70px">Status</th>
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
                                    <form class="bg-body" novalidate="novalidate" id="kt_create_account_form">
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
                                        <div class="text-center pt-7 " style="display: none" id="footer_uploader">
                                            <button type="submit" id="kt_upload_submit" class="btn btn-primary px-6 ms-2">
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
                                    <form class="bg-body" novalidate="novalidate" id="kt_create_account_forms">
                                        <div class="row mb-6">
                                            <input type="hidden" id="StudentID" name="Student_ID" />
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
                    $("[id$='footer_uploader']").show();

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
        //$("#kt_upload_submit").click(function () {
        //    debugger
        //    var isTrue = false, fileName = "";
        //    if (obj_file.length > 0) {
        //        isTrue = true;
        //        for (var i = 0; i < obj_file.length; i++) {
        //            if (isTrue) {
        //                uploadFilesToServer(obj_file[i]);
        //            }
        //            else {
        //                return false;
        //            }
        //        }
        //    }
        //    else {
        //        console.log("No file Selected.");
        //    }
        //});
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
                    var validator = validations[0]; // get validator for last form
                    var input = $('#div_university select');


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
                    window.location.href = "Student_Registration/Live_Students.aspx";


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
                            'Description': {
                                validators: {
                                    notEmpty: {
                                        message: 'Description is required'
                                    }
                                }
                            }
                            ,
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
                                    targets: 21,
                                    render: function (data, type, full, meta) {
                                        if (full[22] == '18') {
                                            var reject_data = '<a onclick="RejectApproval(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-success h-30px w-30px mt-2 mx-1"><i  class="fa fa-check fs-base"></i></a>';
                                            //var documentview_data = '<a onclick="ViewDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal"  class="btn btn-icon btn-primary h-30px w-30px mx-1"><i  class="fa fa-eye fs-base"></i></a>';
                                            return reject_data;
                                        }
                                        else {
                                            var approval_data = '<a onclick="DeleteComplaint(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-success h-30px w-30px mx-1"><i  class="fa fa-check fs-base"></i></a>';
                                            var reject_data = '<a onclick="RejectApproval(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mt-2 mx-1"><i  class="fa fa-ban fs-base"></i></a>';
                                            return approval_data + reject_data;
                                        }

                                    //    //var view_data = '<a href ="/Student_Registration/Student_Registration.aspx?StdId=' + full[1] + '&' + '"  class="btn btn-icon btn-warning h-30px w-30px mx-1"><i  class="fa fa-edit fs-base"></i></a>';
                                    //    var approval_data = '<a onclick="DeleteComplaint(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-success h-30px w-30px mx-1"><i  class="fa fa-check fs-base"></i></a>';
                                    //    var reject_data = '<a onclick="RejectApproval(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mt-2 mx-1"><i  class="fa fa-ban fs-base"></i></a>';
                                    //    //var document_data = '<a onclick="UploadDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#Document_Content"  class="btn btn-icon btn-success h-30px w-30px mx-1"><i  class="fa fa-upload fs-base"></i></a>';
                                    //    //var documentview_data = '<a onclick="ViewDocument(' + full[1] + ')" href="javascript:void(0)" data-bs-toggle="modal"  class="btn btn-icon btn-primary h-30px w-30px mx-1"><i  class="fa fa-eye fs-base"></i></a>';
                                    //    return approval_data + reject_data;
                                    }
                                }
                            ]
                        })

                    }()
                }
            }
        }();
        function UploadDocument(id) {
            $('#Student_ID').val(id);
        }
        function ViewDocument(id) {

            $('#StudentID').val(id);
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
        $('#kt_modal_PolicyAttachment').on('shown.bs.modal', function () {
            $(this).find('iframe').attr('src', AttachmentBase64)
        })

        KTUtil.onDOMContentLoaded((function () {
            KTCreateAccountt.init();
            Students.init();
            //$('.dt-buttonss').append("<form class='form' id='kt_tms_bulk_upload' novalidate='novalidate' action='#'><div class='col-lg-9'><label class= 'fs-6 fw-bold mb-3 mt-3'>Bulk Upload <span class= 'fs-7 text-muted fw-bold mx-5' > (Only XLS files are allowed)</span></label>" +
            //    '<div class="fv-row fv-plugins-icon-container"><div class="w-100"><input id="files" name="file" type="file" onchange="showResult(this.files[0]);" class="form-control form-control-solid ps-10"><div id="result" class="d-none"></div>' +
            //    '<span><button type="submit" id="kt_st_bulk_upload_btn" class="btn btn-primary me-5 mt-9 fs-8"><i class="fa fa-upload"></i> Upload</button></span></form>');

            //< div class= "dt-buttons btn-group flex-wrap float-end" > <button class="btn btn-secondary buttons-excel buttons-html5 btn-sm btn-success mt-2" tabindex="0" aria-controls="kt_datatable_students_listing" type="button"><span><i class="flaticon2-download"></i> Export To Excel</span></button> </div > ');
            KtBulkUpload.init();
        }));
        const fileDataURL = file => new Promise((resolve, reject) => {
            let fr = new FileReader();
            fr.onload = () => resolve(fr.result);
            fr.onerror = reject;
            fr.readAsDataURL(file)
        });

        var Study_Country_arr = "";
        function GetCountry() {
            //var param = "{'ID':'" + id + "'}";

            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/Student_Registration.aspx/GET_STUDY_COUNTRIES",
                contentType: "application/json; charset=utf-8",
                //data: param,
                async:false,
                datatype: "json",
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
                },
                success: function (response) {
                    debugger;
                    Study_Country_arr = $.parseJSON(JSON.stringify(response.d));
                }

            });
        }
        function GetLiveStudents() {
            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/Conv_Sales_RegApproval.aspx/ConversionManager_PendingApproval",
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
                //var university = '';
                //var universities = $.parseJSON(data[i].Study_Countries);
                //universities=universities.split(',');
                //for (var i = 0; i < universities.length; i++)
                //{
                //    debugger;
                //    var abc = "";

                //    abc = Study_Country_arr.filter(function (item) {
                //        return item.Id == universities[i];
                //    });
                //    //alert(abc);
                //    if (abc != "") { university += abc[0].name + ','; }
                    
                //};

                //debugger;

                //$.each(universities, function (index, item) {
                //    university += universities[index].name + ',';
                //});
                //alert(university);
                table.row.add([count, data[i].Student_Id, data[i].Student_Name, data[i].regDate_F, data[i].Student_Id + "/" + data[i].Ref_No, data[i].Mobile_No, data[i].Email, data[i].Residence_Country, data[i].Nationality, data[i].Marital_Status, data[i].Student_Type, data[i].PFL_Office_M, data[i].Study_Countries_M, /*university,*/ data[i].Study_Level, data[i].Intake_Month + ' ' + data[i].Intake_Semester + '/' + data[i].Intake_Year, data[i].Counceler, data[i].Payment_Type, data[i].Reg_Fee, data[i].dob_F, data[i].Gender, data[i].Status_M, 0, data[i].Status]);
            }
            table.draw();
            //  }
            //}
        }
        $(document).ready(function () {
            GetLiveStudents(); GetCountry();
            //load_OSTeam_Role_Status();
        });
        function showResult(file) {
            debugger;
            fileDataURL(file)
                .then(data => (document.getElementById("result").textContent = data))
                .catch(err => console.log(err));
        }
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
        function populateDropdown() {
            // Make an AJAX request to fetch data from your server
            $.ajax({
                type: "get", // Use the appropriate HTTP method
                url: "/your-server-endpoint", // Replace with the URL to fetch data
                success: function (data) {
                    // 'data' should be an array of objects with 'value' and 'text' properties
                    const options = data.map(item => ({
                        value: item.value,
                        text: item.text
                    }));

                    // Populate the dropdown with the fetched options
                    Swal.update({
                        inputOptions: options
                    });
                },
                error: function (error) {
                    console.error("Error fetching data:", error);
                }
            });
        }

        //function RejectApproval(id) {
        //    Swal.fire({
        //        customClass: {
        //            confirmButton: 'btn btn-danger',
        //            cancelButton: 'btn btn-secondary'
        //        },
        //        title: 'Drop Student!',
        //        input: 'select',
        //        showCancelButton: true,
        //        confirmButtonText: 'Drop Student',
        //        showLoaderOnConfirm: true,
        //        preConfirm: (selectedOption) => {
        //            param = "{'id':'" + id + "','comment':'" + selectedOption + "'";
        //            // Your AJAX request here

        //            return $.ajax({
        //                type: "post",
        //                url: "/Student_Registration/Conv_Sales_RegApproval.aspx/RejectByCounseler_STUDENT",
        //                contentType: "application/json; charset=utf-8",
        //                data: param,
        //                datatype: "json"
        //            })
        //                .then(response => {
        //                    debugger
        //                    if (!response.d[0].Column1 == '1') {
        //                        debugger
        //                        throw new Error(response.statusText)
        //                    }
        //                })
        //                .catch(error => {
        //                    debugger
        //                    Swal.showValidationMessage(
        //                        `Request failed: ${error}`
        //                    );
        //                });
        //        },
        //        allowOutsideClick: () => !Swal.isLoading(),
        //        onBeforeOpen: populateDropdown // Call the populateDropdown function before opening the dialog
        //    }).then((response) => {
        //        debugger
        //        if (response.isConfirmed) {
        //            debugger
        //            Swal.fire({  
        //                icon: 'success',
        //                title: 'Your work has been saved',
        //                showConfirmButton: false,
        //                timer: 500,
        //                title: 'Student Dropped By Conversion Manager!'
        //            });
        //            GetLiveStudents();
        //        }
        //    });
        //}

        // Call populateDropdown when the page loads or when needed to populate the dropdown initially.
        populateDropdown();
        function RejectApproval(id) {
            Swal.fire({
                customClass: {
                    confirmButton: 'btn btn-danger',
                    cancelButton: 'btn btn-secondary'
                },
                title: 'Drop Student!',
                input: 'text',
                inputAttributes: {
                    autocapitalize: 'off'
                },
                showCancelButton: true,
                confirmButtonText: 'Drop Student',
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
                            if (!response.d[0].Column1=='1') {
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
                        title: 'Student Dropped By Coversion Manager!'
                    })
                    GetLiveStudents();

                }
            })
        }
        var KtBulkUpload = function () {
            var t, e, i;
            return {
                init: function () {
                    t = document.querySelector("#kt_tms_bulk_upload"),
                        e = document.querySelector("#kt_st_bulk_upload_btn"),
                        i = FormValidation.formValidation(t, {
                            fields: {
                                file: {
                                    validators: {
                                        notEmpty: {
                                            message: "File is Required"
                                        },
                                        file: {
                                            extension: 'csv',
                                            //type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                                            //type: 'application/vnd.ms-excel',
                                            maxSize: 5000000,   // 2048 * 1024
                                            message: 'The selected file is not valid'
                                        },
                                    }

                                },

                            },
                            plugins: {
                                trigger: new FormValidation.plugins.Trigger,
                                bootstrap: new FormValidation.plugins.Bootstrap5({
                                    rowSelector: ".fv-row"
                                })
                            }
                        }), e.addEventListener("click", (function (n) {
                            n.preventDefault(), i.validate().then((function (i) {
                                "Valid" == i ? (e.setAttribute("data-kt-indicator", "on"), e.disabled = !0,
                                    setTimeout((function () {
                                        debugger;
                                        var Filebase64 = $('#result').text();
                                        var formData = {
                                            Filebase64: Filebase64
                                        };

                                        formData = JSON.stringify(formData);
                                        $.ajax({
                                            type: "post",
                                            url: "/Student_Registration/Live_Students.aspx/Live_Student_Uploader",
                                            contentType: "application/json; charset=utf-8",
                                            data: formData,
                                            datatype: "json",
                                            success: student_uploader,
                                            error: function (response) {
                                                debugger
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

                                        function student_uploader(response) {
                                            debugger
                                            if (response.d[0]['Column1'] == '1') {
                                                Swal.fire({
                                                    icon: 'success',
                                                    title: 'Registered Students Uploaded Successfully.',
                                                    showConfirmButton: true,
                                                    buttonsStyling: !0,
                                                    timer: 20000,
                                                    confirmButtonText: "Ok",
                                                    customClass: {
                                                        confirmButton: "btn btn-success"
                                                    }
                                                })
                                                document.querySelector("#kt_tms_bulk_upload_btn").disabled = !0;

                                            }
                                            else {
                                                Swal.fire({
                                                    icon: 'error',
                                                    title: 'Uploading Data Failed. Please verify file once',
                                                    showConfirmButton: true,
                                                    timer: 20000,
                                                    confirmButtonText: "Ok, got it!",
                                                    customClass: {
                                                        confirmButton: "btn btn-light"
                                                    }
                                                })
                                                document.querySelector("#kt_tms_bulk_upload_btn").disabled = !1;

                                            }
                                            $("#files").val(null);
                                            $("#files").removeClass("is-valid");
                                        }
                                    }), 100)) : Swal.fire({
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
                }
            }
        }();


    </script>
</asp:Content>
