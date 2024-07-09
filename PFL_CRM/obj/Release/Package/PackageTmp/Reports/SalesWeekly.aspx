<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SalesWeekly.aspx.cs" Inherits="PFL_CRM.Reports.SalesWeekly" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
            <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                <!--begin::Page title-->
                <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                    <!--begin::Title-->
                    <h1 class="d-flex align-items-center text-white fw-bolder fs-3 my-1">Conversion Desk
                    </h1>
                    <!--end::Title-->
                </div>
                <h1 class="d-flex align-items-center text-success fw-bolder fs-3 my-1 text-end ME-9 badge badge-light-success">REPORT</h1>
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
                                    <button type="submit" id="kt_download_report_btn" class="btn btn-success me-5 mt-9 fs-5">
                                        <i class="fa fa-download"></i>Download
                                    </button>
                                    <hr>
                                </div>
                            </row>
                            <!--begin::Table container-->
                            <div class="table-responsive">
                                <table class="table table-row-bordered gy-5 fs-7 gs-7" id="kt_datatable_report_listing">
                                    <thead>
                                        <tr class="fw-bolder fs-7 text-gray-800">
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
    <script>
        function GetReport() {
            debugger;
            $.ajax({
                type: "post",
                url: "/Reports/SalesWeekly.aspx/GET_CONVERSIONDESK_REPORT",
                contentType: "application/json; charset=utf-8",
                //data: param,
                datatype: "json",
                success: RenderReport,
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
        function RenderReport(response) {
            var data = response.d;
            debugger;

            // Clear existing table
            $('#kt_datatable_report_listing').empty();

            // Create table headers dynamically
            var headers = Object.keys(data[0]);
            var headerRow = "<thead><tr class='fw-bolder fs-7 text-gray-800'>";
            for (var i = 0; i < headers.length; i++) {
                headerRow += "<th>" + headers[i] + "</th>";
            }
            headerRow += "</tr></thead>";
            $('#kt_datatable_report_listing').append(headerRow);

            // Populate table with data
            var tableBody = "<tbody>";
            for (var i = 0; i < data.length; i++) {
                tableBody += "<tr>";
                for (var j = 0; j < headers.length; j++) {
                    var cellData = data[i][headers[j]];
                    // Replace '0' with '-'
                    if (cellData === 0) {
                        cellData = '-';
                    }
                    tableBody += "<td>" + cellData + "</td>";
                }
                tableBody += "</tr>";
            }
            tableBody += "</tbody>";
            $('#kt_datatable_report_listing').append(tableBody);
        }

        $(document).ready(function () {
            GetReport();
            window.jsPDF = window.jspdf.jsPDF;
            $('#kt_download_report_btn').on('click', function () {
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
                doc.text('CONVERSION DESK REPORT', 60, 31); // Adjust position as needed
                doc.setFont('normal');
                doc.autoTable({
                    theme: 'grid', startY: 50, // Adjust the startY position as needed
                    margin: { top: 30, } // Adjust the margin top as needed
                    , html: '#kt_datatable_report_listing'
                });

                doc.save('ConversionReport.pdf');
            });

        });
        var ConversionDeskReport = function () {
            return {
                init: function () {

                    ! function () {
                        var t = document.querySelector("#kt_datatable_report_listing");
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
                            dom: "<'dt_top_searchBtn row mt-5 '<'col-lg-3 float-end me-2'f><'dt-buttons col-lg-9 float-start'> >" +
                                "<'row'<'col-sm-12'tr>>" +
                                "<'row'<'col-sm-12 col-md-5'l><'col-sm-12 col-md-7'p>>",
                            buttons: [
                                {
                                    extend: 'excelHtml5',
                                    filename: 'Leads Data export_' + datetime,
                                    text: '<i class="flaticon2-download"></i> Export To Excel',
                                    title: '',
                                    className: 'btn btn-sm btn-success mt-2',
                                    exportOptions: {
                                        columns: [0, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                                    }

                                },

                            ]
                        })

                    }()
                }
            }
        }();
        KTUtil.onDOMContentLoaded((function () {
            ConversionDeskReport.init();
        }));

    </script>
</asp:Content>
