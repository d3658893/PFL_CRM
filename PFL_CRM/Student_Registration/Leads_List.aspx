<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Leads_List.aspx.cs" Inherits="PFL_CRM.Student_Registration.Leads_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">LEADS LIST
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
                            <%--<button id="export-pdf">Export to PDF</button>--%>
                            <!--begin::Table container-->
                            <div class="table-responsive">
                                <table class="table table-row-bordered gy-5 fs-7 gs-7" id="kt_datatable_leads_listing">
                                    <thead>
                                        <tr class="fw-bolder fs-7 text-gray-800">
                                            <th class="min-w-10px">Sr.#</th>
                                            <th class="w-40px">ID</th>
                                            <th class="min-w-70px">Name</th>
                                            <th class="min-w-40px">Residence Country</th>
                                            <th class="min-w-40px">Nationality</th>
                                            <th class="min-w-40px">PFL Office</th>
                                            <th class="min-w-80px">Study Country</th>
                                            <th class="min-w-60px">Study Level</th>
                                            <th class="min-w-70px">Intake</th>
                                            <th class="min-w-60px">Source</th>
                                            <th class="min-w-60px">Source Detail</th>
                                            <th class="min-w-40px">Status</th>
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
            </div>
        </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.3/xlsx.full.min.js"></script>

    <script>

        var Students = function () {
            return {
                init: function () {

                    ! function () {
                        var t = document.querySelector("#kt_datatable_leads_listing");
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
                                    extend: 'pdf',
                                    filename: 'Leads Data export_',
                                    text: '<i class="flaticon2-download"></i> Export To Pdf',
                                    title: 'Data Export',
                                    className: 'btn btn-sm btn-success mt-2',
                                    exportOptions: {
                                        columns: 'visible'
                                    }

                                },

                            ],
                            columnDefs: [
                                {
                                    "targets": [1],
                                    "visible": false,
                                    "searchable": false
                                },
                                {
                                    "targets": [10],
                                    "visible": false,
                                    "searchable": false
                                },
                                //{
                                //    "targets": [11],
                                //    "visible": false,
                                //    "searchable": false
                                //},
                                //{
                                //    "targets": [4],
                                //    "visible": false,
                                //    "searchable": false
                                //},
                                //{
                                //    "targets": [3],
                                //    "visible": false,
                                //    "searchable": false
                                //},
                                //{
                                //    "targets": [6],
                                //    "visible": false,
                                //    "searchable": false
                                //},
                                {
                                    targets: 13,
                                    render: function (data, type, full, meta) {
                                        if (full[14] == '15' || full[14] == '16') {
                                            var view_data = '<a href ="/Student_Registration/Leads.aspx?StdId=' + full[1] + '&' + '"  class="btn btn-icon btn-warning h-30px w-30px mx-1"><i  class="fa fa-edit fs-base"></i></a>';
                                            var delete_data = '<a onclick="DeleteLead(' + full[1] + ')" href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mx-1"><i  class="fa fa-trash fs-base"></i></a>';
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
        KTUtil.onDOMContentLoaded((function () {
            Students.init();
            $('.dt-buttonss').append("<form class='form' id='kt_tms_bulk_upload' novalidate='novalidate' action='#'><div class='col-lg-9'><label class= 'fs-6 fw-bold mb-3 mt-3'>Bulk Upload <span class= 'fs-7 text-muted fw-bold mx-5' > (Only XLS files are allowed)</span></label><a href='#' id='downloadLink'>Download Format</a>" +
                '<div class="fv-row fv-plugins-icon-container"><div class="w-100"><input id="files" name="file" type="file" onchange="" class="form-control form-control-solid ps-10" /><div id="result" class="d-none"></div>' +
                '<span><button type="submit" id="kt_st_bulk_upload_btn" class="btn btn-primary me-5 mt-9 fs-8"><i class="fa fa-upload"></i> Upload</button></span></form>');

            //+'<div class= "dt-buttons btn-group flex-wrap float-end" > <button class="btn btn-secondary buttons-pdf buttons-pdf btn-sm btn-success mt-2" tabindex="0" aria-controls="kt_datatable_leads_listing" type="button"><span><i class="flaticon2-download"></i> Export To Pdf</span></button> </div > ');
            KtBulkUpload.init();
        }));
        const fileDataURL = file => new Promise((resolve, reject) => {
            let fr = new FileReader();
            fr.onload = () => resolve(fr.result);
            fr.onerror = reject;
            fr.readAsDataURL(file)
        });
        function GetLeads() {
            debugger;
            $.ajax({
                type: "post",
                url: "/Student_Registration/Leads_List.aspx/GET_LEADS",
                contentType: "application/json; charset=utf-8",
                //data: param,
                datatype: "json",
                success: RenderLeads,
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
        function RenderLeads(response) {
            var data = response.d;
            debugger;
            //if (response.Code == "1") {
            var rows = '';
            var count = 0;
            //if (data.length > 0) {
            var table;
            table = $('#kt_datatable_leads_listing').DataTable();
            table.clear();
            for (var i = 0; i < data.length; i++) {
                debugger
                count++;
                var university = '';
                var universities = JSON.parse(data[i].Study_Countries);
                ////for (var i = 0; i < universities.length; i++)
                ////{
                ////    university += universities[i].name + ',';
                ////};

                //$.each(universities, function (index, item) {
                //    university += universities[index].name + ',';
                //});
                //alert(university);
                table.row.add([count, data[i].Student_Id, data[i].Student_Name + " " + data[i].SirName, data[i].residence_country_M, data[i].Nationality, data[i].PFL_Office_M, data[i].Study_Countries_M, /*university,*/ data[i].StudyLevelF, data[i].Intake_Semester + " / " + data[i].Intake_Year + " / " + data[i].Intake_Month, data[i].Source, data[i].Source_Detail, data[i].Status_M, data[i].regDate_F, 0, data[i].Status]);
            }
            table.draw();

            //  }
            //}
        }
        $(document).ready(function () {

            GetLeads();
            window.jsPDF = window.jspdf.jsPDF;
            $('#export-pdf').on('click', function () {
                var doc = new jsPDF();
                // Logo
                var img = new Image();
                img.src = '/assets/images/report_logo.JPEG ';
                doc.addImage(img, 'PNG', 8, 8, 40, 40); // Adjust position and size as needed
                //doc.setTextColor(169, 169, 169); // Set text color to gray

                // Report heading
                doc.setFontSize(20);
                //doc.setTextColor(128, 128, 128);
                doc.setFont('bold');
                doc.text('WEEKLY SALES REGISTRATION REPORT', 60, 31); // Adjust position as needed
                doc.setFont('normal');
                doc.autoTable({
                    theme: 'grid', startY: 50, // Adjust the startY position as needed
                    margin: { top: 30, } // Adjust the margin top as needed
                    ,html: '#kt_datatable_leads_listing'
                });

                doc.save('table_exporsdsdsdt.pdf');
            });

            $('#export-spdf').on('click', function () {
                // Initialize jsPDF
                const doc = new jsPDF();
                alert(doc)
                var table = $('#kt_datatable_leads_listing')[0]; // Get the raw DOM element of the table
                var startY = 10; // Start y position
                $(table).find('tr').each(function (rowIndex, row) {
                    // Iterate over row cells
                    $(row).find('td, th').each(function (colIndex, cell) {
                        // Calculate cell position
                        var x = colIndex * 40; // Adjust cell width as needed
                        var y = startY + rowIndex * 10; // Adjust cell height as needed
                        // Draw cell content
                        doc.text(x, y, $(cell).text());
                        // Draw cell border
                        doc.rect(x, y, 40, 10); // Adjust cell dimensions as needed
                    });
                });

                //// Add table content to PDF
                //doc.autoTable({
                //    html: '#kt_datatable_leads_listing', // Table selector
                //    startY: 10, // Start y position
                //});

                // Save PDF
                doc.save('table_export.pdf');
                //html2canvas(table).then(function (canvas) {
                //    var imgData = canvas.toDataURL('image/png');
                //    doc.addImage(imgData, 'PNG', 10, startY);
                //    doc.save('table_export.pdf');
                //});
            });
            //load_OSTeam_Role_Status();
            $('#downloadLink').click(function (e) {
                e.preventDefault();
                var downloadUrl = '/Helper/Documents/PFL_Leads_Format.xlsx';  // Replace with the actual URL of your document
                debugger
                // Create a temporary anchor element
                var anchorElement = document.createElement('a');
                anchorElement.href = downloadUrl;
                anchorElement.download = 'PFL_Leads_Format.xlsx';  // Specify the desired file name

                // Trigger the download
                anchorElement.click();
            });
            document.getElementById('files').addEventListener('change', handleFileSelect);


        });
        function showResult(file) {
            debugger;
            fileDataURL(file)
                .then(data => (document.getElementById("result").textContent = data))
                .catch(err => console.log(err));
        }
        function DeleteLead(id) {
            Swal.fire({
                title: "Confirm!",
                showCancelButton: true,
                text: "Do you really want to delete this Lead?",
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
                        url: "/Student_Registration/Leads_List.aspx/DELETE_LEAD",
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
                                title: 'Lead deleted successfully',
                                showConfirmButton: false,
                                timer: 5000
                            })
                            GetLeads();
                        }
                        else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error, Please try again.',
                                showConfirmButton: false,
                                timer: 1500
                            })
                            GetLeads();
                        }

                    }

                }
            });
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
                                            extension: 'xlsx',
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
                                        //$('#files').click();

                                        var Filebase64 = ExcelData; // Get the selected file
                                        //var formData = Filebase64.map(function (item) {
                                        //    return {
                                        //        Contact_Number: item.Contact_Number,
                                        //        Counsellor_Name: item.Counsellor_Name,
                                        //        Date: item.Date,
                                        //        Email: item.Email,
                                        //        Intended_Country: item.Intended_Country,
                                        //        Intended_Institute: item.Intended_Institute,
                                        //        Name: item.Name,
                                        //        Region: item.Region
                                        //    };
                                        //});
                                        console.log(formData);
                                        //var formData = new FormData(); // Create a new FormData object
                                        //formData.append('Filebase64', file); // Append the file to the FormData object
                                        var formData = {
                                            Filebase64: Filebase64
                                        };
                                        formData = JSON.stringify(formData);
                                        $.ajax({
                                            type: "post",
                                            url: "/Student_Registration/Leads_List.aspx/Leads_Uploader",
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
                                            if (response.d[0]['return'] == '1') {
                                                Swal.fire({
                                                    icon: 'success',
                                                    title: 'Bulk Leads Uploaded Successfully.',
                                                    showConfirmButton: true, 
                                                    buttonsStyling: !0,
                                                    timer: 20000,
                                                    confirmButtonText: "Ok",
                                                    customClass: {
                                                        confirmButton: "btn btn-success"
                                                    }
                                                    
                                                })
                                                //document.querySelector("#kt_tms_bulk_upload_btn").disabled = false;
                                                $('#files').val('')
                                                window.location.reload();
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
        debugger
        // Event listener for file input change
        var ExcelData;
        // Function to handle the file input change event
        function handleFileSelect(event) {
            debugger;
            var file = event.target.files[0]; // Get the selected file

            var reader = new FileReader(); // Create a FileReader object

            // Callback function when the file is loaded
            reader.onload = function (e) {
                var data = new Uint8Array(e.target.result);
                var workbook = XLSX.read(data, { type: 'array' });

                // Assuming the first sheet is the one you want to read
                var worksheet = workbook.Sheets[workbook.SheetNames[0]];

                var jsonData = XLSX.utils.sheet_to_json(worksheet, { header: 0 });

                // Process the jsonData as needed
                console.log(jsonData);
                debugger;
                ExcelData = jsonData;
            };

            // Read the file as an array buffer
            reader.readAsArrayBuffer(file);
        }

    </script>

</asp:Content>
