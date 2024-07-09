<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="PFL_CRM.Student_Registration.Dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content  d-flex flex-column flex-column-fluid pt-0" id="kt_content">
        <!--begin::Subheader-->
        <%--        <div class="subheader py-2 py-lg-4  subheader-solid " id="kt_subheader">
            <div class=" container-fluid  d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                <!--begin::Info-->
                <div class="d-flex align-items-center flex-wrap mr-2">

                    <!--begin::Page Title-->
                    <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">
                        Dashboard
                    </h5>
                    <!--end::Page Title-->
                    <!--begin::Actions-->
                    <div class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-4 bg-gray-200"></div>

                    <span class="text-muted font-weight-bold mr-4">#XRS-45670</span>

                    <a href="#" class="btn btn-light-warning font-weight-bolder btn-sm">
                        Add New
                    </a>
                    <!--end::Actions-->
                </div>
                <!--end::Info-->
                <!--begin::Toolbar-->
                <div class="d-flex align-items-center">
                    <!--begin::Actions-->
                    <a href="#" class="btn btn-clean  btn-sm font-weight-bold font-size-base mr-1">
                        Today
                    </a>
                    <a href="#" class="btn btn-clean btn-sm font-weight-bold font-size-base  mr-1">
                        Month
                    </a>
                    <a href="#" class="btn btn-clean btn-sm font-weight-bold font-size-base mr-1">
                        Year
                    </a>
                    <!--end::Actions-->
                    <!--begin::Daterange-->
                    <a href="#" class="btn btn-sm btn-light font-weight-bold mr-2" id="kt_dashboard_daterangepicker" data-toggle="tooltip" title="" data-placement="left" data-original-title="Select dashboard daterange">
                        <span class="text-muted font-size-base font-weight-bold mr-2" id="kt_dashboard_daterangepicker_title">Today:</span>
                        <span class="text-primary font-size-base font-weight-bolder" id="kt_dashboard_daterangepicker_date">Jun 4</span>
                    </a>
                    <!--end::Daterange-->
                    <!--begin::Dropdowns-->
                    <div class="dropdown dropdown-inline" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                        <a href="#" class="btn btn-sm btn-clean btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="svg-icon svg-icon-success svg-icon-lg">
                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Files/File-plus.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                        <path d="M5.85714286,2 L13.7364114,2 C14.0910962,2 14.4343066,2.12568431 14.7051108,2.35473959 L19.4686994,6.3839416 C19.8056532,6.66894833 20,7.08787823 20,7.52920201 L20,20.0833333 C20,21.8738751 19.9795521,22 18.1428571,22 L5.85714286,22 C4.02044787,22 4,21.8738751 4,20.0833333 L4,3.91666667 C4,2.12612489 4.02044787,2 5.85714286,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                        <path d="M11,14 L9,14 C8.44771525,14 8,13.5522847 8,13 C8,12.4477153 8.44771525,12 9,12 L11,12 L11,10 C11,9.44771525 11.4477153,9 12,9 C12.5522847,9 13,9.44771525 13,10 L13,12 L15,12 C15.5522847,12 16,12.4477153 16,13 C16,13.5522847 15.5522847,14 15,14 L13,14 L13,16 C13,16.5522847 12.5522847,17 12,17 C11.4477153,17 11,16.5522847 11,16 L11,14 Z" fill="#000000"></path>
                                    </g>
                                </svg><!--end::Svg Icon-->
                            </span>
                        </a>
                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right py-3">
                            <!--begin::Navigation-->
                            <ul class="navi navi-hover py-5">
                                <li class="navi-item">
                                    <a href="#" class="navi-link">
                                        <span class="navi-icon"><i class="flaticon2-drop"></i></span>
                                        <span class="navi-text">New Group</span>
                                    </a>
                                </li>
                                <li class="navi-item">
                                    <a href="#" class="navi-link">
                                        <span class="navi-icon"><i class="flaticon2-list-3"></i></span>
                                        <span class="navi-text">Contacts</span>
                                    </a>
                                </li>
                                <li class="navi-item">
                                    <a href="#" class="navi-link">
                                        <span class="navi-icon"><i class="flaticon2-rocket-1"></i></span>
                                        <span class="navi-text">Groups</span>
                                        <span class="navi-link-badge">
                                            <span class="label label-light-primary label-inline font-weight-bold">new</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="navi-item">
                                    <a href="#" class="navi-link">
                                        <span class="navi-icon"><i class="flaticon2-bell-2"></i></span>
                                        <span class="navi-text">Calls</span>
                                    </a>
                                </li>
                                <li class="navi-item">
                                    <a href="#" class="navi-link">
                                        <span class="navi-icon"><i class="flaticon2-gear"></i></span>
                                        <span class="navi-text">Settings</span>
                                    </a>
                                </li>

                                <li class="navi-separator my-3"></li>

                                <li class="navi-item">
                                    <a href="#" class="navi-link">
                                        <span class="navi-icon"><i class="flaticon2-magnifier-tool"></i></span>
                                        <span class="navi-text">Help</span>
                                    </a>
                                </li>
                                <li class="navi-item">
                                    <a href="#" class="navi-link">
                                        <span class="navi-icon"><i class="flaticon2-bell-2"></i></span>
                                        <span class="navi-text">Privacy</span>
                                        <span class="navi-link-badge">
                                            <span class="label label-light-danger label-rounded font-weight-bold">5</span>
                                        </span>
                                    </a>
                                </li>
                            </ul>
                            <!--end::Navigation-->
                        </div>
                    </div>
                    <!--end::Dropdowns-->
                </div>
                <!--end::Toolbar-->
            </div>
        </div>--%>
        <!--end::Subheader-->
        <!--begin::Entry-->
        <%--        <div class="d-flex flex-column-fluid">
            <!--begin::Container-->
            <div class=" container ">
                <!--begin::Dashboard-->
                <!--begin::Row-->
                <div class="row">
                    <div class="col-lg-6 col-xxl-4">
                        <!--begin::Mixed Widget 1-->
                        <div class="card card-custom bg-gray-100 card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header border-0 bg-danger py-5">
                                <h3 class="card-title font-weight-bolder text-white">Sales Stat</h3>
                                <div class="card-toolbar">
                                    <div class="dropdown dropdown-inline">
                                        <a href="#" class="btn btn-transparent-white btn-sm font-weight-bolder dropdown-toggle px-5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Export
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header pb-1">
                                                    <span class="text-primary text-uppercase font-weight-bold font-size-sm">Add new:</span>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-shopping-cart-1"></i></span>
                                                        <span class="navi-text">Order</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-calendar-8"></i></span>
                                                        <span class="navi-text">Event</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-graph-1"></i></span>
                                                        <span class="navi-text">Report</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-rocket-1"></i></span>
                                                        <span class="navi-text">Post</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-writing"></i></span>
                                                        <span class="navi-text">File</span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body p-0 position-relative overflow-hidden">
                                <!--begin::Chart-->
                                <div id="kt_mixed_widget_1_chart" class="card-rounded-bottom bg-danger" style="height: 200px; min-height: 200px;">
                                    <div id="apexcharts5wnk36d6h" class="apexcharts-canvas apexcharts5wnk36d6h apexcharts-theme-light" style="width: 462px; height: 200px;">
                                        <svg id="SvgjsSvg1621" width="462" height="200" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <g id="SvgjsG1623" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)">
                                                <defs id="SvgjsDefs1622">
                                                    <clipPath id="gridRectMask5wnk36d6h">
                                                        <rect id="SvgjsRect1626" width="469" height="203" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="gridRectMarkerMask5wnk36d6h">
                                                        <rect id="SvgjsRect1627" width="466" height="204" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <filter id="SvgjsFilter1633" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%">
                                                        <feFlood id="SvgjsFeFlood1634" flood-color="#d13647" flood-opacity="0.5" result="SvgjsFeFlood1634Out" in="SourceGraphic"></feFlood>
                                                        <feComposite id="SvgjsFeComposite1635" in="SvgjsFeFlood1634Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1635Out"></feComposite>
                                                        <feOffset id="SvgjsFeOffset1636" dx="0" dy="5" result="SvgjsFeOffset1636Out" in="SvgjsFeComposite1635Out"></feOffset>
                                                        <feGaussianBlur id="SvgjsFeGaussianBlur1637" stdDeviation="3 " result="SvgjsFeGaussianBlur1637Out" in="SvgjsFeOffset1636Out"></feGaussianBlur>
                                                        <feMerge id="SvgjsFeMerge1638" result="SvgjsFeMerge1638Out" in="SourceGraphic">
                                                            <feMergeNode id="SvgjsFeMergeNode1639" in="SvgjsFeGaussianBlur1637Out"></feMergeNode>
                                                            <feMergeNode id="SvgjsFeMergeNode1640" in="[object Arguments]"></feMergeNode>
                                                        </feMerge>
                                                        <feBlend id="SvgjsFeBlend1641" in="SourceGraphic" in2="SvgjsFeMerge1638Out" mode="normal" result="SvgjsFeBlend1641Out"></feBlend>
                                                    </filter>
                                                    <filter id="SvgjsFilter1643" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%">
                                                        <feFlood id="SvgjsFeFlood1644" flood-color="#d13647" flood-opacity="0.5" result="SvgjsFeFlood1644Out" in="SourceGraphic"></feFlood>
                                                        <feComposite id="SvgjsFeComposite1645" in="SvgjsFeFlood1644Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1645Out"></feComposite>
                                                        <feOffset id="SvgjsFeOffset1646" dx="0" dy="5" result="SvgjsFeOffset1646Out" in="SvgjsFeComposite1645Out"></feOffset>
                                                        <feGaussianBlur id="SvgjsFeGaussianBlur1647" stdDeviation="3 " result="SvgjsFeGaussianBlur1647Out" in="SvgjsFeOffset1646Out"></feGaussianBlur>
                                                        <feMerge id="SvgjsFeMerge1648" result="SvgjsFeMerge1648Out" in="SourceGraphic">
                                                            <feMergeNode id="SvgjsFeMergeNode1649" in="SvgjsFeGaussianBlur1647Out"></feMergeNode>
                                                            <feMergeNode id="SvgjsFeMergeNode1650" in="[object Arguments]"></feMergeNode>
                                                        </feMerge>
                                                        <feBlend id="SvgjsFeBlend1651" in="SourceGraphic" in2="SvgjsFeMerge1648Out" mode="normal" result="SvgjsFeBlend1651Out"></feBlend>
                                                    </filter>
                                                </defs>
                                                <g id="SvgjsG1652" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1653" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g>
                                                </g>
                                                <g id="SvgjsG1662" class="apexcharts-grid">
                                                    <g id="SvgjsG1663" class="apexcharts-gridlines-horizontal" style="display: none;">
                                                        <line id="SvgjsLine1665" x1="0" y1="0" x2="462" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1666" x1="0" y1="20" x2="462" y2="20" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1667" x1="0" y1="40" x2="462" y2="40" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1668" x1="0" y1="60" x2="462" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1669" x1="0" y1="80" x2="462" y2="80" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1670" x1="0" y1="100" x2="462" y2="100" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1671" x1="0" y1="120" x2="462" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1672" x1="0" y1="140" x2="462" y2="140" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1673" x1="0" y1="160" x2="462" y2="160" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1674" x1="0" y1="180" x2="462" y2="180" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1675" x1="0" y1="200" x2="462" y2="200" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1664" class="apexcharts-gridlines-vertical" style="display: none;"></g>
                                                    <line id="SvgjsLine1677" x1="0" y1="200" x2="462" y2="200" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1676" x1="0" y1="1" x2="0" y2="200" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1628" class="apexcharts-area-series apexcharts-plot-series">
                                                    <g id="SvgjsG1629" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0">
                                                        <path id="SvgjsPath1632" d="M 0 200L 0 125C 26.95 125 50.05 87.5 77 87.5C 103.95 87.5 127.05 120 154 120C 180.95 120 204.04999999999998 25 230.99999999999997 25C 257.95 25 281.05 100 308 100C 334.95 100 358.05 100 385 100C 411.95 100 435.04999999999995 100 461.99999999999994 100C 461.99999999999994 100 461.99999999999994 100 461.99999999999994 200M 461.99999999999994 100z" fill="transparent" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask5wnk36d6h)" filter="url(#SvgjsFilter1633)" pathTo="M 0 200L 0 125C 26.95 125 50.05 87.5 77 87.5C 103.95 87.5 127.05 120 154 120C 180.95 120 204.04999999999998 25 230.99999999999997 25C 257.95 25 281.05 100 308 100C 334.95 100 358.05 100 385 100C 411.95 100 435.04999999999995 100 461.99999999999994 100C 461.99999999999994 100 461.99999999999994 100 461.99999999999994 200M 461.99999999999994 100z" pathFrom="M -1 200L -1 200L 77 200L 154 200L 230.99999999999997 200L 308 200L 385 200L 461.99999999999994 200"></path>
                                                        <path id="SvgjsPath1642" d="M 0 125C 26.95 125 50.05 87.5 77 87.5C 103.95 87.5 127.05 120 154 120C 180.95 120 204.04999999999998 25 230.99999999999997 25C 257.95 25 281.05 100 308 100C 334.95 100 358.05 100 385 100C 411.95 100 435.04999999999995 100 461.99999999999994 100" fill="none" fill-opacity="1" stroke="#d13647" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask5wnk36d6h)" filter="url(#SvgjsFilter1643)" pathTo="M 0 125C 26.95 125 50.05 87.5 77 87.5C 103.95 87.5 127.05 120 154 120C 180.95 120 204.04999999999998 25 230.99999999999997 25C 257.95 25 281.05 100 308 100C 334.95 100 358.05 100 385 100C 411.95 100 435.04999999999995 100 461.99999999999994 100" pathFrom="M -1 200L -1 200L 77 200L 154 200L 230.99999999999997 200L 308 200L 385 200L 461.99999999999994 200"></path>
                                                        <g id="SvgjsG1630" class="apexcharts-series-markers-wrap" data:realIndex="0">
                                                            <g class="apexcharts-series-markers">
                                                                <circle id="SvgjsCircle1683" r="0" cx="77" cy="87.5" class="apexcharts-marker wevxy3kn4 no-pointer-events" stroke="#d13647" fill="#ffe2e5" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1631" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                </g>
                                                <line id="SvgjsLine1678" x1="0" y1="0" x2="462" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1679" x1="0" y1="0" x2="462" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1680" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1681" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1682" class="apexcharts-point-annotations"></g>
                                            </g><g id="SvgjsG1661" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG1624" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 100px;"></div>
                                        <div class="apexcharts-tooltip apexcharts-theme-light" style="left: 88px; top: 90.5px;">
                                            <div class="apexcharts-tooltip-title" style="font-family: Poppins; font-size: 12px;">Mar</div>
                                            <div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: transparent; display: none;"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: Poppins; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label">Net Profit: </span><span class="apexcharts-tooltip-text-value">$45 thousands</span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                            <div class="apexcharts-yaxistooltip-text"></div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Chart-->
                                <!--begin::Stats-->
                                <div class="card-spacer mt-n25">
                                    <!--begin::Row-->
                                    <div class="row m-0">
                                        <div class="col bg-light-warning px-6 py-8 rounded-xl mr-7 mb-7">
                                            <span class="svg-icon svg-icon-3x svg-icon-warning d-block my-2">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Media/Equalizer.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5"></rect>
                                                        <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                                                        <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                                                        <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span><a href="#" class="text-warning font-weight-bold font-size-h6">Weekly Sales
                                            </a>
                                        </div>
                                        <div class="col bg-light-primary px-6 py-8 rounded-xl mb-7">
                                            <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Add-user.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                                        <path d="M18,8 L16,8 C15.4477153,8 15,7.55228475 15,7 C15,6.44771525 15.4477153,6 16,6 L18,6 L18,4 C18,3.44771525 18.4477153,3 19,3 C19.5522847,3 20,3.44771525 20,4 L20,6 L22,6 C22.5522847,6 23,6.44771525 23,7 C23,7.55228475 22.5522847,8 22,8 L20,8 L20,10 C20,10.5522847 19.5522847,11 19,11 C18.4477153,11 18,10.5522847 18,10 L18,8 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                        <path d="M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span><a href="#" class="text-primary font-weight-bold font-size-h6 mt-2">New Users
                                            </a>
                                        </div>
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="row m-0">
                                        <div class="col bg-light-danger px-6 py-8 rounded-xl mr-7">
                                            <span class="svg-icon svg-icon-3x svg-icon-danger d-block my-2">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Design/Layers.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                                        <path d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z" fill="#000000" fill-rule="nonzero"></path>
                                                        <path d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z" fill="#000000" opacity="0.3"></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span><a href="#" class="text-danger font-weight-bold font-size-h6 mt-2">Item Orders
                                            </a>
                                        </div>
                                        <div class="col bg-light-success px-6 py-8 rounded-xl">
                                            <span class="svg-icon svg-icon-3x svg-icon-success d-block my-2">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Urgent-mail.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <path d="M12.7037037,14 L15.6666667,10 L13.4444444,10 L13.4444444,6 L9,12 L11.2222222,12 L11.2222222,14 L6,14 C5.44771525,14 5,13.5522847 5,13 L5,3 C5,2.44771525 5.44771525,2 6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,13 C19,13.5522847 18.5522847,14 18,14 L12.7037037,14 Z" fill="#000000" opacity="0.3"></path>
                                                        <path d="M9.80428954,10.9142091 L9,12 L11.2222222,12 L11.2222222,16 L15.6666667,10 L15.4615385,10 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 L9.80428954,10.9142091 Z" fill="#000000"></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span><a href="#" class="text-success font-weight-bold font-size-h6 mt-2">Bug Reports
                                            </a>
                                        </div>
                                    </div>
                                    <!--end::Row-->
                                </div>
                                <!--end::Stats-->
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 463px; height: 448px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Mixed Widget 1-->
                    </div>
                    <div class="col-lg-6 col-xxl-4">

                        <!--begin::List Widget 9-->
                        <div class="card card-custom card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header align-items-center border-0 mt-4">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="font-weight-bolder text-dark">My Activity</span>
                                    <span class="text-muted mt-3 font-weight-bold font-size-sm">890,344 Sales</span>
                                </h3>
                                <div class="card-toolbar">
                                    <div class="dropdown dropdown-inline">
                                        <a href="#" class="btn btn-clean btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-4">
                                <!--begin::Timeline-->
                                <div class="timeline timeline-6 mt-3">
                                    <!--begin::Item-->
                                    <div class="timeline-item align-items-start">
                                        <!--begin::Label-->
                                        <div class="timeline-label font-weight-bolder text-dark-75 font-size-lg">08:42</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-warning icon-xl"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Text-->
                                        <div class="font-weight-mormal font-size-lg timeline-content text-muted pl-3">
                                            Outlines keep you honest. And keep structure
                                        </div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item align-items-start">
                                        <!--begin::Label-->
                                        <div class="timeline-label font-weight-bolder text-dark-75 font-size-lg">10:00</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-success icon-xl"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Content-->
                                        <div class="timeline-content d-flex">
                                            <span class="font-weight-bolder text-dark-75 pl-3 font-size-lg">AEOL meeting</span>
                                        </div>
                                        <!--end::Content-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item align-items-start">
                                        <!--begin::Label-->
                                        <div class="timeline-label font-weight-bolder text-dark-75 font-size-lg">14:37</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-danger icon-xl"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Desc-->
                                        <div class="timeline-content font-weight-bolder font-size-lg text-dark-75 pl-3">
                                            Make deposit
                                            <a href="#" class="text-primary">USD 700</a>.
                                            to ESL
                                        </div>
                                        <!--end::Desc-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item align-items-start">
                                        <!--begin::Label-->
                                        <div class="timeline-label font-weight-bolder text-dark-75 font-size-lg">16:50</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-primary icon-xl"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Text-->
                                        <div class="timeline-content font-weight-mormal font-size-lg text-muted pl-3">
                                            Indulging in poorly driving and keep structure keep great
                                        </div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item align-items-start">
                                        <!--begin::Label-->
                                        <div class="timeline-label font-weight-bolder text-dark-75 font-size-lg">21:03</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-danger icon-xl"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Desc-->
                                        <div class="timeline-content font-weight-bolder text-dark-75 pl-3 font-size-lg">
                                            New order placed <a href="#" class="text-primary">#XF-2356</a>.
                                        </div>
                                        <!--end::Desc-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item align-items-start">
                                        <!--begin::Label-->
                                        <div class="timeline-label font-weight-bolder text-dark-75 font-size-lg">23:07</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-info icon-xl"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Text-->
                                        <div class="timeline-content font-weight-mormal font-size-lg text-muted pl-3">
                                            Outlines keep and you honest. Indulging in poorly driving
                                        </div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item align-items-start">
                                        <!--begin::Label-->
                                        <div class="timeline-label font-weight-bolder text-dark-75 font-size-lg">16:50</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-primary icon-xl"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Text-->
                                        <div class="timeline-content font-weight-mormal font-size-lg text-muted pl-3">
                                            Indulging in poorly driving and keep structure keep great
                                        </div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item align-items-start">
                                        <!--begin::Label-->
                                        <div class="timeline-label font-weight-bolder text-dark-75 font-size-lg">21:03</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-danger icon-xl"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Desc-->
                                        <div class="timeline-content font-weight-bolder font-size-lg text-dark-75 pl-3">
                                            New order placed <a href="#" class="text-primary">#XF-2356</a>.
                                        </div>
                                        <!--end::Desc-->
                                    </div>
                                    <!--end::Item-->
                                </div>
                                <!--end::Timeline-->
                            </div>
                            <!--end: Card Body-->
                        </div>
                        <!--end: List Widget 9-->
                    </div>
                    <div class="col-lg-6 col-xxl-4">
                        <!--begin::Stats Widget 11-->
                        <div class="card card-custom card-stretch card-stretch-half gutter-b">
                            <!--begin::Body-->
                            <div class="card-body p-0" style="position: relative;">
                                <div class="d-flex align-items-center justify-content-between card-spacer flex-grow-1">
                                    <span class="symbol  symbol-50 symbol-light-success mr-2">
                                        <span class="symbol-label">
                                            <span class="svg-icon svg-icon-xl svg-icon-success">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Layout/Layout-4-blocks.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <rect fill="#000000" x="4" y="4" width="7" height="7" rx="1.5"></rect>
                                                        <path d="M5.5,13 L9.5,13 C10.3284271,13 11,13.6715729 11,14.5 L11,18.5 C11,19.3284271 10.3284271,20 9.5,20 L5.5,20 C4.67157288,20 4,19.3284271 4,18.5 L4,14.5 C4,13.6715729 4.67157288,13 5.5,13 Z M14.5,4 L18.5,4 C19.3284271,4 20,4.67157288 20,5.5 L20,9.5 C20,10.3284271 19.3284271,11 18.5,11 L14.5,11 C13.6715729,11 13,10.3284271 13,9.5 L13,5.5 C13,4.67157288 13.6715729,4 14.5,4 Z M14.5,13 L18.5,13 C19.3284271,13 20,13.6715729 20,14.5 L20,18.5 C20,19.3284271 19.3284271,20 18.5,20 L14.5,20 C13.6715729,20 13,19.3284271 13,18.5 L13,14.5 C13,13.6715729 13.6715729,13 14.5,13 Z" fill="#000000" opacity="0.3"></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span>
                                        </span>
                                    </span>
                                    <div class="d-flex flex-column text-right">
                                        <span class="text-dark-75 font-weight-bolder font-size-h3">750$</span>
                                        <span class="text-muted font-weight-bold mt-2">Weekly Income</span>
                                    </div>
                                </div>
                                <div id="kt_stats_widget_11_chart" class="card-rounded-bottom" data-color="success" style="height: 150px; min-height: 150px;">
                                    <div id="apexchartsawfzohou" class="apexcharts-canvas apexchartsawfzohou apexcharts-theme-light" style="width: 462px; height: 150px;">
                                        <svg id="SvgjsSvg1529" width="462" height="150" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <g id="SvgjsG1531" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)">
                                                <defs id="SvgjsDefs1530">
                                                    <clipPath id="gridRectMaskawfzohou">
                                                        <rect id="SvgjsRect1534" width="469" height="153" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="gridRectMarkerMaskawfzohou">
                                                        <rect id="SvgjsRect1535" width="466" height="154" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                </defs>
                                                <g id="SvgjsG1542" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1543" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g>
                                                </g>
                                                <g id="SvgjsG1552" class="apexcharts-grid">
                                                    <g id="SvgjsG1553" class="apexcharts-gridlines-horizontal" style="display: none;">
                                                        <line id="SvgjsLine1555" x1="0" y1="0" x2="462" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1556" x1="0" y1="15" x2="462" y2="15" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1557" x1="0" y1="30" x2="462" y2="30" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1558" x1="0" y1="45" x2="462" y2="45" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1559" x1="0" y1="60" x2="462" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1560" x1="0" y1="75" x2="462" y2="75" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1561" x1="0" y1="90" x2="462" y2="90" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1562" x1="0" y1="105" x2="462" y2="105" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1563" x1="0" y1="120" x2="462" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1564" x1="0" y1="135" x2="462" y2="135" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1565" x1="0" y1="150" x2="462" y2="150" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1554" class="apexcharts-gridlines-vertical" style="display: none;"></g>
                                                    <line id="SvgjsLine1567" x1="0" y1="150" x2="462" y2="150" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1566" x1="0" y1="1" x2="0" y2="150" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1536" class="apexcharts-area-series apexcharts-plot-series">
                                                    <g id="SvgjsG1537" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0">
                                                        <path id="SvgjsPath1540" d="M 0 150L 0 40.90909090909091C 26.95 40.90909090909091 50.05 40.90909090909091 77 40.90909090909091C 103.95 40.90909090909091 127.05 68.18181818181817 154 68.18181818181817C 180.95 68.18181818181817 204.04999999999998 68.18181818181817 230.99999999999997 68.18181818181817C 257.95 68.18181818181817 281.05 54.54545454545453 308 54.54545454545453C 334.95 54.54545454545453 358.05 54.54545454545453 385 54.54545454545453C 411.95 54.54545454545453 435.04999999999995 13.636363636363626 461.99999999999994 13.636363636363626C 461.99999999999994 13.636363636363626 461.99999999999994 13.636363636363626 461.99999999999994 150M 461.99999999999994 13.636363636363626z" fill="rgba(201,247,245,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskawfzohou)" pathTo="M 0 150L 0 40.90909090909091C 26.95 40.90909090909091 50.05 40.90909090909091 77 40.90909090909091C 103.95 40.90909090909091 127.05 68.18181818181817 154 68.18181818181817C 180.95 68.18181818181817 204.04999999999998 68.18181818181817 230.99999999999997 68.18181818181817C 257.95 68.18181818181817 281.05 54.54545454545453 308 54.54545454545453C 334.95 54.54545454545453 358.05 54.54545454545453 385 54.54545454545453C 411.95 54.54545454545453 435.04999999999995 13.636363636363626 461.99999999999994 13.636363636363626C 461.99999999999994 13.636363636363626 461.99999999999994 13.636363636363626 461.99999999999994 150M 461.99999999999994 13.636363636363626z" pathFrom="M -1 150L -1 150L 77 150L 154 150L 230.99999999999997 150L 308 150L 385 150L 461.99999999999994 150"></path>
                                                        <path id="SvgjsPath1541" d="M 0 40.90909090909091C 26.95 40.90909090909091 50.05 40.90909090909091 77 40.90909090909091C 103.95 40.90909090909091 127.05 68.18181818181817 154 68.18181818181817C 180.95 68.18181818181817 204.04999999999998 68.18181818181817 230.99999999999997 68.18181818181817C 257.95 68.18181818181817 281.05 54.54545454545453 308 54.54545454545453C 334.95 54.54545454545453 358.05 54.54545454545453 385 54.54545454545453C 411.95 54.54545454545453 435.04999999999995 13.636363636363626 461.99999999999994 13.636363636363626" fill="none" fill-opacity="1" stroke="#1bc5bd" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskawfzohou)" pathTo="M 0 40.90909090909091C 26.95 40.90909090909091 50.05 40.90909090909091 77 40.90909090909091C 103.95 40.90909090909091 127.05 68.18181818181817 154 68.18181818181817C 180.95 68.18181818181817 204.04999999999998 68.18181818181817 230.99999999999997 68.18181818181817C 257.95 68.18181818181817 281.05 54.54545454545453 308 54.54545454545453C 334.95 54.54545454545453 358.05 54.54545454545453 385 54.54545454545453C 411.95 54.54545454545453 435.04999999999995 13.636363636363626 461.99999999999994 13.636363636363626" pathFrom="M -1 150L -1 150L 77 150L 154 150L 230.99999999999997 150L 308 150L 385 150L 461.99999999999994 150"></path>
                                                        <g id="SvgjsG1538" class="apexcharts-series-markers-wrap" data:realIndex="0">
                                                            <g class="apexcharts-series-markers">
                                                                <circle id="SvgjsCircle1573" r="0" cx="0" cy="0" class="apexcharts-marker wop592te9k no-pointer-events" stroke="#1bc5bd" fill="#c9f7f5" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1539" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                </g>
                                                <line id="SvgjsLine1568" x1="0" y1="0" x2="462" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1569" x1="0" y1="0" x2="462" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1570" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1571" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1572" class="apexcharts-point-annotations"></g>
                                            </g><g id="SvgjsG1551" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG1532" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 75px;"></div>
                                        <div class="apexcharts-tooltip apexcharts-theme-light">
                                            <div class="apexcharts-tooltip-title" style="font-family: Poppins; font-size: 12px;"></div>
                                            <div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(201, 247, 245);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: Poppins; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                            <div class="apexcharts-xaxistooltip-text" style="font-family: Poppins; font-size: 12px;"></div>
                                        </div>
                                        <div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                            <div class="apexcharts-yaxistooltip-text"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 463px; height: 258px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Stats Widget 11-->
                        <!--begin::Stats Widget 12-->
                        <div class="card card-custom card-stretch card-stretch-half gutter-b">
                            <!--begin::Body-->
                            <div class="card-body p-0" style="position: relative;">
                                <div class="d-flex align-items-center justify-content-between card-spacer flex-grow-1">
                                    <span class="symbol  symbol-50 symbol-light-primary mr-2">
                                        <span class="symbol-label">
                                            <span class="svg-icon svg-icon-xl svg-icon-primary">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Group.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                                        <path d="M18,14 C16.3431458,14 15,12.6568542 15,11 C15,9.34314575 16.3431458,8 18,8 C19.6568542,8 21,9.34314575 21,11 C21,12.6568542 19.6568542,14 18,14 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                        <path d="M17.6011961,15.0006174 C21.0077043,15.0378534 23.7891749,16.7601418 23.9984937,20.4 C24.0069246,20.5466056 23.9984937,21 23.4559499,21 L19.6,21 C19.6,18.7490654 18.8562935,16.6718327 17.6011961,15.0006174 Z M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span>
                                        </span>
                                    </span>
                                    <div class="d-flex flex-column text-right">
                                        <span class="text-dark-75 font-weight-bolder font-size-h3">+6,5K</span>
                                        <span class="text-muted font-weight-bold mt-2">New Users</span>
                                    </div>
                                </div>
                                <div id="kt_stats_widget_12_chart" class="card-rounded-bottom" data-color="primary" style="height: 150px; min-height: 150px;">
                                    <div id="apexchartsdlhwtmci" class="apexcharts-canvas apexchartsdlhwtmci apexcharts-theme-light" style="width: 462px; height: 150px;">
                                        <svg id="SvgjsSvg1575" width="462" height="150" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <g id="SvgjsG1577" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)">
                                                <defs id="SvgjsDefs1576">
                                                    <clipPath id="gridRectMaskdlhwtmci">
                                                        <rect id="SvgjsRect1580" width="469" height="153" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="gridRectMarkerMaskdlhwtmci">
                                                        <rect id="SvgjsRect1581" width="466" height="154" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                </defs>
                                                <g id="SvgjsG1588" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1589" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g>
                                                </g>
                                                <g id="SvgjsG1598" class="apexcharts-grid">
                                                    <g id="SvgjsG1599" class="apexcharts-gridlines-horizontal" style="display: none;">
                                                        <line id="SvgjsLine1601" x1="0" y1="0" x2="462" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1602" x1="0" y1="15" x2="462" y2="15" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1603" x1="0" y1="30" x2="462" y2="30" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1604" x1="0" y1="45" x2="462" y2="45" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1605" x1="0" y1="60" x2="462" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1606" x1="0" y1="75" x2="462" y2="75" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1607" x1="0" y1="90" x2="462" y2="90" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1608" x1="0" y1="105" x2="462" y2="105" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1609" x1="0" y1="120" x2="462" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1610" x1="0" y1="135" x2="462" y2="135" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1611" x1="0" y1="150" x2="462" y2="150" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1600" class="apexcharts-gridlines-vertical" style="display: none;"></g>
                                                    <line id="SvgjsLine1613" x1="0" y1="150" x2="462" y2="150" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1612" x1="0" y1="1" x2="0" y2="150" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1582" class="apexcharts-area-series apexcharts-plot-series">
                                                    <g id="SvgjsG1583" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0">
                                                        <path id="SvgjsPath1586" d="M 0 150L 0 40.90909090909091C 26.95 40.90909090909091 50.05 40.90909090909091 77 40.90909090909091C 103.95 40.90909090909091 127.05 68.18181818181817 154 68.18181818181817C 180.95 68.18181818181817 204.04999999999998 68.18181818181817 230.99999999999997 68.18181818181817C 257.95 68.18181818181817 281.05 54.54545454545453 308 54.54545454545453C 334.95 54.54545454545453 358.05 54.54545454545453 385 54.54545454545453C 411.95 54.54545454545453 435.04999999999995 13.636363636363626 461.99999999999994 13.636363636363626C 461.99999999999994 13.636363636363626 461.99999999999994 13.636363636363626 461.99999999999994 150M 461.99999999999994 13.636363636363626z" fill="rgba(225,240,255,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskdlhwtmci)" pathTo="M 0 150L 0 40.90909090909091C 26.95 40.90909090909091 50.05 40.90909090909091 77 40.90909090909091C 103.95 40.90909090909091 127.05 68.18181818181817 154 68.18181818181817C 180.95 68.18181818181817 204.04999999999998 68.18181818181817 230.99999999999997 68.18181818181817C 257.95 68.18181818181817 281.05 54.54545454545453 308 54.54545454545453C 334.95 54.54545454545453 358.05 54.54545454545453 385 54.54545454545453C 411.95 54.54545454545453 435.04999999999995 13.636363636363626 461.99999999999994 13.636363636363626C 461.99999999999994 13.636363636363626 461.99999999999994 13.636363636363626 461.99999999999994 150M 461.99999999999994 13.636363636363626z" pathFrom="M -1 150L -1 150L 77 150L 154 150L 230.99999999999997 150L 308 150L 385 150L 461.99999999999994 150"></path>
                                                        <path id="SvgjsPath1587" d="M 0 40.90909090909091C 26.95 40.90909090909091 50.05 40.90909090909091 77 40.90909090909091C 103.95 40.90909090909091 127.05 68.18181818181817 154 68.18181818181817C 180.95 68.18181818181817 204.04999999999998 68.18181818181817 230.99999999999997 68.18181818181817C 257.95 68.18181818181817 281.05 54.54545454545453 308 54.54545454545453C 334.95 54.54545454545453 358.05 54.54545454545453 385 54.54545454545453C 411.95 54.54545454545453 435.04999999999995 13.636363636363626 461.99999999999994 13.636363636363626" fill="none" fill-opacity="1" stroke="#3699ff" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskdlhwtmci)" pathTo="M 0 40.90909090909091C 26.95 40.90909090909091 50.05 40.90909090909091 77 40.90909090909091C 103.95 40.90909090909091 127.05 68.18181818181817 154 68.18181818181817C 180.95 68.18181818181817 204.04999999999998 68.18181818181817 230.99999999999997 68.18181818181817C 257.95 68.18181818181817 281.05 54.54545454545453 308 54.54545454545453C 334.95 54.54545454545453 358.05 54.54545454545453 385 54.54545454545453C 411.95 54.54545454545453 435.04999999999995 13.636363636363626 461.99999999999994 13.636363636363626" pathFrom="M -1 150L -1 150L 77 150L 154 150L 230.99999999999997 150L 308 150L 385 150L 461.99999999999994 150"></path>
                                                        <g id="SvgjsG1584" class="apexcharts-series-markers-wrap" data:realIndex="0">
                                                            <g class="apexcharts-series-markers">
                                                                <circle id="SvgjsCircle1619" r="0" cx="0" cy="0" class="apexcharts-marker wn0bu8542 no-pointer-events" stroke="#3699ff" fill="#e1f0ff" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1585" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                </g>
                                                <line id="SvgjsLine1614" x1="0" y1="0" x2="462" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1615" x1="0" y1="0" x2="462" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1616" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1617" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1618" class="apexcharts-point-annotations"></g>
                                            </g><g id="SvgjsG1597" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG1578" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 75px;"></div>
                                        <div class="apexcharts-tooltip apexcharts-theme-light">
                                            <div class="apexcharts-tooltip-title" style="font-family: Poppins; font-size: 12px;"></div>
                                            <div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(225, 240, 255);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: Poppins; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                            <div class="apexcharts-xaxistooltip-text" style="font-family: Poppins; font-size: 12px;"></div>
                                        </div>
                                        <div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                            <div class="apexcharts-yaxistooltip-text"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 463px; height: 258px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Stats Widget 12-->
                    </div>

                    <div class="col-lg-6 col-xxl-4 order-1 order-xxl-1">
                        <!--begin::List Widget 1-->
                        <div class="card card-custom card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header border-0 pt-5">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="card-label font-weight-bolder text-dark">Tasks Overview</span>
                                    <span class="text-muted mt-3 font-weight-bold font-size-sm">Pending 10 tasks</span>
                                </h3>
                                <div class="card-toolbar">
                                    <div class="dropdown dropdown-inline" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-clean btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover py-5">
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-drop"></i></span>
                                                        <span class="navi-text">New Group</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-list-3"></i></span>
                                                        <span class="navi-text">Contacts</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-rocket-1"></i></span>
                                                        <span class="navi-text">Groups</span>
                                                        <span class="navi-link-badge">
                                                            <span class="label label-light-primary label-inline font-weight-bold">new</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-bell-2"></i></span>
                                                        <span class="navi-text">Calls</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-gear"></i></span>
                                                        <span class="navi-text">Settings</span>
                                                    </a>
                                                </li>

                                                <li class="navi-separator my-3"></li>

                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-magnifier-tool"></i></span>
                                                        <span class="navi-text">Help</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-bell-2"></i></span>
                                                        <span class="navi-text">Privacy</span>
                                                        <span class="navi-link-badge">
                                                            <span class="label label-light-danger label-rounded font-weight-bold">5</span>
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-8">
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-10">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-primary mr-5">
                                        <span class="symbol-label">
                                            <span class="svg-icon svg-icon-xl svg-icon-primary">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Home/Library.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <path d="M5,3 L6,3 C6.55228475,3 7,3.44771525 7,4 L7,20 C7,20.5522847 6.55228475,21 6,21 L5,21 C4.44771525,21 4,20.5522847 4,20 L4,4 C4,3.44771525 4.44771525,3 5,3 Z M10,3 L11,3 C11.5522847,3 12,3.44771525 12,4 L12,20 C12,20.5522847 11.5522847,21 11,21 L10,21 C9.44771525,21 9,20.5522847 9,20 L9,4 C9,3.44771525 9.44771525,3 10,3 Z" fill="#000000"></path>
                                                        <rect fill="#000000" opacity="0.3" transform="translate(17.825568, 11.945519) rotate(-19.000000) translate(-17.825568, -11.945519) " x="16.3255682" y="2.94551858" width="3" height="18" rx="1"></rect>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span>
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Project Briefing</a>
                                        <span class="text-muted">Project Manager</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-10">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-warning mr-5">
                                        <span class="symbol-label">
                                            <span class="svg-icon svg-icon-lg svg-icon-warning">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                        <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span>
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column font-weight-bold">
                                        <a href="#" class="text-dark-75 text-hover-primary mb-1 font-size-lg">Concept Design</a>
                                        <span class="text-muted">Art Director</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-10">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-success mr-5">
                                        <span class="symbol-label">
                                            <span class="svg-icon svg-icon-lg svg-icon-success">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Group-chat.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z" fill="#000000"></path>
                                                        <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z" fill="#000000" opacity="0.3"></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span>
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Functional Logics</a>
                                        <span class="text-muted">Lead Developer</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-10">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-danger mr-5">
                                        <span class="symbol-label">
                                            <span class="svg-icon svg-icon-lg svg-icon-danger">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Attachment2.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <path d="M11.7573593,15.2426407 L8.75735931,15.2426407 C8.20507456,15.2426407 7.75735931,15.6903559 7.75735931,16.2426407 C7.75735931,16.7949254 8.20507456,17.2426407 8.75735931,17.2426407 L11.7573593,17.2426407 L11.7573593,18.2426407 C11.7573593,19.3472102 10.8619288,20.2426407 9.75735931,20.2426407 L5.75735931,20.2426407 C4.65278981,20.2426407 3.75735931,19.3472102 3.75735931,18.2426407 L3.75735931,14.2426407 C3.75735931,13.1380712 4.65278981,12.2426407 5.75735931,12.2426407 L9.75735931,12.2426407 C10.8619288,12.2426407 11.7573593,13.1380712 11.7573593,14.2426407 L11.7573593,15.2426407 Z" fill="#000000" opacity="0.3" transform="translate(7.757359, 16.242641) rotate(-45.000000) translate(-7.757359, -16.242641) "></path>
                                                        <path d="M12.2426407,8.75735931 L15.2426407,8.75735931 C15.7949254,8.75735931 16.2426407,8.30964406 16.2426407,7.75735931 C16.2426407,7.20507456 15.7949254,6.75735931 15.2426407,6.75735931 L12.2426407,6.75735931 L12.2426407,5.75735931 C12.2426407,4.65278981 13.1380712,3.75735931 14.2426407,3.75735931 L18.2426407,3.75735931 C19.3472102,3.75735931 20.2426407,4.65278981 20.2426407,5.75735931 L20.2426407,9.75735931 C20.2426407,10.8619288 19.3472102,11.7573593 18.2426407,11.7573593 L14.2426407,11.7573593 C13.1380712,11.7573593 12.2426407,10.8619288 12.2426407,9.75735931 L12.2426407,8.75735931 Z" fill="#000000" transform="translate(16.242641, 7.757359) rotate(-45.000000) translate(-16.242641, -7.757359) "></path>
                                                        <path d="M5.89339828,3.42893219 C6.44568303,3.42893219 6.89339828,3.87664744 6.89339828,4.42893219 L6.89339828,6.42893219 C6.89339828,6.98121694 6.44568303,7.42893219 5.89339828,7.42893219 C5.34111353,7.42893219 4.89339828,6.98121694 4.89339828,6.42893219 L4.89339828,4.42893219 C4.89339828,3.87664744 5.34111353,3.42893219 5.89339828,3.42893219 Z M11.4289322,5.13603897 C11.8194565,5.52656326 11.8194565,6.15972824 11.4289322,6.55025253 L10.0147186,7.96446609 C9.62419433,8.35499039 8.99102936,8.35499039 8.60050506,7.96446609 C8.20998077,7.5739418 8.20998077,6.94077682 8.60050506,6.55025253 L10.0147186,5.13603897 C10.4052429,4.74551468 11.0384079,4.74551468 11.4289322,5.13603897 Z M0.600505063,5.13603897 C0.991029355,4.74551468 1.62419433,4.74551468 2.01471863,5.13603897 L3.42893219,6.55025253 C3.81945648,6.94077682 3.81945648,7.5739418 3.42893219,7.96446609 C3.0384079,8.35499039 2.40524292,8.35499039 2.01471863,7.96446609 L0.600505063,6.55025253 C0.209980772,6.15972824 0.209980772,5.52656326 0.600505063,5.13603897 Z" fill="#000000" opacity="0.3" transform="translate(6.014719, 5.843146) rotate(-45.000000) translate(-6.014719, -5.843146) "></path>
                                                        <path d="M17.9142136,15.4497475 C18.4664983,15.4497475 18.9142136,15.8974627 18.9142136,16.4497475 L18.9142136,18.4497475 C18.9142136,19.0020322 18.4664983,19.4497475 17.9142136,19.4497475 C17.3619288,19.4497475 16.9142136,19.0020322 16.9142136,18.4497475 L16.9142136,16.4497475 C16.9142136,15.8974627 17.3619288,15.4497475 17.9142136,15.4497475 Z M23.4497475,17.1568542 C23.8402718,17.5473785 23.8402718,18.1805435 23.4497475,18.5710678 L22.0355339,19.9852814 C21.6450096,20.3758057 21.0118446,20.3758057 20.6213203,19.9852814 C20.2307961,19.5947571 20.2307961,18.9615921 20.6213203,18.5710678 L22.0355339,17.1568542 C22.4260582,16.76633 23.0592232,16.76633 23.4497475,17.1568542 Z M12.6213203,17.1568542 C13.0118446,16.76633 13.6450096,16.76633 14.0355339,17.1568542 L15.4497475,18.5710678 C15.8402718,18.9615921 15.8402718,19.5947571 15.4497475,19.9852814 C15.0592232,20.3758057 14.4260582,20.3758057 14.0355339,19.9852814 L12.6213203,18.5710678 C12.2307961,18.1805435 12.2307961,17.5473785 12.6213203,17.1568542 Z" fill="#000000" opacity="0.3" transform="translate(18.035534, 17.863961) scale(1, -1) rotate(45.000000) translate(-18.035534, -17.863961) "></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span>
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Development</a>
                                        <span class="text-muted">DevOps</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-2">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-info mr-5">
                                        <span class="symbol-label">
                                            <span class="svg-icon svg-icon-lg  svg-icon-info">
                                                <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Shield-user.svg-->
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <path d="M4,4 L11.6314229,2.5691082 C11.8750185,2.52343403 12.1249815,2.52343403 12.3685771,2.5691082 L20,4 L20,13.2830094 C20,16.2173861 18.4883464,18.9447835 16,20.5 L12.5299989,22.6687507 C12.2057287,22.8714196 11.7942713,22.8714196 11.4700011,22.6687507 L8,20.5 C5.51165358,18.9447835 4,16.2173861 4,13.2830094 L4,4 Z" fill="#000000" opacity="0.3"></path>
                                                        <path d="M12,11 C10.8954305,11 10,10.1045695 10,9 C10,7.8954305 10.8954305,7 12,7 C13.1045695,7 14,7.8954305 14,9 C14,10.1045695 13.1045695,11 12,11 Z" fill="#000000" opacity="0.3"></path>
                                                        <path d="M7.00036205,16.4995035 C7.21569918,13.5165724 9.36772908,12 11.9907452,12 C14.6506758,12 16.8360465,13.4332455 16.9988413,16.5 C17.0053266,16.6221713 16.9988413,17 16.5815,17 C14.5228466,17 11.463736,17 7.4041679,17 C7.26484009,17 6.98863236,16.6619875 7.00036205,16.4995035 Z" fill="#000000" opacity="0.3"></path>
                                                    </g>
                                                </svg><!--end::Svg Icon-->
                                            </span>
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Testing</a>
                                        <span class="text-muted">QA Managers</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::List Widget 1-->
                    </div>
                    <div class="col-xxl-8 order-2 order-xxl-1">
                        <!--begin::Advance Table Widget 2-->
                        <div class="card card-custom card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header border-0 pt-5">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="card-label font-weight-bolder text-dark">New Arrivals</span>
                                    <span class="text-muted mt-3 font-weight-bold font-size-sm">More than 400+ new members</span>
                                </h3>
                                <div class="card-toolbar">
                                    <ul class="nav nav-pills nav-pills-sm nav-dark-75">
                                        <li class="nav-item">
                                            <a class="nav-link py-2 px-4" data-toggle="tab" href="#kt_tab_pane_11_1">Month</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link py-2 px-4" data-toggle="tab" href="#kt_tab_pane_11_2">Week</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link py-2 px-4 active" data-toggle="tab" href="#kt_tab_pane_11_3">Day</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-2 pb-0 mt-n3">
                                <div class="tab-content mt-5" id="myTabTables11">
                                    <!--begin::Tap pane-->
                                    <div class="tab-pane fade" id="kt_tab_pane_11_1" role="tabpanel" aria-labelledby="kt_tab_pane_11_1">
                                        <!--begin::Table-->
                                        <div class="table-responsive">
                                            <table class="table table-borderless table-vertical-center">
                                                <thead>
                                                    <tr>
                                                        <th class="p-0 w-40px"></th>
                                                        <th class="p-0 min-w-200px"></th>
                                                        <th class="p-0 min-w-100px"></th>
                                                        <th class="p-0 min-w-125px"></th>
                                                        <th class="p-0 min-w-110px"></th>
                                                        <th class="p-0 min-w-150px"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/003-puzzle.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Payrol Application</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">company@dev.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$560,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">Laravel, Metronic
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-success label-inline">Success</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/005-bebo.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">HR Management System</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">hr@demo.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$57,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-bold">AngularJS, C#
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-danger label-inline">Rejected</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/014-kickstarter.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">KTR Mobile Application</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">ktr@demo.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$45,200,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">ReactJS, Ruby
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-warning label-inline">In Progress</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light mr-1">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/006-plurk.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Sant Outstanding</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">bprow@bnc.cc</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$2,000,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">ReactJs, HTML
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-primary label-inline">Approved</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/015-telegram.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Application Development</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">app@dev.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$4,600,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">Python, MySQL
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-warning label-inline">In Progress</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!--end::Table-->
                                    </div>
                                    <!--end::Tap pane-->
                                    <!--begin::Tap pane-->
                                    <div class="tab-pane fade" id="kt_tab_pane_11_2" role="tabpanel" aria-labelledby="kt_tab_pane_11_2">
                                        <!--begin::Table-->
                                        <div class="table-responsive">
                                            <table class="table table-borderless table-vertical-center">
                                                <thead>
                                                    <tr>
                                                        <th class="p-0 w-40px"></th>
                                                        <th class="p-0 min-w-200px"></th>
                                                        <th class="p-0 min-w-100px"></th>
                                                        <th class="p-0 min-w-125px"></th>
                                                        <th class="p-0 min-w-110px"></th>
                                                        <th class="p-0 min-w-150px"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/015-telegram.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Application Development</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">app@dev.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$4,600,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">Python, MySQL
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-warning label-inline">In Progress</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/003-puzzle.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Payrol Application</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">company@dev.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$560,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">Laravel, Metronic
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-success label-inline">Success</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/005-bebo.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">HR Management System</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">hr@demo.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$57,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-bold">AngularJS, C#
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-danger label-inline">Rejected</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light mr-1">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/006-plurk.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Sant Outstanding</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">bprow@bnc.cc</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$2,000,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">ReactJs, HTML
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-primary label-inline">Approved</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/014-kickstarter.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">KTR Mobile Application</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">ktr@demo.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$45,200,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">ReactJS, Ruby
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-warning label-inline">In Progress</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!--end::Table-->
                                    </div>
                                    <!--end::Tap pane-->
                                    <!--begin::Tap pane-->
                                    <div class="tab-pane fade show active" id="kt_tab_pane_11_3" role="tabpanel" aria-labelledby="kt_tab_pane_11_3">
                                        <!--begin::Table-->
                                        <div class="table-responsive">
                                            <table class="table table-borderless table-vertical-center">
                                                <thead>
                                                    <tr>
                                                        <th class="p-0 w-40px"></th>
                                                        <th class="p-0 min-w-200px"></th>
                                                        <th class="p-0 min-w-100px"></th>
                                                        <th class="p-0 min-w-125px"></th>
                                                        <th class="p-0 min-w-110px"></th>
                                                        <th class="p-0 min-w-150px"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light mr-1">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/006-plurk.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Sant Outstanding</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">bprow@bnc.cc</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$2,000,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">ReactJs, HTML
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-primary label-inline">Approved</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/015-telegram.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Application Development</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">app@dev.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$4,600,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">Python, MySQL
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-warning label-inline">In Progress</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/003-puzzle.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Payrol Application</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">company@dev.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$560,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">Laravel, Metronic
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-success label-inline">Success</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/005-bebo.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">HR Management System</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">hr@demo.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$57,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-bold">AngularJS, C#
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-danger label-inline">Rejected</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="pl-0 py-4">
                                                            <div class="symbol symbol-50 symbol-light">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/misc/014-kickstarter.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="pl-0">
                                                            <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">KTR Mobile Application</a>
                                                            <div>
                                                                <span class="font-weight-bolder">Email:</span>
                                                                <a class="text-muted font-weight-bold text-hover-primary" href="#">ktr@demo.com</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$45,200,000
                                                            </span>
                                                            <span class="text-muted font-weight-bold">Paid
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="text-muted font-weight-500">ReactJS, Ruby
                                                            </span>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="label label-lg label-light-warning label-inline">In Progress</span>
                                                        </td>
                                                        <td class="text-right pr-0">
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Settings-1.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000"></path>
                                                                            <path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm mx-3">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Write.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "></path>
                                                                            <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                            <a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                                <span class="svg-icon svg-icon-md svg-icon-primary">
                                                                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Trash.svg-->
                                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                            <rect x="0" y="0" width="24" height="24"></rect>
                                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                        </g>
                                                                    </svg><!--end::Svg Icon-->
                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!--end::Table-->
                                    </div>
                                    <!--end::Tap pane-->
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Advance Table Widget 2-->
                    </div>

                    <div class="col-lg-6 col-xxl-4 order-1 order-xxl-2">
                        <!--begin::List Widget 3-->
                        <div class="card card-custom card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header border-0">
                                <h3 class="card-title font-weight-bolder text-dark">Authors</h3>
                                <div class="card-toolbar">
                                    <div class="dropdown dropdown-inline">
                                        <a href="#" class="btn btn-light-primary btn-sm font-weight-bolder dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">August
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header pb-1">
                                                    <span class="text-primary text-uppercase font-weight-bold font-size-sm">Add new:</span>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-shopping-cart-1"></i></span>
                                                        <span class="navi-text">Order</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-calendar-8"></i></span>
                                                        <span class="navi-text">Event</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-graph-1"></i></span>
                                                        <span class="navi-text">Report</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-rocket-1"></i></span>
                                                        <span class="navi-text">Post</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-writing"></i></span>
                                                        <span class="navi-text">File</span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-2">
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-10">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-success mr-5">
                                        <span class="symbol-label">
                                            <img src="/assets/media/svg/avatars/009-boy-4.svg" class="h-75 align-self-end" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1 font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Ricky Hunt</a>
                                        <span class="text-muted">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-10">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-success mr-5">
                                        <span class="symbol-label">
                                            <img src="/assets/media/svg/avatars/006-girl-3.svg" class="h-75 align-self-end" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1 font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Anne Clarc</a>
                                        <span class="text-muted">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-10">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-success mr-5">
                                        <span class="symbol-label">
                                            <img src="/assets/media/svg/avatars/011-boy-5.svg" class="h-75 align-self-end" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1 font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Kristaps Zumman</a>
                                        <span class="text-muted">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end:Dropdown-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-10">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-success mr-5">
                                        <span class="symbol-label">
                                            <img src="/assets/media/svg/avatars/015-boy-6.svg" class="h-75 align-self-end" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1 font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Ricky Hunt</a>
                                        <span class="text-muted">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-2">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 symbol-light-success mr-5">
                                        <span class="symbol-label">
                                            <img src="/assets/media/svg/avatars/016-boy-7.svg" class="h-75 align-self-end" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1 font-weight-bold">
                                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Carles Puyol</a>
                                        <span class="text-muted">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::List Widget 3-->
                    </div>

                    <div class="col-lg-6 col-xxl-4 order-1 order-xxl-2">

                        <!--begin::List Widget 4-->
                        <div class="card card-custom card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header border-0">
                                <h3 class="card-title font-weight-bolder text-dark">Todo</h3>
                                <div class="card-toolbar">
                                    <div class="dropdown dropdown-inline">
                                        <a href="#" class="btn btn-light btn-sm font-size-sm font-weight-bolder dropdown-toggle text-dark-75" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Create
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header pb-1">
                                                    <span class="text-primary text-uppercase font-weight-bold font-size-sm">Add new:</span>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-shopping-cart-1"></i></span>
                                                        <span class="navi-text">Order</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-calendar-8"></i></span>
                                                        <span class="navi-text">Event</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-graph-1"></i></span>
                                                        <span class="navi-text">Report</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-rocket-1"></i></span>
                                                        <span class="navi-text">Post</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-writing"></i></span>
                                                        <span class="navi-text">File</span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-2">
                                <!--begin::Item-->
                                <div class="d-flex align-items-center">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-bar bg-success align-self-stretch"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <label class="checkbox checkbox-lg checkbox-light-success checkbox-inline flex-shrink-0 m-0 mx-4">
                                        <input type="checkbox" name="select" value="1">
                                        <span></span>
                                    </label>
                                    <!--end::Checkbox-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1">
                                        <a href="#" class="text-dark-75 text-hover-primary font-weight-bold font-size-lg mb-1">Create FireStone Logo
                                        </a>
                                        <span class="text-muted font-weight-bold">Due in 2 Days
                                        </span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end:Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mt-10">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-bar bg-primary align-self-stretch"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <label class="checkbox checkbox-lg checkbox-light-primary checkbox-inline flex-shrink-0 m-0 mx-4">
                                        <input type="checkbox" value="1">
                                        <span></span>
                                    </label>
                                    <!--end::Checkbox-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1">
                                        <a href="#" class="text-dark-75 text-hover-primary font-weight-bold font-size-lg mb-1">Stakeholder Meeting
                                        </a>
                                        <span class="text-muted font-weight-bold">Due in 3 Days
                                        </span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mt-10">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-bar bg-warning align-self-stretch"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <label class="checkbox checkbox-lg checkbox-light-warning checkbox-inline flex-shrink-0 m-0 mx-4">
                                        <input type="checkbox" value="1">
                                        <span></span>
                                    </label>
                                    <!--end::Checkbox-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1">
                                        <a href="#" class="text-dark-75 text-hover-primary font-size-sm font-weight-bold font-size-lg mb-1">Scoping &amp; Estimations
                                        </a>
                                        <span class="text-muted font-weight-bold">Due in 5 Days
                                        </span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin: Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mt-10">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-bar bg-info align-self-stretch"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <label class="checkbox checkbox-lg checkbox-light-info checkbox-inline flex-shrink-0 m-0 mx-4">
                                        <input type="checkbox" value="1">
                                        <span></span>
                                    </label>
                                    <!--end::Checkbox-->
                                    <!--begin::Text-->
                                    <div class="d-flex flex-column flex-grow-1">
                                        <a href="#" class="text-dark-75 text-hover-primary font-weight-bold font-size-lg mb-1">Sprint Showcase
                                        </a>
                                        <span class="text-muted font-weight-bold">Due in 1 Day
                                        </span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin::Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover py-5">
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-drop"></i></span>
                                                        <span class="navi-text">New Group</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-list-3"></i></span>
                                                        <span class="navi-text">Contacts</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-rocket-1"></i></span>
                                                        <span class="navi-text">Groups</span>
                                                        <span class="navi-link-badge">
                                                            <span class="label label-light-primary label-inline font-weight-bold">new</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-bell-2"></i></span>
                                                        <span class="navi-text">Calls</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-gear"></i></span>
                                                        <span class="navi-text">Settings</span>
                                                    </a>
                                                </li>

                                                <li class="navi-separator my-3"></li>

                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-magnifier-tool"></i></span>
                                                        <span class="navi-text">Help</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-bell-2"></i></span>
                                                        <span class="navi-text">Privacy</span>
                                                        <span class="navi-link-badge">
                                                            <span class="label label-light-danger label-rounded font-weight-bold">5</span>
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mt-10">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-bar bg-danger align-self-stretch"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <label class="checkbox checkbox-lg checkbox-light-danger checkbox-inline flex-shrink-0 m-0 mx-4">
                                        <input type="checkbox" value="1">
                                        <span></span>
                                    </label>
                                    <!--end::Checkbox:-->
                                    <!--begin::Title-->
                                    <div class="d-flex flex-column flex-grow-1">
                                        <a href="#" class="text-dark-75 text-hover-primary font-weight-bold font-size-lg mb-1">Project Retro
                                        </a>
                                        <span class="text-muted font-weight-bold">Due in 12 Days
                                        </span>
                                    </div>
                                    <!--end::Text-->
                                    <!--begin: Dropdown-->
                                    <div class="dropdown dropdown-inline ml-2" data-toggle="tooltip" title="" data-placement="left" data-original-title="Quick actions">
                                        <a href="#" class="btn btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu p-0 m-0 dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header font-weight-bold py-4">
                                                    <span class="font-size-lg">Choose Label:</span>
                                                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
                                                </li>
                                                <li class="navi-separator mb-3 opacity-70"></li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-success">Customer</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-danger">Partner</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-warning">Suplier</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-primary">Member</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-text">
                                                            <span class="label label-xl label-inline label-light-dark">Staff</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-separator mt-3 opacity-70"></li>
                                                <li class="navi-footer py-4">
                                                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                                                        <i class="ki ki-plus icon-sm"></i>
                                                        Add new
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                    <!--end::Dropdown-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end:List Widget 4-->
                    </div>

                    <div class="col-lg-12 col-xxl-4 order-1 order-xxl-2">
                        <!--begin::List Widget 8-->
                        <div class="card card-custom card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header border-0">
                                <h3 class="card-title font-weight-bolder text-dark">Trends</h3>
                                <div class="card-toolbar">
                                    <div class="dropdown dropdown-inline">
                                        <a href="#" class="btn btn-clean btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-ver"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover">
                                                <li class="navi-header pb-1">
                                                    <span class="text-primary text-uppercase font-weight-bold font-size-sm">Add new:</span>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-shopping-cart-1"></i></span>
                                                        <span class="navi-text">Order</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-calendar-8"></i></span>
                                                        <span class="navi-text">Event</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-graph-1"></i></span>
                                                        <span class="navi-text">Report</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-rocket-1"></i></span>
                                                        <span class="navi-text">Post</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-writing"></i></span>
                                                        <span class="navi-text">File</span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-0">
                                <!--begin::Item-->
                                <div class="mb-10">
                                    <!--begin::Section-->
                                    <div class="d-flex align-items-center">
                                        <!--begin::Symbol-->
                                        <div class="symbol symbol-45 symbol-light mr-5">
                                            <span class="symbol-label">
                                                <img src="/assets/media/svg/misc/006-plurk.svg" class="h-50 align-self-center" alt="">
                                            </span>
                                        </div>
                                        <!--end::Symbol-->
                                        <!--begin::Text-->
                                        <div class="d-flex flex-column flex-grow-1">
                                            <a href="#" class="font-weight-bold text-dark-75 text-hover-primary font-size-lg mb-1">Top Authors</a>
                                            <span class="text-muted font-weight-bold">5 day ago</span>
                                        </div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Section-->
                                    <!--begin::Desc-->
                                    <p class="text-dark-50 m-0 pt-5 font-weight-normal">
                                        A brief write up about the top Authors that
                                        fits within this section
                                    </p>
                                    <!--end::Desc-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="mb-10">
                                    <!--begin::Section-->
                                    <div class="d-flex align-items-center">
                                        <!--begin::Symbol-->
                                        <div class="symbol symbol-45 symbol-light mr-5">
                                            <span class="symbol-label">
                                                <img src="/assets/media/svg/misc/015-telegram.svg" class="h-50 align-self-center" alt="">
                                            </span>
                                        </div>
                                        <!--end::Symbol-->
                                        <!--begin::Text-->
                                        <div class="d-flex flex-column flex-grow-1">
                                            <a href="#" class="font-weight-bold text-dark-75 text-hover-primary font-size-lg mb-1">Popular Authors</a>
                                            <span class="text-muted font-weight-bold">5 day ago</span>
                                        </div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Section-->
                                    <!--begin::Desc-->
                                    <p class="text-dark-50 m-0 pt-5 font-weight-normal">
                                        A brief write up about the Popular Authors that
                                        fits within this section
                                    </p>
                                    <!--end::Desc-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="">
                                    <!--begin::Section-->
                                    <div class="d-flex align-items-center">
                                        <!--begin::Symbol-->
                                        <div class="symbol symbol-45 symbol-light mr-5">
                                            <span class="symbol-label">
                                                <img src="/assets/media/svg/misc/014-kickstarter.svg" class="h-50 align-self-center" alt="">
                                            </span>
                                        </div>
                                        <!--end::Symbol-->
                                        <!--begin::Text-->
                                        <div class="d-flex flex-column flex-grow-1">
                                            <a href="#" class="font-weight-bold text-dark-75 text-hover-primary font-size-lg mb-1">New Users</a>
                                            <span class="text-muted font-weight-bold">5 day ago</span>
                                        </div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Section-->
                                    <!--begin::Desc-->
                                    <p class="text-dark-50 m-0 pt-5 font-weight-normal">
                                        A brief write up about the New Users that
                                        fits within this section
                                    </p>
                                    <!--end::Desc-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end: Card-->
                        <!--end::List Widget 8-->
                    </div>
                </div>
                <!--end::Row-->
                <!--begin::Row-->
                <div class="row">
                    <div class="col-lg-4">
                        <!--begin::Mixed Widget 14-->
                        <div class="card card-custom card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header border-0 pt-5">
                                <h3 class="card-title font-weight-bolder ">Action Needed</h3>
                                <div class="card-toolbar">
                                    <div class="dropdown dropdown-inline">
                                        <a href="#" class="btn btn-clean btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ki ki-bold-more-hor"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right">
                                            <!--begin::Navigation-->
                                            <ul class="navi navi-hover py-5">
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-drop"></i></span>
                                                        <span class="navi-text">New Group</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-list-3"></i></span>
                                                        <span class="navi-text">Contacts</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-rocket-1"></i></span>
                                                        <span class="navi-text">Groups</span>
                                                        <span class="navi-link-badge">
                                                            <span class="label label-light-primary label-inline font-weight-bold">new</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-bell-2"></i></span>
                                                        <span class="navi-text">Calls</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-gear"></i></span>
                                                        <span class="navi-text">Settings</span>
                                                    </a>
                                                </li>

                                                <li class="navi-separator my-3"></li>

                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-magnifier-tool"></i></span>
                                                        <span class="navi-text">Help</span>
                                                    </a>
                                                </li>
                                                <li class="navi-item">
                                                    <a href="#" class="navi-link">
                                                        <span class="navi-icon"><i class="flaticon2-bell-2"></i></span>
                                                        <span class="navi-text">Privacy</span>
                                                        <span class="navi-link-badge">
                                                            <span class="label label-light-danger label-rounded font-weight-bold">5</span>
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <!--end::Navigation-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body d-flex flex-column">
                                <div class="flex-grow-1" style="position: relative;">
                                    <div id="kt_mixed_widget_14_chart" style="height: 200px; min-height: 178.7px;">
                                        <div id="apexcharts29xxl3k3" class="apexcharts-canvas apexcharts29xxl3k3 apexcharts-theme-light" style="width: 241px; height: 178.7px;">
                                            <svg id="SvgjsSvg1684" width="241" height="178.7" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                                <g id="SvgjsG1686" class="apexcharts-inner apexcharts-graphical" transform="translate(33.5, 0)">
                                                    <defs id="SvgjsDefs1685">
                                                        <clipPath id="gridRectMask29xxl3k3">
                                                            <rect id="SvgjsRect1688" width="182" height="200" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                        </clipPath>
                                                        <clipPath id="gridRectMarkerMask29xxl3k3">
                                                            <rect id="SvgjsRect1689" width="180" height="202" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                        </clipPath>
                                                    </defs>
                                                    <g id="SvgjsG1690" class="apexcharts-radialbar">
                                                        <g id="SvgjsG1691">
                                                            <g id="SvgjsG1692" class="apexcharts-tracks">
                                                                <g id="SvgjsG1693" class="apexcharts-radialbar-track apexcharts-track" rel="1">
                                                                    <path id="apexcharts-radialbarTrack-0" d="M 88 26.60792682926828 A 61.39207317073172 61.39207317073172 0 1 1 87.98928506193984 26.607927764323023" fill="none" fill-opacity="1" stroke="rgba(201,247,245,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="8.97439024390244" stroke-dasharray="0" class="apexcharts-radialbar-area" data:pathOrig="M 88 26.60792682926828 A 61.39207317073172 61.39207317073172 0 1 1 87.98928506193984 26.607927764323023"></path>
                                                                </g>
                                                            </g>
                                                            <g id="SvgjsG1695">
                                                                <g id="SvgjsG1699" class="apexcharts-series apexcharts-radial-series" seriesName="Progress" rel="1" data:realIndex="0">
                                                                    <path id="SvgjsPath1700" d="M 88 26.60792682926828 A 61.39207317073172 61.39207317073172 0 1 1 26.757474833957374 92.28249454023158" fill="none" fill-opacity="0.85" stroke="rgba(27,197,189,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="8.97439024390244" stroke-dasharray="0" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="266" data:value="74" index="0" j="0" data:pathOrig="M 88 26.60792682926828 A 61.39207317073172 61.39207317073172 0 1 1 26.757474833957374 92.28249454023158"></path>
                                                                </g>
                                                                <circle id="SvgjsCircle1696" r="56.9048780487805" cx="88" cy="88" class="apexcharts-radialbar-hollow" fill="transparent"></circle>
                                                                <g id="SvgjsG1697" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;">
                                                                    <text id="SvgjsText1698" font-family="Helvetica, Arial, sans-serif" x="88" y="100" text-anchor="middle" dominant-baseline="auto" font-size="30px" font-weight="700" fill="#5e6278" class="apexcharts-text apexcharts-datalabel-value" style="font-family: Helvetica, Arial, sans-serif;">74%</text>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <line id="SvgjsLine1701" x1="0" y1="0" x2="176" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                    <line id="SvgjsLine1702" x1="0" y1="0" x2="176" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                </g><g id="SvgjsG1687" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div>
                                        </div>
                                    </div>
                                    <div class="resize-triggers">
                                        <div class="expand-trigger">
                                            <div style="width: 242px; height: 219px;"></div>
                                        </div>
                                        <div class="contract-trigger"></div>
                                    </div>
                                </div>
                                <div class="pt-5">
                                    <p class="text-center font-weight-normal font-size-lg pb-7">
                                        Notes: Current sprint requires stakeholders<br>
                                        to approve newly amended policies
                                    </p>
                                    <a href="#" class="btn btn-success btn-shadow-hover font-weight-bolder w-100 py-3">Generate Report</a>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Mixed Widget 14-->
                    </div>
                    <div class="col-lg-8">
                        <!--begin::Advance Table Widget 4-->
                        <div class="card card-custom card-stretch gutter-b">
                            <!--begin::Header-->
                            <div class="card-header border-0 py-5">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="card-label font-weight-bolder text-dark">Agents Stats</span>
                                    <span class="text-muted mt-3 font-weight-bold font-size-sm">More than 400+ new members</span>
                                </h3>
                                <div class="card-toolbar">
                                    <a href="#" class="btn btn-info font-weight-bolder font-size-sm mr-3">New Report</a>
                                    <a href="#" class="btn btn-danger font-weight-bolder font-size-sm">Create</a>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-0 pb-3">
                                <div class="tab-content">
                                    <!--begin::Table-->
                                    <div class="table-responsive">
                                        <table class="table table-head-custom table-head-bg table-borderless table-vertical-center">
                                            <thead>
                                                <tr class="text-left text-uppercase">
                                                    <th style="min-width: 250px" class="pl-7"><span class="text-dark-75">products</span></th>
                                                    <th style="min-width: 100px">earnings</th>
                                                    <th style="min-width: 100px">comission</th>
                                                    <th style="min-width: 100px">company</th>
                                                    <th style="min-width: 130px">rating</th>
                                                    <th style="min-width: 80px"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="pl-0 py-8">
                                                        <div class="d-flex align-items-center">
                                                            <div class="symbol symbol-50 symbol-light mr-4">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/avatars/001-boy.svg" class="h-75 align-self-end" alt="">
                                                                </span>
                                                            </div>
                                                            <div>
                                                                <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Brad Simmons</a>
                                                                <span class="text-muted font-weight-bold d-block">HTML, JS, ReactJS</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$8,000,000
                                                        </span>
                                                        <span class="text-muted font-weight-bold">In Proccess
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$520
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Paid
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">Intertico
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Web, UI/UX Design
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <img src="/assets/media/logos/stars.png" alt="image" style="width: 5.5rem">
                                                        <span class="text-muted font-weight-bold d-block font-size-sm">Best Rated
                                                        </span>
                                                    </td>
                                                    <td class="pr-0 text-right">
                                                        <a href="#" class="btn btn-light-success font-weight-bolder font-size-sm">View Offer</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pl-0 py-0">
                                                        <div class="d-flex align-items-center">
                                                            <div class="symbol symbol-50 symbol-light mr-4">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/avatars/018-girl-9.svg" class="h-75 align-self-end" alt="">
                                                                </span>
                                                            </div>
                                                            <div>
                                                                <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Jessie Clarcson</a>
                                                                <span class="text-muted font-weight-bold d-block">C#, ASP.NET, MS SQL</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$23,000,000
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Pending
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$1,600
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Rejected
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">Agoda
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Houses &amp; Hotels
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <img src="/assets/media/logos/stars.png" alt="image" style="width: 5.5rem">
                                                        <span class="text-muted font-weight-bold d-block font-size-sm">Above Avarage
                                                        </span>
                                                    </td>
                                                    <td class="pr-0 text-right">
                                                        <a href="#" class="btn btn-light-success font-weight-bolder font-size-sm">View Offer</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pl-0 py-8">
                                                        <div class="d-flex align-items-center">
                                                            <div class="symbol symbol-50 symbol-light mr-4">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/avatars/047-girl-25.svg" class="h-75 align-self-end" alt="">
                                                                </span>
                                                            </div>
                                                            <div>
                                                                <a href="#" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">Lebron Wayde</a>
                                                                <span class="text-muted font-weight-bold d-block">PHP, Laravel, VueJS</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$34,000,000
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Paid
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$6,700
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Paid
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">RoadGee
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Paid
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <img src="/assets/media/logos/stars.png" alt="image" style="width: 5.5rem">
                                                        <span class="text-muted font-weight-bold d-block font-size-sm">Best Rated
                                                        </span>
                                                    </td>
                                                    <td class="pr-0 text-right">
                                                        <a href="#" class="btn btn-light-success font-weight-bolder font-size-sm">View Offer</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pl-0 py-0 ">
                                                        <div class="d-flex align-items-center">
                                                            <div class="symbol symbol-50 symbol-light mr-4">
                                                                <span class="symbol-label">
                                                                    <img src="/assets/media/svg/avatars/014-girl-7.svg" class="h-75 align-self-end" alt="">
                                                                </span>
                                                            </div>
                                                            <div>
                                                                <a href="#" class="text-dark font-weight-bolder text-hover-primary mb-1 font-size-lg">Natali Trump</a>
                                                                <span class="text-muted font-weight-bold d-block">Python, PostgreSQL, ReactJS</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-left pr-0">
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$2,600,000
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Paid
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">$14,000
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Pending
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <span class="text-dark-75 font-weight-bolder d-block font-size-lg">The Hill
                                                        </span>
                                                        <span class="text-muted font-weight-bold">Insurance
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <img src="/assets/media/logos/stars.png" alt="image" style="width: 5.5rem">
                                                        <span class="text-muted font-weight-bold d-block font-size-sm">Avarage
                                                        </span>
                                                    </td>
                                                    <td class="pr-0 text-right">
                                                        <a href="#" class="btn btn-light-success font-weight-bolder font-size-sm" style="width: 7rem">View Offer</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--end::Table-->
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Advance Table Widget 4-->
                    </div>
                </div>
                <!--end::Row-->
                <!--end::Dashboard-->
            </div>
            <!--end::Container-->
        </div>--%>
        <!--end::Entry-->



        <div class="post d-flex flex-column-fluid" id="kt_post">
            <!--begin::Container-->
            <div id="kt_content_container" class="container-xxl">
                <!--begin::Row-->
                <div class="row gy-5 g-xl-8">
                    <!--begin::Col-->
                    <div class="col-xxl-4">
                        <!--begin::Mixed Widget 2-->
                        <div class="card card-xxl-stretch">
                            <!--begin::Header-->
                            <div class="card-header border-0 bg-danger py-5">
                                <h3 class="card-title fw-bolder text-white">Admissions Statistics</h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <button type="button" class="btn btn-sm btn-icon btn-color-white btn-active-white btn-active-color- border-0 me-n3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                                    <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                </g>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </button>
                                    <!--begin::Menu 3-->
                                    <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-bold w-200px py-3" data-kt-menu="true">
                                        <!--begin::Heading-->
                                        <div class="menu-item px-3">
                                            <div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">Payments</div>
                                        </div>
                                        <!--end::Heading-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Create Invoice</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link flex-stack px-3">Create Payment
															<i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify a target name for future usage and reference" aria-label="Specify a target name for future usage and reference"></i></a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Generate Bill</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-end">
                                            <a href="#" class="menu-link px-3">
                                                <span class="menu-title">Subscription</span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <!--begin::Menu sub-->
                                            <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Plans</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Billing</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Statements</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator my-2"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3">
                                                        <!--begin::Switch-->
                                                        <label class="form-check form-switch form-check-custom form-check-solid">
                                                            <!--begin::Input-->
                                                            <input class="form-check-input w-30px h-20px" type="checkbox" value="1" checked="checked" name="notifications">
                                                            <!--end::Input-->
                                                            <!--end::Label-->
                                                            <span class="form-check-label text-muted fs-6">Recuring</span>
                                                            <!--end::Label-->
                                                        </label>
                                                        <!--end::Switch-->
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu sub-->
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3 my-1">
                                            <a href="#" class="menu-link px-3">Settings</a>
                                        </div>
                                        <!--end::Menu item-->
                                    </div>
                                    <!--end::Menu 3-->
                                    <!--end::Menu-->
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body p-0" style="position: relative;">
                                <!--begin::Chart-->
                                <div class="mixed-widget-2-chart card-rounded-bottom bg-danger" data-kt-color="danger" style="height: 200px; min-height: 200px;">
                                    <div id="apexchartsijp4ln3xi" class="apexcharts-canvas apexchartsijp4ln3xi apexcharts-theme-light" style="width: 938px; height: 200px;">
                                        <svg id="SvgjsSvg1263" width="938" height="200" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <g id="SvgjsG1265" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)">
                                                <defs id="SvgjsDefs1264">
                                                    <clipPath id="gridRectMaskijp4ln3xi">
                                                        <rect id="SvgjsRect1268" width="945" height="203" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="forecastMaskijp4ln3xi"></clipPath>
                                                    <clipPath id="nonForecastMaskijp4ln3xi"></clipPath>
                                                    <clipPath id="gridRectMarkerMaskijp4ln3xi">
                                                        <rect id="SvgjsRect1269" width="942" height="204" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <filter id="SvgjsFilter1275" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%">
                                                        <feFlood id="SvgjsFeFlood1276" flood-color="#cb1b46" flood-opacity="0.5" result="SvgjsFeFlood1276Out" in="SourceGraphic"></feFlood>
                                                        <feComposite id="SvgjsFeComposite1277" in="SvgjsFeFlood1276Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1277Out"></feComposite>
                                                        <feOffset id="SvgjsFeOffset1278" dx="0" dy="5" result="SvgjsFeOffset1278Out" in="SvgjsFeComposite1277Out"></feOffset>
                                                        <feGaussianBlur id="SvgjsFeGaussianBlur1279" stdDeviation="3 " result="SvgjsFeGaussianBlur1279Out" in="SvgjsFeOffset1278Out"></feGaussianBlur>
                                                        <feMerge id="SvgjsFeMerge1280" result="SvgjsFeMerge1280Out" in="SourceGraphic">
                                                            <feMergeNode id="SvgjsFeMergeNode1281" in="SvgjsFeGaussianBlur1279Out"></feMergeNode>
                                                            <feMergeNode id="SvgjsFeMergeNode1282" in="[object Arguments]"></feMergeNode>
                                                        </feMerge>
                                                        <feBlend id="SvgjsFeBlend1283" in="SourceGraphic" in2="SvgjsFeMerge1280Out" mode="normal" result="SvgjsFeBlend1283Out"></feBlend>
                                                    </filter>
                                                    <filter id="SvgjsFilter1285" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%">
                                                        <feFlood id="SvgjsFeFlood1286" flood-color="#cb1b46" flood-opacity="0.5" result="SvgjsFeFlood1286Out" in="SourceGraphic"></feFlood>
                                                        <feComposite id="SvgjsFeComposite1287" in="SvgjsFeFlood1286Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1287Out"></feComposite>
                                                        <feOffset id="SvgjsFeOffset1288" dx="0" dy="5" result="SvgjsFeOffset1288Out" in="SvgjsFeComposite1287Out"></feOffset>
                                                        <feGaussianBlur id="SvgjsFeGaussianBlur1289" stdDeviation="3 " result="SvgjsFeGaussianBlur1289Out" in="SvgjsFeOffset1288Out"></feGaussianBlur>
                                                        <feMerge id="SvgjsFeMerge1290" result="SvgjsFeMerge1290Out" in="SourceGraphic">
                                                            <feMergeNode id="SvgjsFeMergeNode1291" in="SvgjsFeGaussianBlur1289Out"></feMergeNode>
                                                            <feMergeNode id="SvgjsFeMergeNode1292" in="[object Arguments]"></feMergeNode>
                                                        </feMerge>
                                                        <feBlend id="SvgjsFeBlend1293" in="SourceGraphic" in2="SvgjsFeMerge1290Out" mode="normal" result="SvgjsFeBlend1293Out"></feBlend>
                                                    </filter>
                                                </defs>
                                                <g id="SvgjsG1294" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1295" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g>
                                                </g>
                                                <g id="SvgjsG1304" class="apexcharts-grid">
                                                    <g id="SvgjsG1305" class="apexcharts-gridlines-horizontal" style="display: none;">
                                                        <line id="SvgjsLine1307" x1="0" y1="0" x2="938" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1308" x1="0" y1="20" x2="938" y2="20" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1309" x1="0" y1="40" x2="938" y2="40" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1310" x1="0" y1="60" x2="938" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1311" x1="0" y1="80" x2="938" y2="80" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1312" x1="0" y1="100" x2="938" y2="100" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1313" x1="0" y1="120" x2="938" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1314" x1="0" y1="140" x2="938" y2="140" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1315" x1="0" y1="160" x2="938" y2="160" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1316" x1="0" y1="180" x2="938" y2="180" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1317" x1="0" y1="200" x2="938" y2="200" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1306" class="apexcharts-gridlines-vertical" style="display: none;"></g>
                                                    <line id="SvgjsLine1319" x1="0" y1="200" x2="938" y2="200" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1318" x1="0" y1="1" x2="0" y2="200" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1270" class="apexcharts-area-series apexcharts-plot-series">
                                                    <g id="SvgjsG1271" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0">
                                                        <path id="SvgjsPath1274" d="M 0 200L 0 125C 54.71666666666667 125 101.61666666666667 87.5 156.33333333333334 87.5C 211.05 87.5 257.95000000000005 120 312.6666666666667 120C 367.3833333333333 120 414.28333333333336 25 469 25C 523.7166666666667 25 570.6166666666667 100 625.3333333333334 100C 680.05 100 726.95 100 781.6666666666666 100C 836.3833333333333 100 883.2833333333333 100 938 100C 938 100 938 100 938 200M 938 100z" fill="transparent" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskijp4ln3xi)" filter="url(#SvgjsFilter1275)" pathTo="M 0 200L 0 125C 54.71666666666667 125 101.61666666666667 87.5 156.33333333333334 87.5C 211.05 87.5 257.95000000000005 120 312.6666666666667 120C 367.3833333333333 120 414.28333333333336 25 469 25C 523.7166666666667 25 570.6166666666667 100 625.3333333333334 100C 680.05 100 726.95 100 781.6666666666666 100C 836.3833333333333 100 883.2833333333333 100 938 100C 938 100 938 100 938 200M 938 100z" pathFrom="M -1 200L -1 200L 156.33333333333334 200L 312.6666666666667 200L 469 200L 625.3333333333334 200L 781.6666666666666 200L 938 200"></path>
                                                        <path id="SvgjsPath1284" d="M 0 125C 54.71666666666667 125 101.61666666666667 87.5 156.33333333333334 87.5C 211.05 87.5 257.95000000000005 120 312.6666666666667 120C 367.3833333333333 120 414.28333333333336 25 469 25C 523.7166666666667 25 570.6166666666667 100 625.3333333333334 100C 680.05 100 726.95 100 781.6666666666666 100C 836.3833333333333 100 883.2833333333333 100 938 100" fill="none" fill-opacity="1" stroke="#cb1b46" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskijp4ln3xi)" filter="url(#SvgjsFilter1285)" pathTo="M 0 125C 54.71666666666667 125 101.61666666666667 87.5 156.33333333333334 87.5C 211.05 87.5 257.95000000000005 120 312.6666666666667 120C 367.3833333333333 120 414.28333333333336 25 469 25C 523.7166666666667 25 570.6166666666667 100 625.3333333333334 100C 680.05 100 726.95 100 781.6666666666666 100C 836.3833333333333 100 883.2833333333333 100 938 100" pathFrom="M -1 200L -1 200L 156.33333333333334 200L 312.6666666666667 200L 469 200L 625.3333333333334 200L 781.6666666666666 200L 938 200"></path>
                                                        <g id="SvgjsG1272" class="apexcharts-series-markers-wrap" data:realIndex="0">
                                                            <g class="apexcharts-series-markers">
                                                                <circle id="SvgjsCircle1325" r="0" cx="0" cy="0" class="apexcharts-marker ww4llaady no-pointer-events" stroke="#cb1b46" fill="#f1416c" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1273" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                </g>
                                                <line id="SvgjsLine1320" x1="0" y1="0" x2="938" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1321" x1="0" y1="0" x2="938" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1322" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1323" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1324" class="apexcharts-point-annotations"></g>
                                            </g><g id="SvgjsG1303" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG1266" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 100px;"></div>
                                        <div class="apexcharts-tooltip apexcharts-theme-light">
                                            <div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;"></div>
                                            <div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: transparent;"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                                    <div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                            <div class="apexcharts-yaxistooltip-text"></div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Chart-->
                                <!--begin::Stats-->
                                <div class="card-p mt-n20 position-relative">
                                    <!--begin::Row-->
                                    <div class="row g-0">
                                        <!--begin::Col-->
                                        <div class="col bg-light-warning px-6 py-8 rounded-2 me-7 mb-7">
                                            <!--begin::Svg Icon | path: icons/duotune/general/gen032.svg-->
                                            <span class="svg-icon svg-icon-3x svg-icon-warning d-block my-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <rect x="8" y="9" width="3" height="10" rx="1.5" fill="black"></rect>
                                                    <rect opacity="0.5" x="13" y="5" width="3" height="14" rx="1.5" fill="black"></rect>
                                                    <rect x="18" y="11" width="3" height="8" rx="1.5" fill="black"></rect>
                                                    <rect x="3" y="13" width="3" height="6" rx="1.5" fill="black"></rect>
                                                </svg>
                                            </span>
                                            <!--end::Svg Icon-->
                                            <a href="#" class="text-warning fw-bold fs-6">Weekly Sales</a>
                                        </div>
                                        <!--end::Col-->
                                        <!--begin::Col-->
                                        <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7">
                                            <!--begin::Svg Icon | path: icons/duotune/finance/fin006.svg-->
                                            <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <path opacity="0.3" d="M20 15H4C2.9 15 2 14.1 2 13V7C2 6.4 2.4 6 3 6H21C21.6 6 22 6.4 22 7V13C22 14.1 21.1 15 20 15ZM13 12H11C10.5 12 10 12.4 10 13V16C10 16.5 10.4 17 11 17H13C13.6 17 14 16.6 14 16V13C14 12.4 13.6 12 13 12Z" fill="black"></path>
                                                    <path d="M14 6V5H10V6H8V5C8 3.9 8.9 3 10 3H14C15.1 3 16 3.9 16 5V6H14ZM20 15H14V16C14 16.6 13.5 17 13 17H11C10.5 17 10 16.6 10 16V15H4C3.6 15 3.3 14.9 3 14.7V18C3 19.1 3.9 20 5 20H19C20.1 20 21 19.1 21 18V14.7C20.7 14.9 20.4 15 20 15Z" fill="black"></path>
                                                </svg>
                                            </span>
                                            <!--end::Svg Icon-->
                                            <a href="#" class="text-primary fw-bold fs-6">New Projects</a>
                                        </div>
                                        <!--end::Col-->
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="row g-0">
                                        <!--begin::Col-->
                                        <div class="col bg-light-danger px-6 py-8 rounded-2 me-7">
                                            <!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
                                            <span class="svg-icon svg-icon-3x svg-icon-danger d-block my-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="black"></path>
                                                    <path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="black"></path>
                                                </svg>
                                            </span>
                                            <!--end::Svg Icon-->
                                            <a href="#" class="text-danger fw-bold fs-6 mt-2">Item Orders</a>
                                        </div>
                                        <!--end::Col-->
                                        <!--begin::Col-->
                                        <div class="col bg-light-success px-6 py-8 rounded-2">
                                            <!--begin::Svg Icon | path: icons/duotune/communication/com010.svg-->
                                            <span class="svg-icon svg-icon-3x svg-icon-success d-block my-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <path d="M6 8.725C6 8.125 6.4 7.725 7 7.725H14L18 11.725V12.925L22 9.725L12.6 2.225C12.2 1.925 11.7 1.925 11.4 2.225L2 9.725L6 12.925V8.725Z" fill="black"></path>
                                                    <path opacity="0.3" d="M22 9.72498V20.725C22 21.325 21.6 21.725 21 21.725H3C2.4 21.725 2 21.325 2 20.725V9.72498L11.4 17.225C11.8 17.525 12.3 17.525 12.6 17.225L22 9.72498ZM15 11.725H18L14 7.72498V10.725C14 11.325 14.4 11.725 15 11.725Z" fill="black"></path>
                                                </svg>
                                            </span>
                                            <!--end::Svg Icon-->
                                            <a href="#" class="text-success fw-bold fs-6 mt-2">Bug Reports</a>
                                        </div>
                                        <!--end::Col-->
                                    </div>
                                    <!--end::Row-->
                                </div>
                                <!--end::Stats-->
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 939px; height: 461px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Mixed Widget 2-->
                    </div>
                    <!--end::Col-->
                    <!--begin::Col-->
                    <div class="col-xxl-4">
                        <!--begin::List Widget 5-->
                        <div class="card card-xxl-stretch">
                            <!--begin::Header-->
                            <div class="card-header align-items-center border-0 mt-4">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="fw-bolder mb-2 text-dark">Activities</span>
                                    <span class="text-muted fw-bold fs-7">890,344 Sales</span>
                                </h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <button type="button" class="btn btn-sm btn-icon btn-color-primary btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                                    <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                </g>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </button>
                                    <!--begin::Menu 1-->
                                    <div class="menu menu-sub menu-sub-dropdown w-250px w-md-300px" data-kt-menu="true" id="kt_menu_61356e958c2c4">
                                        <!--begin::Header-->
                                        <div class="px-7 py-5">
                                            <div class="fs-5 text-dark fw-bolder">Filter Options</div>
                                        </div>
                                        <!--end::Header-->
                                        <!--begin::Menu separator-->
                                        <div class="separator border-gray-200"></div>
                                        <!--end::Menu separator-->
                                        <!--begin::Form-->
                                        <div class="px-7 py-5">
                                            <!--begin::Input group-->
                                            <div class="mb-10">
                                                <!--begin::Label-->
                                                <label class="form-label fw-bold">Status:</label>
                                                <!--end::Label-->
                                                <!--begin::Input-->
                                                <div>
                                                    <select class="form-select form-select-solid select2-hidden-accessible" data-kt-select2="true" data-placeholder="Select option" data-dropdown-parent="#kt_menu_61356e958c2c4" data-allow-clear="true" data-select2-id="select2-data-10-o051" tabindex="-1" aria-hidden="true">
                                                        <option data-select2-id="select2-data-12-dvs3"></option>
                                                        <option value="1">Approved</option>
                                                        <option value="2">Pending</option>
                                                        <option value="2">In Process</option>
                                                        <option value="2">Rejected</option>
                                                    </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-11-kg1h" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-u2r7-container" aria-controls="select2-u2r7-container"><span class="select2-selection__rendered" id="select2-u2r7-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                                </div>
                                                <!--end::Input-->
                                            </div>
                                            <!--end::Input group-->
                                            <!--begin::Input group-->
                                            <div class="mb-10">
                                                <!--begin::Label-->
                                                <label class="form-label fw-bold">Member Type:</label>
                                                <!--end::Label-->
                                                <!--begin::Options-->
                                                <div class="d-flex">
                                                    <!--begin::Options-->
                                                    <label class="form-check form-check-sm form-check-custom form-check-solid me-5">
                                                        <input class="form-check-input" type="checkbox" value="1">
                                                        <span class="form-check-label">Author</span>
                                                    </label>
                                                    <!--end::Options-->
                                                    <!--begin::Options-->
                                                    <label class="form-check form-check-sm form-check-custom form-check-solid">
                                                        <input class="form-check-input" type="checkbox" value="2" checked="checked">
                                                        <span class="form-check-label">Customer</span>
                                                    </label>
                                                    <!--end::Options-->
                                                </div>
                                                <!--end::Options-->
                                            </div>
                                            <!--end::Input group-->
                                            <!--begin::Input group-->
                                            <div class="mb-10">
                                                <!--begin::Label-->
                                                <label class="form-label fw-bold">Notifications:</label>
                                                <!--end::Label-->
                                                <!--begin::Switch-->
                                                <div class="form-check form-switch form-switch-sm form-check-custom form-check-solid">
                                                    <input class="form-check-input" type="checkbox" value="" name="notifications" checked="checked">
                                                    <label class="form-check-label">Enabled</label>
                                                </div>
                                                <!--end::Switch-->
                                            </div>
                                            <!--end::Input group-->
                                            <!--begin::Actions-->
                                            <div class="d-flex justify-content-end">
                                                <button type="reset" class="btn btn-sm btn-light btn-active-light-primary me-2" data-kt-menu-dismiss="true">Reset</button>
                                                <button type="submit" class="btn btn-sm btn-primary" data-kt-menu-dismiss="true">Apply</button>
                                            </div>
                                            <!--end::Actions-->
                                        </div>
                                        <!--end::Form-->
                                    </div>
                                    <!--end::Menu 1-->
                                    <!--end::Menu-->
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-5">
                                <!--begin::Timeline-->
                                <div class="timeline-label">
                                    <!--begin::Item-->
                                    <div class="timeline-item">
                                        <!--begin::Label-->
                                        <div class="timeline-label fw-bolder text-gray-800 fs-6">08:42</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-warning fs-1"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Text-->
                                        <div class="fw-mormal timeline-content text-muted ps-3">Outlines keep you honest. And keep structure</div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item">
                                        <!--begin::Label-->
                                        <div class="timeline-label fw-bolder text-gray-800 fs-6">10:00</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-success fs-1"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Content-->
                                        <div class="timeline-content d-flex">
                                            <span class="fw-bolder text-gray-800 ps-3">AEOL meeting</span>
                                        </div>
                                        <!--end::Content-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item">
                                        <!--begin::Label-->
                                        <div class="timeline-label fw-bolder text-gray-800 fs-6">14:37</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-danger fs-1"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Desc-->
                                        <div class="timeline-content fw-bolder text-gray-800 ps-3">
                                            Make deposit
														<a href="#" class="text-primary">USD 700</a>. to ESL
                                        </div>
                                        <!--end::Desc-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item">
                                        <!--begin::Label-->
                                        <div class="timeline-label fw-bolder text-gray-800 fs-6">16:50</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-primary fs-1"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Text-->
                                        <div class="timeline-content fw-mormal text-muted ps-3">Indulging in poorly driving and keep structure keep great</div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item">
                                        <!--begin::Label-->
                                        <div class="timeline-label fw-bolder text-gray-800 fs-6">21:03</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-danger fs-1"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Desc-->
                                        <div class="timeline-content fw-bold text-gray-800 ps-3">
                                            New order placed
														<a href="#" class="text-primary">#XF-2356</a>.
                                        </div>
                                        <!--end::Desc-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item">
                                        <!--begin::Label-->
                                        <div class="timeline-label fw-bolder text-gray-800 fs-6">16:50</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-primary fs-1"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Text-->
                                        <div class="timeline-content fw-mormal text-muted ps-3">Indulging in poorly driving and keep structure keep great</div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item">
                                        <!--begin::Label-->
                                        <div class="timeline-label fw-bolder text-gray-800 fs-6">21:03</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-danger fs-1"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Desc-->
                                        <div class="timeline-content fw-bold text-gray-800 ps-3">
                                            New order placed
														<a href="#" class="text-primary">#XF-2356</a>.
                                        </div>
                                        <!--end::Desc-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="timeline-item">
                                        <!--begin::Label-->
                                        <div class="timeline-label fw-bolder text-gray-800 fs-6">10:30</div>
                                        <!--end::Label-->
                                        <!--begin::Badge-->
                                        <div class="timeline-badge">
                                            <i class="fa fa-genderless text-success fs-1"></i>
                                        </div>
                                        <!--end::Badge-->
                                        <!--begin::Text-->
                                        <div class="timeline-content fw-mormal text-muted ps-3">Finance KPI Mobile app launch preparion meeting</div>
                                        <!--end::Text-->
                                    </div>
                                    <!--end::Item-->
                                </div>
                                <!--end::Timeline-->
                            </div>
                            <!--end: Card Body-->
                        </div>
                        <!--end: List Widget 5-->
                    </div>
                    <!--end::Col-->
                    <!--begin::Col-->
                    <div class="col-xxl-4">
                        <!--begin::Mixed Widget 7-->
                        <div class="card card-xxl-stretch-50 mb-5 mb-xl-8">
                            <!--begin::Body-->
                            <div class="card-body d-flex flex-column p-0" style="position: relative;">
                                <!--begin::Stats-->
                                <div class="flex-grow-1 card-p pb-0">
                                    <div class="d-flex flex-stack flex-wrap">
                                        <div class="me-2">
                                            <a href="#" class="text-dark text-hover-primary fw-bolder fs-3">Generate Reports</a>
                                            <div class="text-muted fs-7 fw-bold">Finance and accounting reports</div>
                                        </div>
                                        <div class="fw-bolder fs-3 text-primary">$24,500</div>
                                    </div>
                                </div>
                                <!--end::Stats-->
                                <!--begin::Chart-->
                                <div class="mixed-widget-7-chart card-rounded-bottom" data-kt-chart-color="primary" style="height: 150px; min-height: 150px;">
                                    <div id="apexchartsltyf02hv" class="apexcharts-canvas apexchartsltyf02hv apexcharts-theme-light" style="width: 938px; height: 150px;">
                                        <svg id="SvgjsSvg1372" width="938" height="150" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <g id="SvgjsG1374" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)">
                                                <defs id="SvgjsDefs1373">
                                                    <clipPath id="gridRectMaskltyf02hv">
                                                        <rect id="SvgjsRect1377" width="945" height="153" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="forecastMaskltyf02hv"></clipPath>
                                                    <clipPath id="nonForecastMaskltyf02hv"></clipPath>
                                                    <clipPath id="gridRectMarkerMaskltyf02hv">
                                                        <rect id="SvgjsRect1378" width="942" height="154" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                </defs>
                                                <g id="SvgjsG1385" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1386" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g>
                                                </g>
                                                <g id="SvgjsG1394" class="apexcharts-grid">
                                                    <g id="SvgjsG1395" class="apexcharts-gridlines-horizontal" style="display: none;">
                                                        <line id="SvgjsLine1397" x1="0" y1="0" x2="938" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1398" x1="0" y1="15" x2="938" y2="15" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1399" x1="0" y1="30" x2="938" y2="30" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1400" x1="0" y1="45" x2="938" y2="45" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1401" x1="0" y1="60" x2="938" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1402" x1="0" y1="75" x2="938" y2="75" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1403" x1="0" y1="90" x2="938" y2="90" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1404" x1="0" y1="105" x2="938" y2="105" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1405" x1="0" y1="120" x2="938" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1406" x1="0" y1="135" x2="938" y2="135" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1407" x1="0" y1="150" x2="938" y2="150" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1396" class="apexcharts-gridlines-vertical" style="display: none;"></g>
                                                    <line id="SvgjsLine1409" x1="0" y1="150" x2="938" y2="150" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1408" x1="0" y1="1" x2="0" y2="150" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1379" class="apexcharts-area-series apexcharts-plot-series">
                                                    <g id="SvgjsG1380" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0">
                                                        <path id="SvgjsPath1383" d="M 0 150L 0 112.5C 65.66 112.5 121.94 87.5 187.6 87.5C 253.26 87.5 309.53999999999996 112.5 375.2 112.5C 440.85999999999996 112.5 497.14 50 562.8 50C 628.4599999999999 50 684.74 100 750.4 100C 816.06 100 872.34 25 938 25C 938 25 938 25 938 150M 938 25z" fill="rgba(241,250,255,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskltyf02hv)" pathTo="M 0 150L 0 112.5C 65.66 112.5 121.94 87.5 187.6 87.5C 253.26 87.5 309.53999999999996 112.5 375.2 112.5C 440.85999999999996 112.5 497.14 50 562.8 50C 628.4599999999999 50 684.74 100 750.4 100C 816.06 100 872.34 25 938 25C 938 25 938 25 938 150M 938 25z" pathFrom="M -1 150L -1 150L 187.6 150L 375.2 150L 562.8 150L 750.4 150L 938 150"></path>
                                                        <path id="SvgjsPath1384" d="M 0 112.5C 65.66 112.5 121.94 87.5 187.6 87.5C 253.26 87.5 309.53999999999996 112.5 375.2 112.5C 440.85999999999996 112.5 497.14 50 562.8 50C 628.4599999999999 50 684.74 100 750.4 100C 816.06 100 872.34 25 938 25" fill="none" fill-opacity="1" stroke="#009ef7" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskltyf02hv)" pathTo="M 0 112.5C 65.66 112.5 121.94 87.5 187.6 87.5C 253.26 87.5 309.53999999999996 112.5 375.2 112.5C 440.85999999999996 112.5 497.14 50 562.8 50C 628.4599999999999 50 684.74 100 750.4 100C 816.06 100 872.34 25 938 25" pathFrom="M -1 150L -1 150L 187.6 150L 375.2 150L 562.8 150L 750.4 150L 938 150"></path>
                                                        <g id="SvgjsG1381" class="apexcharts-series-markers-wrap" data:realIndex="0">
                                                            <g class="apexcharts-series-markers">
                                                                <circle id="SvgjsCircle1415" r="0" cx="0" cy="0" class="apexcharts-marker wp4ptpbho no-pointer-events" stroke="#009ef7" fill="#f1faff" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1382" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                </g>
                                                <line id="SvgjsLine1410" x1="0" y1="0" x2="938" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1411" x1="0" y1="0" x2="938" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1412" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1413" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1414" class="apexcharts-point-annotations"></g>
                                            </g><g id="SvgjsG1393" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG1375" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 75px;"></div>
                                        <div class="apexcharts-tooltip apexcharts-theme-light">
                                            <div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;"></div>
                                            <div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(241, 250, 255);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                                    <div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                            <div class="apexcharts-xaxistooltip-text" style="font-family: inherit; font-size: 12px;"></div>
                                        </div>
                                        <div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                            <div class="apexcharts-yaxistooltip-text"></div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Chart-->
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 939px; height: 248px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Mixed Widget 7-->
                        <!--begin::Mixed Widget 10-->
                        <div class="card card-xxl-stretch-50 mb-5 mb-xl-8">
                            <!--begin::Body-->
                            <div class="card-body p-0 d-flex justify-content-between flex-column overflow-hidden" style="position: relative;">
                                <!--begin::Hidden-->
                                <div class="d-flex flex-stack flex-wrap flex-grow-1 px-9 pt-9 pb-3">
                                    <div class="me-2">
                                        <span class="fw-bolder text-gray-800 d-block fs-3">Sales</span>
                                        <span class="text-gray-400 fw-bold">Oct 8 - Oct 26 21</span>
                                    </div>
                                    <div class="fw-bolder fs-3 text-primary">$15,300</div>
                                </div>
                                <!--end::Hidden-->
                                <!--begin::Chart-->
                                <div class="mixed-widget-10-chart" data-kt-color="primary" style="height: 175px; min-height: 190px;">
                                    <div id="apexchartsb5ijcw22l" class="apexcharts-canvas apexchartsb5ijcw22l apexcharts-theme-light" style="width: 938px; height: 175px;">
                                        <svg id="SvgjsSvg1416" width="938" height="175" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <g id="SvgjsG1418" class="apexcharts-inner apexcharts-graphical" transform="translate(42.11458396911621, 40)">
                                                <defs id="SvgjsDefs1417">
                                                    <linearGradient id="SvgjsLinearGradient1422" x1="0" y1="0" x2="0" y2="1">
                                                        <stop id="SvgjsStop1423" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop>
                                                        <stop id="SvgjsStop1424" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop>
                                                        <stop id="SvgjsStop1425" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop>
                                                    </linearGradient>
                                                    <clipPath id="gridRectMaskb5ijcw22l">
                                                        <rect id="SvgjsRect1427" width="891.8854160308838" height="95.03333127593993" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="forecastMaskb5ijcw22l"></clipPath>
                                                    <clipPath id="nonForecastMaskb5ijcw22l"></clipPath>
                                                    <clipPath id="gridRectMarkerMaskb5ijcw22l">
                                                        <rect id="SvgjsRect1428" width="889.8854160308838" height="97.03333127593993" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                </defs>
                                                <rect id="SvgjsRect1426" width="27.68391925096512" height="93.03333127593993" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient1422)" class="apexcharts-xcrosshairs" y2="93.03333127593993" filter="none" fill-opacity="0.9"></rect>
                                                <g id="SvgjsG1468" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1469" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)">
                                                        <text id="SvgjsText1471" font-family="inherit" x="55.36783850193024" y="122.03333127593993" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;">
                                                            <tspan id="SvgjsTspan1472">Feb</tspan>
                                                            <title>Feb</title></text>
                                                        <text id="SvgjsText1474" font-family="inherit" x="166.1035155057907" y="122.03333127593993" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;">
                                                            <tspan id="SvgjsTspan1475">Mar</tspan>
                                                            <title>Mar</title></text>
                                                        <text id="SvgjsText1477" font-family="inherit" x="276.8391925096512" y="122.03333127593993" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;">
                                                            <tspan id="SvgjsTspan1478">Apr</tspan>
                                                            <title>Apr</title></text>
                                                        <text id="SvgjsText1480" font-family="inherit" x="387.57486951351166" y="122.03333127593993" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;">
                                                            <tspan id="SvgjsTspan1481">May</tspan>
                                                            <title>May</title></text>
                                                        <text id="SvgjsText1483" font-family="inherit" x="498.31054651737213" y="122.03333127593993" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;">
                                                            <tspan id="SvgjsTspan1484">Jun</tspan>
                                                            <title>Jun</title></text>
                                                        <text id="SvgjsText1486" font-family="inherit" x="609.0462235212326" y="122.03333127593993" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;">
                                                            <tspan id="SvgjsTspan1487">Jul</tspan>
                                                            <title>Jul</title></text>
                                                        <text id="SvgjsText1489" font-family="inherit" x="719.7819005250931" y="122.03333127593993" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;">
                                                            <tspan id="SvgjsTspan1490">Aug</tspan>
                                                            <title>Aug</title></text>
                                                        <text id="SvgjsText1492" font-family="inherit" x="830.5175775289536" y="122.03333127593993" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;">
                                                            <tspan id="SvgjsTspan1493">Sep</tspan>
                                                            <title>Sep</title></text>
                                                    </g>
                                                </g>
                                                <g id="SvgjsG1506" class="apexcharts-grid">
                                                    <g id="SvgjsG1507" class="apexcharts-gridlines-horizontal">
                                                        <line id="SvgjsLine1509" x1="0" y1="0" x2="885.8854160308838" y2="0" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1510" x1="0" y1="23.258332818984982" x2="885.8854160308838" y2="23.258332818984982" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1511" x1="0" y1="46.516665637969965" x2="885.8854160308838" y2="46.516665637969965" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1512" x1="0" y1="69.77499845695495" x2="885.8854160308838" y2="69.77499845695495" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1513" x1="0" y1="93.03333127593993" x2="885.8854160308838" y2="93.03333127593993" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1508" class="apexcharts-gridlines-vertical"></g>
                                                    <line id="SvgjsLine1515" x1="0" y1="93.03333127593993" x2="885.8854160308838" y2="93.03333127593993" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1514" x1="0" y1="1" x2="0" y2="93.03333127593993" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1429" class="apexcharts-bar-series apexcharts-plot-series">
                                                    <g id="SvgjsG1430" class="apexcharts-series" rel="1" seriesName="NetxProfit" data:realIndex="0">
                                                        <path id="SvgjsPath1434" d="M 27.68391925096512 93.03333127593993L 27.68391925096512 38.88749922847747Q 27.68391925096512 34.88749922847747 31.68391925096512 34.88749922847747L 49.36783850193024 34.88749922847747Q 53.36783850193024 34.88749922847747 53.36783850193024 38.88749922847747L 53.36783850193024 38.88749922847747L 53.36783850193024 93.03333127593993L 53.36783850193024 93.03333127593993z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 27.68391925096512 93.03333127593993L 27.68391925096512 38.88749922847747Q 27.68391925096512 34.88749922847747 31.68391925096512 34.88749922847747L 49.36783850193024 34.88749922847747Q 53.36783850193024 34.88749922847747 53.36783850193024 38.88749922847747L 53.36783850193024 38.88749922847747L 53.36783850193024 93.03333127593993L 53.36783850193024 93.03333127593993z" pathFrom="M 27.68391925096512 93.03333127593993L 27.68391925096512 93.03333127593993L 53.36783850193024 93.03333127593993L 53.36783850193024 93.03333127593993L 53.36783850193024 93.03333127593993L 53.36783850193024 93.03333127593993L 53.36783850193024 93.03333127593993L 27.68391925096512 93.03333127593993" cy="34.88749922847747" cx="137.4195962548256" j="0" val="50" barHeight="58.145832047462456" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1436" d="M 138.4195962548256 93.03333127593993L 138.4195962548256 27.258332818984982Q 138.4195962548256 23.258332818984982 142.4195962548256 23.258332818984982L 160.1035155057907 23.258332818984982Q 164.1035155057907 23.258332818984982 164.1035155057907 27.258332818984982L 164.1035155057907 27.258332818984982L 164.1035155057907 93.03333127593993L 164.1035155057907 93.03333127593993z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 138.4195962548256 93.03333127593993L 138.4195962548256 27.258332818984982Q 138.4195962548256 23.258332818984982 142.4195962548256 23.258332818984982L 160.1035155057907 23.258332818984982Q 164.1035155057907 23.258332818984982 164.1035155057907 27.258332818984982L 164.1035155057907 27.258332818984982L 164.1035155057907 93.03333127593993L 164.1035155057907 93.03333127593993z" pathFrom="M 138.4195962548256 93.03333127593993L 138.4195962548256 93.03333127593993L 164.1035155057907 93.03333127593993L 164.1035155057907 93.03333127593993L 164.1035155057907 93.03333127593993L 164.1035155057907 93.03333127593993L 164.1035155057907 93.03333127593993L 138.4195962548256 93.03333127593993" cy="23.258332818984982" cx="248.15527325868607" j="1" val="60" barHeight="69.77499845695495" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1438" d="M 249.15527325868607 93.03333127593993L 249.15527325868607 15.629166409492498Q 249.15527325868607 11.629166409492498 253.15527325868607 11.629166409492498L 270.8391925096512 11.629166409492498Q 274.8391925096512 11.629166409492498 274.8391925096512 15.629166409492498L 274.8391925096512 15.629166409492498L 274.8391925096512 93.03333127593993L 274.8391925096512 93.03333127593993z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 249.15527325868607 93.03333127593993L 249.15527325868607 15.629166409492498Q 249.15527325868607 11.629166409492498 253.15527325868607 11.629166409492498L 270.8391925096512 11.629166409492498Q 274.8391925096512 11.629166409492498 274.8391925096512 15.629166409492498L 274.8391925096512 15.629166409492498L 274.8391925096512 93.03333127593993L 274.8391925096512 93.03333127593993z" pathFrom="M 249.15527325868607 93.03333127593993L 249.15527325868607 93.03333127593993L 274.8391925096512 93.03333127593993L 274.8391925096512 93.03333127593993L 274.8391925096512 93.03333127593993L 274.8391925096512 93.03333127593993L 274.8391925096512 93.03333127593993L 249.15527325868607 93.03333127593993" cy="11.629166409492498" cx="358.89095026254654" j="2" val="70" barHeight="81.40416486644743" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1440" d="M 359.89095026254654 93.03333127593993L 359.89095026254654 4Q 359.89095026254654 0 363.89095026254654 0L 381.57486951351166 0Q 385.57486951351166 0 385.57486951351166 4L 385.57486951351166 4L 385.57486951351166 93.03333127593993L 385.57486951351166 93.03333127593993z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 359.89095026254654 93.03333127593993L 359.89095026254654 4Q 359.89095026254654 0 363.89095026254654 0L 381.57486951351166 0Q 385.57486951351166 0 385.57486951351166 4L 385.57486951351166 4L 385.57486951351166 93.03333127593993L 385.57486951351166 93.03333127593993z" pathFrom="M 359.89095026254654 93.03333127593993L 359.89095026254654 93.03333127593993L 385.57486951351166 93.03333127593993L 385.57486951351166 93.03333127593993L 385.57486951351166 93.03333127593993L 385.57486951351166 93.03333127593993L 385.57486951351166 93.03333127593993L 359.89095026254654 93.03333127593993" cy="0" cx="469.626627266407" j="3" val="80" barHeight="93.03333127593993" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1442" d="M 470.626627266407 93.03333127593993L 470.626627266407 27.258332818984982Q 470.626627266407 23.258332818984982 474.626627266407 23.258332818984982L 492.31054651737213 23.258332818984982Q 496.31054651737213 23.258332818984982 496.31054651737213 27.258332818984982L 496.31054651737213 27.258332818984982L 496.31054651737213 93.03333127593993L 496.31054651737213 93.03333127593993z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 470.626627266407 93.03333127593993L 470.626627266407 27.258332818984982Q 470.626627266407 23.258332818984982 474.626627266407 23.258332818984982L 492.31054651737213 23.258332818984982Q 496.31054651737213 23.258332818984982 496.31054651737213 27.258332818984982L 496.31054651737213 27.258332818984982L 496.31054651737213 93.03333127593993L 496.31054651737213 93.03333127593993z" pathFrom="M 470.626627266407 93.03333127593993L 470.626627266407 93.03333127593993L 496.31054651737213 93.03333127593993L 496.31054651737213 93.03333127593993L 496.31054651737213 93.03333127593993L 496.31054651737213 93.03333127593993L 496.31054651737213 93.03333127593993L 470.626627266407 93.03333127593993" cy="23.258332818984982" cx="580.3623042702675" j="4" val="60" barHeight="69.77499845695495" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1444" d="M 581.3623042702675 93.03333127593993L 581.3623042702675 38.88749922847747Q 581.3623042702675 34.88749922847747 585.3623042702675 34.88749922847747L 603.0462235212326 34.88749922847747Q 607.0462235212326 34.88749922847747 607.0462235212326 38.88749922847747L 607.0462235212326 38.88749922847747L 607.0462235212326 93.03333127593993L 607.0462235212326 93.03333127593993z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 581.3623042702675 93.03333127593993L 581.3623042702675 38.88749922847747Q 581.3623042702675 34.88749922847747 585.3623042702675 34.88749922847747L 603.0462235212326 34.88749922847747Q 607.0462235212326 34.88749922847747 607.0462235212326 38.88749922847747L 607.0462235212326 38.88749922847747L 607.0462235212326 93.03333127593993L 607.0462235212326 93.03333127593993z" pathFrom="M 581.3623042702675 93.03333127593993L 581.3623042702675 93.03333127593993L 607.0462235212326 93.03333127593993L 607.0462235212326 93.03333127593993L 607.0462235212326 93.03333127593993L 607.0462235212326 93.03333127593993L 607.0462235212326 93.03333127593993L 581.3623042702675 93.03333127593993" cy="34.88749922847747" cx="691.097981274128" j="5" val="50" barHeight="58.145832047462456" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1446" d="M 692.097981274128 93.03333127593993L 692.097981274128 15.629166409492498Q 692.097981274128 11.629166409492498 696.097981274128 11.629166409492498L 713.7819005250931 11.629166409492498Q 717.7819005250931 11.629166409492498 717.7819005250931 15.629166409492498L 717.7819005250931 15.629166409492498L 717.7819005250931 93.03333127593993L 717.7819005250931 93.03333127593993z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 692.097981274128 93.03333127593993L 692.097981274128 15.629166409492498Q 692.097981274128 11.629166409492498 696.097981274128 11.629166409492498L 713.7819005250931 11.629166409492498Q 717.7819005250931 11.629166409492498 717.7819005250931 15.629166409492498L 717.7819005250931 15.629166409492498L 717.7819005250931 93.03333127593993L 717.7819005250931 93.03333127593993z" pathFrom="M 692.097981274128 93.03333127593993L 692.097981274128 93.03333127593993L 717.7819005250931 93.03333127593993L 717.7819005250931 93.03333127593993L 717.7819005250931 93.03333127593993L 717.7819005250931 93.03333127593993L 717.7819005250931 93.03333127593993L 692.097981274128 93.03333127593993" cy="11.629166409492498" cx="801.8336582779884" j="6" val="70" barHeight="81.40416486644743" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1448" d="M 802.8336582779884 93.03333127593993L 802.8336582779884 27.258332818984982Q 802.8336582779884 23.258332818984982 806.8336582779884 23.258332818984982L 824.5175775289536 23.258332818984982Q 828.5175775289536 23.258332818984982 828.5175775289536 27.258332818984982L 828.5175775289536 27.258332818984982L 828.5175775289536 93.03333127593993L 828.5175775289536 93.03333127593993z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 802.8336582779884 93.03333127593993L 802.8336582779884 27.258332818984982Q 802.8336582779884 23.258332818984982 806.8336582779884 23.258332818984982L 824.5175775289536 23.258332818984982Q 828.5175775289536 23.258332818984982 828.5175775289536 27.258332818984982L 828.5175775289536 27.258332818984982L 828.5175775289536 93.03333127593993L 828.5175775289536 93.03333127593993z" pathFrom="M 802.8336582779884 93.03333127593993L 802.8336582779884 93.03333127593993L 828.5175775289536 93.03333127593993L 828.5175775289536 93.03333127593993L 828.5175775289536 93.03333127593993L 828.5175775289536 93.03333127593993L 828.5175775289536 93.03333127593993L 802.8336582779884 93.03333127593993" cy="23.258332818984982" cx="912.5693352818489" j="7" val="60" barHeight="69.77499845695495" barWidth="27.68391925096512"></path>
                                                        <g id="SvgjsG1432" class="apexcharts-bar-goals-markers" style="pointer-events: none">
                                                            <g id="SvgjsG1433" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1435" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1437" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1439" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1441" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1443" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1445" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1447" className="apexcharts-bar-goals-groups"></g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1449" class="apexcharts-series" rel="2" seriesName="Revenue" data:realIndex="1">
                                                        <path id="SvgjsPath1453" d="M 55.36783850193024 93.03333127593993L 55.36783850193024 38.88749922847747Q 55.36783850193024 34.88749922847747 59.36783850193024 34.88749922847747L 77.05175775289536 34.88749922847747Q 81.05175775289536 34.88749922847747 81.05175775289536 38.88749922847747L 81.05175775289536 38.88749922847747L 81.05175775289536 93.03333127593993L 81.05175775289536 93.03333127593993z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 55.36783850193024 93.03333127593993L 55.36783850193024 38.88749922847747Q 55.36783850193024 34.88749922847747 59.36783850193024 34.88749922847747L 77.05175775289536 34.88749922847747Q 81.05175775289536 34.88749922847747 81.05175775289536 38.88749922847747L 81.05175775289536 38.88749922847747L 81.05175775289536 93.03333127593993L 81.05175775289536 93.03333127593993z" pathFrom="M 55.36783850193024 93.03333127593993L 55.36783850193024 93.03333127593993L 81.05175775289536 93.03333127593993L 81.05175775289536 93.03333127593993L 81.05175775289536 93.03333127593993L 81.05175775289536 93.03333127593993L 81.05175775289536 93.03333127593993L 55.36783850193024 93.03333127593993" cy="34.88749922847747" cx="165.1035155057907" j="0" val="50" barHeight="58.145832047462456" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1455" d="M 166.1035155057907 93.03333127593993L 166.1035155057907 27.258332818984982Q 166.1035155057907 23.258332818984982 170.1035155057907 23.258332818984982L 187.78743475675583 23.258332818984982Q 191.78743475675583 23.258332818984982 191.78743475675583 27.258332818984982L 191.78743475675583 27.258332818984982L 191.78743475675583 93.03333127593993L 191.78743475675583 93.03333127593993z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 166.1035155057907 93.03333127593993L 166.1035155057907 27.258332818984982Q 166.1035155057907 23.258332818984982 170.1035155057907 23.258332818984982L 187.78743475675583 23.258332818984982Q 191.78743475675583 23.258332818984982 191.78743475675583 27.258332818984982L 191.78743475675583 27.258332818984982L 191.78743475675583 93.03333127593993L 191.78743475675583 93.03333127593993z" pathFrom="M 166.1035155057907 93.03333127593993L 166.1035155057907 93.03333127593993L 191.78743475675583 93.03333127593993L 191.78743475675583 93.03333127593993L 191.78743475675583 93.03333127593993L 191.78743475675583 93.03333127593993L 191.78743475675583 93.03333127593993L 166.1035155057907 93.03333127593993" cy="23.258332818984982" cx="275.8391925096512" j="1" val="60" barHeight="69.77499845695495" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1457" d="M 276.8391925096512 93.03333127593993L 276.8391925096512 15.629166409492498Q 276.8391925096512 11.629166409492498 280.8391925096512 11.629166409492498L 298.5231117606163 11.629166409492498Q 302.5231117606163 11.629166409492498 302.5231117606163 15.629166409492498L 302.5231117606163 15.629166409492498L 302.5231117606163 93.03333127593993L 302.5231117606163 93.03333127593993z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 276.8391925096512 93.03333127593993L 276.8391925096512 15.629166409492498Q 276.8391925096512 11.629166409492498 280.8391925096512 11.629166409492498L 298.5231117606163 11.629166409492498Q 302.5231117606163 11.629166409492498 302.5231117606163 15.629166409492498L 302.5231117606163 15.629166409492498L 302.5231117606163 93.03333127593993L 302.5231117606163 93.03333127593993z" pathFrom="M 276.8391925096512 93.03333127593993L 276.8391925096512 93.03333127593993L 302.5231117606163 93.03333127593993L 302.5231117606163 93.03333127593993L 302.5231117606163 93.03333127593993L 302.5231117606163 93.03333127593993L 302.5231117606163 93.03333127593993L 276.8391925096512 93.03333127593993" cy="11.629166409492498" cx="386.57486951351166" j="2" val="70" barHeight="81.40416486644743" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1459" d="M 387.57486951351166 93.03333127593993L 387.57486951351166 4Q 387.57486951351166 0 391.57486951351166 0L 409.2587887644768 0Q 413.2587887644768 0 413.2587887644768 4L 413.2587887644768 4L 413.2587887644768 93.03333127593993L 413.2587887644768 93.03333127593993z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 387.57486951351166 93.03333127593993L 387.57486951351166 4Q 387.57486951351166 0 391.57486951351166 0L 409.2587887644768 0Q 413.2587887644768 0 413.2587887644768 4L 413.2587887644768 4L 413.2587887644768 93.03333127593993L 413.2587887644768 93.03333127593993z" pathFrom="M 387.57486951351166 93.03333127593993L 387.57486951351166 93.03333127593993L 413.2587887644768 93.03333127593993L 413.2587887644768 93.03333127593993L 413.2587887644768 93.03333127593993L 413.2587887644768 93.03333127593993L 413.2587887644768 93.03333127593993L 387.57486951351166 93.03333127593993" cy="0" cx="497.31054651737213" j="3" val="80" barHeight="93.03333127593993" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1461" d="M 498.31054651737213 93.03333127593993L 498.31054651737213 27.258332818984982Q 498.31054651737213 23.258332818984982 502.31054651737213 23.258332818984982L 519.9944657683372 23.258332818984982Q 523.9944657683372 23.258332818984982 523.9944657683372 27.258332818984982L 523.9944657683372 27.258332818984982L 523.9944657683372 93.03333127593993L 523.9944657683372 93.03333127593993z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 498.31054651737213 93.03333127593993L 498.31054651737213 27.258332818984982Q 498.31054651737213 23.258332818984982 502.31054651737213 23.258332818984982L 519.9944657683372 23.258332818984982Q 523.9944657683372 23.258332818984982 523.9944657683372 27.258332818984982L 523.9944657683372 27.258332818984982L 523.9944657683372 93.03333127593993L 523.9944657683372 93.03333127593993z" pathFrom="M 498.31054651737213 93.03333127593993L 498.31054651737213 93.03333127593993L 523.9944657683372 93.03333127593993L 523.9944657683372 93.03333127593993L 523.9944657683372 93.03333127593993L 523.9944657683372 93.03333127593993L 523.9944657683372 93.03333127593993L 498.31054651737213 93.03333127593993" cy="23.258332818984982" cx="608.0462235212326" j="4" val="60" barHeight="69.77499845695495" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1463" d="M 609.0462235212326 93.03333127593993L 609.0462235212326 38.88749922847747Q 609.0462235212326 34.88749922847747 613.0462235212326 34.88749922847747L 630.7301427721977 34.88749922847747Q 634.7301427721977 34.88749922847747 634.7301427721977 38.88749922847747L 634.7301427721977 38.88749922847747L 634.7301427721977 93.03333127593993L 634.7301427721977 93.03333127593993z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 609.0462235212326 93.03333127593993L 609.0462235212326 38.88749922847747Q 609.0462235212326 34.88749922847747 613.0462235212326 34.88749922847747L 630.7301427721977 34.88749922847747Q 634.7301427721977 34.88749922847747 634.7301427721977 38.88749922847747L 634.7301427721977 38.88749922847747L 634.7301427721977 93.03333127593993L 634.7301427721977 93.03333127593993z" pathFrom="M 609.0462235212326 93.03333127593993L 609.0462235212326 93.03333127593993L 634.7301427721977 93.03333127593993L 634.7301427721977 93.03333127593993L 634.7301427721977 93.03333127593993L 634.7301427721977 93.03333127593993L 634.7301427721977 93.03333127593993L 609.0462235212326 93.03333127593993" cy="34.88749922847747" cx="718.7819005250931" j="5" val="50" barHeight="58.145832047462456" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1465" d="M 719.7819005250931 93.03333127593993L 719.7819005250931 15.629166409492498Q 719.7819005250931 11.629166409492498 723.7819005250931 11.629166409492498L 741.4658197760582 11.629166409492498Q 745.4658197760582 11.629166409492498 745.4658197760582 15.629166409492498L 745.4658197760582 15.629166409492498L 745.4658197760582 93.03333127593993L 745.4658197760582 93.03333127593993z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 719.7819005250931 93.03333127593993L 719.7819005250931 15.629166409492498Q 719.7819005250931 11.629166409492498 723.7819005250931 11.629166409492498L 741.4658197760582 11.629166409492498Q 745.4658197760582 11.629166409492498 745.4658197760582 15.629166409492498L 745.4658197760582 15.629166409492498L 745.4658197760582 93.03333127593993L 745.4658197760582 93.03333127593993z" pathFrom="M 719.7819005250931 93.03333127593993L 719.7819005250931 93.03333127593993L 745.4658197760582 93.03333127593993L 745.4658197760582 93.03333127593993L 745.4658197760582 93.03333127593993L 745.4658197760582 93.03333127593993L 745.4658197760582 93.03333127593993L 719.7819005250931 93.03333127593993" cy="11.629166409492498" cx="829.5175775289536" j="6" val="70" barHeight="81.40416486644743" barWidth="27.68391925096512"></path>
                                                        <path id="SvgjsPath1467" d="M 830.5175775289536 93.03333127593993L 830.5175775289536 27.258332818984982Q 830.5175775289536 23.258332818984982 834.5175775289536 23.258332818984982L 852.2014967799187 23.258332818984982Q 856.2014967799187 23.258332818984982 856.2014967799187 27.258332818984982L 856.2014967799187 27.258332818984982L 856.2014967799187 93.03333127593993L 856.2014967799187 93.03333127593993z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="round" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskb5ijcw22l)" pathTo="M 830.5175775289536 93.03333127593993L 830.5175775289536 27.258332818984982Q 830.5175775289536 23.258332818984982 834.5175775289536 23.258332818984982L 852.2014967799187 23.258332818984982Q 856.2014967799187 23.258332818984982 856.2014967799187 27.258332818984982L 856.2014967799187 27.258332818984982L 856.2014967799187 93.03333127593993L 856.2014967799187 93.03333127593993z" pathFrom="M 830.5175775289536 93.03333127593993L 830.5175775289536 93.03333127593993L 856.2014967799187 93.03333127593993L 856.2014967799187 93.03333127593993L 856.2014967799187 93.03333127593993L 856.2014967799187 93.03333127593993L 856.2014967799187 93.03333127593993L 830.5175775289536 93.03333127593993" cy="23.258332818984982" cx="940.253254532814" j="7" val="60" barHeight="69.77499845695495" barWidth="27.68391925096512"></path>
                                                        <g id="SvgjsG1451" class="apexcharts-bar-goals-markers" style="pointer-events: none">
                                                            <g id="SvgjsG1452" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1454" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1456" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1458" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1460" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1462" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1464" className="apexcharts-bar-goals-groups"></g>
                                                            <g id="SvgjsG1466" className="apexcharts-bar-goals-groups"></g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1431" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                    <g id="SvgjsG1450" class="apexcharts-datalabels" data:realIndex="1"></g>
                                                </g>
                                                <line id="SvgjsLine1516" x1="0" y1="0" x2="885.8854160308838" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1517" x1="0" y1="0" x2="885.8854160308838" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1518" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1519" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1520" class="apexcharts-point-annotations"></g>
                                            </g><g id="SvgjsG1494" class="apexcharts-yaxis" rel="0" transform="translate(12.114583969116211, 0)"><g id="SvgjsG1495" class="apexcharts-yaxis-texts-g"><text id="SvgjsText1496" font-family="inherit" x="20" y="41.4" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan1497">80</tspan>
                                                <title>80</title></text>
                                                <text id="SvgjsText1498" font-family="inherit" x="20" y="64.65833281898497" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;">
                                                    <tspan id="SvgjsTspan1499">60</tspan>
                                                    <title>60</title></text>
                                                <text id="SvgjsText1500" font-family="inherit" x="20" y="87.91666563796997" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;">
                                                    <tspan id="SvgjsTspan1501">40</tspan>
                                                    <title>40</title></text>
                                                <text id="SvgjsText1502" font-family="inherit" x="20" y="111.17499845695495" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;">
                                                    <tspan id="SvgjsTspan1503">20</tspan>
                                                    <title>20</title></text>
                                                <text id="SvgjsText1504" font-family="inherit" x="20" y="134.43333127593993" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;">
                                                    <tspan id="SvgjsTspan1505">0</tspan>
                                                    <title>0</title></text>
                                            </g>
                                            </g><g id="SvgjsG1419" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 87.5px;"></div>
                                        <div class="apexcharts-tooltip apexcharts-theme-light">
                                            <div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;"></div>
                                            <div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 158, 247);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                                    <div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                            <div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(228, 230, 239);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                                    <div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                            <div class="apexcharts-yaxistooltip-text"></div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Chart-->
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 939px; height: 276px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                        </div>
                        <!--end::Mixed Widget 10-->
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
                <!--begin::Row-->
                <div class="row gy-5 g-xl-8">
                    <!--begin::Col-->
                    <div class="col-xl-4">
                        <!--begin::List Widget 3-->
                        <div class="card card-xl-stretch mb-xl-8">
                            <!--begin::Header-->
                            <div class="card-header border-0">
                                <h3 class="card-title fw-bolder text-dark">Todo</h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <button type="button" class="btn btn-sm btn-icon btn-color-primary btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                                    <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                </g>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </button>
                                    <!--begin::Menu 3-->
                                    <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-bold w-200px py-3" data-kt-menu="true">
                                        <!--begin::Heading-->
                                        <div class="menu-item px-3">
                                            <div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">Payments</div>
                                        </div>
                                        <!--end::Heading-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Create Invoice</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link flex-stack px-3">Create Payment
															<i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify a target name for future usage and reference" aria-label="Specify a target name for future usage and reference"></i></a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Generate Bill</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-end">
                                            <a href="#" class="menu-link px-3">
                                                <span class="menu-title">Subscription</span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <!--begin::Menu sub-->
                                            <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Plans</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Billing</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Statements</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator my-2"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3">
                                                        <!--begin::Switch-->
                                                        <label class="form-check form-switch form-check-custom form-check-solid">
                                                            <!--begin::Input-->
                                                            <input class="form-check-input w-30px h-20px" type="checkbox" value="1" checked="checked" name="notifications">
                                                            <!--end::Input-->
                                                            <!--end::Label-->
                                                            <span class="form-check-label text-muted fs-6">Recuring</span>
                                                            <!--end::Label-->
                                                        </label>
                                                        <!--end::Switch-->
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu sub-->
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3 my-1">
                                            <a href="#" class="menu-link px-3">Settings</a>
                                        </div>
                                        <!--end::Menu item-->
                                    </div>
                                    <!--end::Menu 3-->
                                    <!--end::Menu-->
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-2">
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-8">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-vertical h-40px bg-success"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <div class="form-check form-check-custom form-check-solid mx-5">
                                        <input class="form-check-input" type="checkbox" value="">
                                    </div>
                                    <!--end::Checkbox-->
                                    <!--begin::Description-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-gray-800 text-hover-primary fw-bolder fs-6">Create FireStone Logo</a>
                                        <span class="text-muted fw-bold d-block">Due in 2 Days</span>
                                    </div>
                                    <!--end::Description-->
                                    <span class="badge badge-light-success fs-8 fw-bolder">New</span>
                                </div>
                                <!--end:Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-8">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-vertical h-40px bg-primary"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <div class="form-check form-check-custom form-check-solid mx-5">
                                        <input class="form-check-input" type="checkbox" value="">
                                    </div>
                                    <!--end::Checkbox-->
                                    <!--begin::Description-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-gray-800 text-hover-primary fw-bolder fs-6">Stakeholder Meeting</a>
                                        <span class="text-muted fw-bold d-block">Due in 3 Days</span>
                                    </div>
                                    <!--end::Description-->
                                    <span class="badge badge-light-primary fs-8 fw-bolder">New</span>
                                </div>
                                <!--end:Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-8">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-vertical h-40px bg-warning"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <div class="form-check form-check-custom form-check-solid mx-5">
                                        <input class="form-check-input" type="checkbox" value="">
                                    </div>
                                    <!--end::Checkbox-->
                                    <!--begin::Description-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-gray-800 text-hover-primary fw-bolder fs-6">Scoping &amp; Estimations</a>
                                        <span class="text-muted fw-bold d-block">Due in 5 Days</span>
                                    </div>
                                    <!--end::Description-->
                                    <span class="badge badge-light-warning fs-8 fw-bolder">New</span>
                                </div>
                                <!--end:Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-8">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-vertical h-40px bg-primary"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <div class="form-check form-check-custom form-check-solid mx-5">
                                        <input class="form-check-input" type="checkbox" value="">
                                    </div>
                                    <!--end::Checkbox-->
                                    <!--begin::Description-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-gray-800 text-hover-primary fw-bolder fs-6">KPI App Showcase</a>
                                        <span class="text-muted fw-bold d-block">Due in 2 Days</span>
                                    </div>
                                    <!--end::Description-->
                                    <span class="badge badge-light-primary fs-8 fw-bolder">New</span>
                                </div>
                                <!--end:Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-8">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-vertical h-40px bg-danger"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <div class="form-check form-check-custom form-check-solid mx-5">
                                        <input class="form-check-input" type="checkbox" value="">
                                    </div>
                                    <!--end::Checkbox-->
                                    <!--begin::Description-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-gray-800 text-hover-primary fw-bolder fs-6">Project Meeting</a>
                                        <span class="text-muted fw-bold d-block">Due in 12 Days</span>
                                    </div>
                                    <!--end::Description-->
                                    <span class="badge badge-light-danger fs-8 fw-bolder">New</span>
                                </div>
                                <!--end:Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center">
                                    <!--begin::Bullet-->
                                    <span class="bullet bullet-vertical h-40px bg-success"></span>
                                    <!--end::Bullet-->
                                    <!--begin::Checkbox-->
                                    <div class="form-check form-check-custom form-check-solid mx-5">
                                        <input class="form-check-input" type="checkbox" value="">
                                    </div>
                                    <!--end::Checkbox-->
                                    <!--begin::Description-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-gray-800 text-hover-primary fw-bolder fs-6">Customers Update</a>
                                        <span class="text-muted fw-bold d-block">Due in 1 week</span>
                                    </div>
                                    <!--end::Description-->
                                    <span class="badge badge-light-success fs-8 fw-bolder">New</span>
                                </div>
                                <!--end:Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end:List Widget 3-->
                    </div>
                    <!--end::Col-->
                    <!--begin::Col-->
                    <div class="col-xl-8">
                        <!--begin::Tables Widget 9-->
                        <div class="card card-xl-stretch mb-5 mb-xl-8">
                            <!--begin::Header-->
                            <div class="card-header border-0 pt-5">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="card-label fw-bolder fs-3 mb-1">Members Statistics</span>
                                    <span class="text-muted mt-1 fw-bold fs-7">Over 500 members</span>
                                </h3>
                                <div class="card-toolbar" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-trigger="hover" title="" data-bs-original-title="Click to add a user">
                                    <a href="#" class="btn btn-sm btn-light btn-active-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_invite_friends">
                                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
                                        <span class="svg-icon svg-icon-3">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="black"></rect>
                                                <rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="black"></rect>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                        New Member</a>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body py-3">
                                <!--begin::Table container-->
                                <div class="table-responsive">
                                    <!--begin::Table-->
                                    <table class="table table-row-dashed table-row-gray-300 align-middle gs-0 gy-4">
                                        <!--begin::Table head-->
                                        <thead>
                                            <tr class="fw-bolder text-muted">
                                                <th class="w-25px">
                                                    <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                        <input class="form-check-input" type="checkbox" value="1" data-kt-check="true" data-kt-check-target=".widget-9-check">
                                                    </div>
                                                </th>
                                                <th class="min-w-150px">Authors</th>
                                                <th class="min-w-140px">Company</th>
                                                <th class="min-w-120px">Progress</th>
                                                <th class="min-w-100px text-end">Actions</th>
                                            </tr>
                                        </thead>
                                        <!--end::Table head-->
                                        <!--begin::Table body-->
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                        <input class="form-check-input widget-9-check" type="checkbox" value="1">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <div class="symbol symbol-45px me-5">
                                                            <img src="assets/media/avatars/150-11.jpg" alt="">
                                                        </div>
                                                        <div class="d-flex justify-content-start flex-column">
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Ana Simmons</a>
                                                            <span class="text-muted fw-bold text-muted d-block fs-7">HTML, JS, ReactJS</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="#" class="text-dark fw-bolder text-hover-primary d-block fs-6">Intertico</a>
                                                    <span class="text-muted fw-bold text-muted d-block fs-7">Web, UI/UX Design</span>
                                                </td>
                                                <td class="text-end">
                                                    <div class="d-flex flex-column w-100 me-2">
                                                        <div class="d-flex flex-stack mb-2">
                                                            <span class="text-muted me-2 fs-7 fw-bold">50%</span>
                                                        </div>
                                                        <div class="progress h-6px w-100">
                                                            <div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-end flex-shrink-0">
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z" fill="black"></path>
                                                                    <path opacity="0.3" d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black"></path>
                                                                    <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                        <input class="form-check-input widget-9-check" type="checkbox" value="1">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <div class="symbol symbol-45px me-5">
                                                            <img src="assets/media/avatars/150-3.jpg" alt="">
                                                        </div>
                                                        <div class="d-flex justify-content-start flex-column">
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Jessie Clarcson</a>
                                                            <span class="text-muted fw-bold text-muted d-block fs-7">C#, ASP.NET, MS SQL</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="#" class="text-dark fw-bolder text-hover-primary d-block fs-6">Agoda</a>
                                                    <span class="text-muted fw-bold text-muted d-block fs-7">Houses &amp; Hotels</span>
                                                </td>
                                                <td class="text-end">
                                                    <div class="d-flex flex-column w-100 me-2">
                                                        <div class="d-flex flex-stack mb-2">
                                                            <span class="text-muted me-2 fs-7 fw-bold">70%</span>
                                                        </div>
                                                        <div class="progress h-6px w-100">
                                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-end flex-shrink-0">
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z" fill="black"></path>
                                                                    <path opacity="0.3" d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black"></path>
                                                                    <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                        <input class="form-check-input widget-9-check" type="checkbox" value="1">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <div class="symbol symbol-45px me-5">
                                                            <img src="assets/media/avatars/150-4.jpg" alt="">
                                                        </div>
                                                        <div class="d-flex justify-content-start flex-column">
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Lebron Wayde</a>
                                                            <span class="text-muted fw-bold text-muted d-block fs-7">PHP, Laravel, VueJS</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="#" class="text-dark fw-bolder text-hover-primary d-block fs-6">RoadGee</a>
                                                    <span class="text-muted fw-bold text-muted d-block fs-7">Transportation</span>
                                                </td>
                                                <td class="text-end">
                                                    <div class="d-flex flex-column w-100 me-2">
                                                        <div class="d-flex flex-stack mb-2">
                                                            <span class="text-muted me-2 fs-7 fw-bold">60%</span>
                                                        </div>
                                                        <div class="progress h-6px w-100">
                                                            <div class="progress-bar bg-success" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-end flex-shrink-0">
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z" fill="black"></path>
                                                                    <path opacity="0.3" d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black"></path>
                                                                    <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                        <input class="form-check-input widget-9-check" type="checkbox" value="1">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <div class="symbol symbol-45px me-5">
                                                            <img src="assets/media/avatars/150-5.jpg" alt="">
                                                        </div>
                                                        <div class="d-flex justify-content-start flex-column">
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Natali Goodwin</a>
                                                            <span class="text-muted fw-bold text-muted d-block fs-7">Python, PostgreSQL, ReactJS</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="#" class="text-dark fw-bolder text-hover-primary d-block fs-6">The Hill</a>
                                                    <span class="text-muted fw-bold text-muted d-block fs-7">Insurance</span>
                                                </td>
                                                <td class="text-end">
                                                    <div class="d-flex flex-column w-100 me-2">
                                                        <div class="d-flex flex-stack mb-2">
                                                            <span class="text-muted me-2 fs-7 fw-bold">50%</span>
                                                        </div>
                                                        <div class="progress h-6px w-100">
                                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-end flex-shrink-0">
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z" fill="black"></path>
                                                                    <path opacity="0.3" d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black"></path>
                                                                    <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                        <input class="form-check-input widget-9-check" type="checkbox" value="1">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <div class="symbol symbol-45px me-5">
                                                            <img src="assets/media/avatars/150-6.jpg" alt="">
                                                        </div>
                                                        <div class="d-flex justify-content-start flex-column">
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Kevin Leonard</a>
                                                            <span class="text-muted fw-bold text-muted d-block fs-7">HTML, JS, ReactJS</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="#" class="text-dark fw-bolder text-hover-primary d-block fs-6">RoadGee</a>
                                                    <span class="text-muted fw-bold text-muted d-block fs-7">Art Director</span>
                                                </td>
                                                <td class="text-end">
                                                    <div class="d-flex flex-column w-100 me-2">
                                                        <div class="d-flex flex-stack mb-2">
                                                            <span class="text-muted me-2 fs-7 fw-bold">90%</span>
                                                        </div>
                                                        <div class="progress h-6px w-100">
                                                            <div class="progress-bar bg-info" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-end flex-shrink-0">
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z" fill="black"></path>
                                                                    <path opacity="0.3" d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                                            <!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black"></path>
                                                                    <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                        <a href="#" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                                            <!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
                                                            <span class="svg-icon svg-icon-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black"></path>
                                                                    <path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black"></path>
                                                                </svg>
                                                            </span>
                                                            <!--end::Svg Icon-->
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <!--end::Table body-->
                                    </table>
                                    <!--end::Table-->
                                </div>
                                <!--end::Table container-->
                            </div>
                            <!--begin::Body-->
                        </div>
                        <!--end::Tables Widget 9-->
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
                <!--begin::Row-->
                <div class="row gy-5 g-xl-8">
                    <!--begin::Col-->
                    <div class="col-xl-4">
                        <!--begin::List Widget 2-->
                        <div class="card card-xl-stretch mb-xl-8">
                            <!--begin::Header-->
                            <div class="card-header border-0">
                                <h3 class="card-title fw-bolder text-dark">Authors</h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <button type="button" class="btn btn-sm btn-icon btn-color-primary btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                                    <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                </g>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </button>
                                    <!--begin::Menu 2-->
                                    <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-bold w-200px" data-kt-menu="true">
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <div class="menu-content fs-6 text-dark fw-bolder px-3 py-4">Quick Actions</div>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu separator-->
                                        <div class="separator mb-3 opacity-75"></div>
                                        <!--end::Menu separator-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">New Ticket</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">New Customer</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
                                            <!--begin::Menu item-->
                                            <a href="#" class="menu-link px-3">
                                                <span class="menu-title">New Group</span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <!--end::Menu item-->
                                            <!--begin::Menu sub-->
                                            <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Admin Group</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Staff Group</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Member Group</a>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu sub-->
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">New Contact</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu separator-->
                                        <div class="separator mt-3 opacity-75"></div>
                                        <!--end::Menu separator-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <div class="menu-content px-3 py-3">
                                                <a class="btn btn-primary btn-sm px-4" href="#">Generate Reports</a>
                                            </div>
                                        </div>
                                        <!--end::Menu item-->
                                    </div>
                                    <!--end::Menu 2-->
                                    <!--end::Menu-->
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-2">
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-7">
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-50px me-5">
                                        <img src="assets/media/avatars/150-1.jpg" class="" alt="">
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Text-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Emma Smith</a>
                                        <span class="text-muted d-block fw-bold">Project Manager</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-7">
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-50px me-5">
                                        <img src="assets/media/avatars/150-4.jpg" class="" alt="">
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Text-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Sean Bean</a>
                                        <span class="text-muted d-block fw-bold">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-7">
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-50px me-5">
                                        <img src="assets/media/avatars/150-12.jpg" class="" alt="">
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Text-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Brian Cox</a>
                                        <span class="text-muted d-block fw-bold">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center mb-7">
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-50px me-5">
                                        <img src="assets/media/avatars/150-8.jpg" class="" alt="">
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Text-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Francis Mitcham</a>
                                        <span class="text-muted d-block fw-bold">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center">
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-50px me-5">
                                        <img src="assets/media/avatars/150-6.jpg" class="" alt="">
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Text-->
                                    <div class="flex-grow-1">
                                        <a href="#" class="text-dark fw-bolder text-hover-primary fs-6">Dan Wilson</a>
                                        <span class="text-muted d-block fw-bold">PHP, SQLite, Artisan CLI</span>
                                    </div>
                                    <!--end::Text-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::List Widget 2-->
                    </div>
                    <!--end::Col-->
                    <!--begin::Col-->
                    <div class="col-xl-4">
                        <!--begin::List Widget 6-->
                        <div class="card card-xl-stretch mb-xl-8">
                            <!--begin::Header-->
                            <div class="card-header border-0">
                                <h3 class="card-title fw-bolder text-dark">Notifications</h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <button type="button" class="btn btn-sm btn-icon btn-color-primary btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                                    <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                </g>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </button>
                                    <!--begin::Menu 3-->
                                    <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-bold w-200px py-3" data-kt-menu="true">
                                        <!--begin::Heading-->
                                        <div class="menu-item px-3">
                                            <div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">Payments</div>
                                        </div>
                                        <!--end::Heading-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Create Invoice</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link flex-stack px-3">Create Payment
															<i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify a target name for future usage and reference" aria-label="Specify a target name for future usage and reference"></i></a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Generate Bill</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-end">
                                            <a href="#" class="menu-link px-3">
                                                <span class="menu-title">Subscription</span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <!--begin::Menu sub-->
                                            <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Plans</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Billing</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Statements</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator my-2"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3">
                                                        <!--begin::Switch-->
                                                        <label class="form-check form-switch form-check-custom form-check-solid">
                                                            <!--begin::Input-->
                                                            <input class="form-check-input w-30px h-20px" type="checkbox" value="1" checked="checked" name="notifications">
                                                            <!--end::Input-->
                                                            <!--end::Label-->
                                                            <span class="form-check-label text-muted fs-6">Recuring</span>
                                                            <!--end::Label-->
                                                        </label>
                                                        <!--end::Switch-->
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu sub-->
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3 my-1">
                                            <a href="#" class="menu-link px-3">Settings</a>
                                        </div>
                                        <!--end::Menu item-->
                                    </div>
                                    <!--end::Menu 3-->
                                    <!--end::Menu-->
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-0">
                                <!--begin::Item-->
                                <div class="d-flex align-items-center bg-light-warning rounded p-5 mb-7">
                                    <!--begin::Icon-->
                                    <span class="svg-icon svg-icon-warning me-5">
                                        <!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="black"></path>
                                                <path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="black"></path>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </span>
                                    <!--end::Icon-->
                                    <!--begin::Title-->
                                    <div class="flex-grow-1 me-2">
                                        <a href="#" class="fw-bolder text-gray-800 text-hover-primary fs-6">Group lunch celebration</a>
                                        <span class="text-muted fw-bold d-block">Due in 2 Days</span>
                                    </div>
                                    <!--end::Title-->
                                    <!--begin::Lable-->
                                    <span class="fw-bolder text-warning py-1">+28%</span>
                                    <!--end::Lable-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center bg-light-success rounded p-5 mb-7">
                                    <!--begin::Icon-->
                                    <span class="svg-icon svg-icon-success me-5">
                                        <!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="black"></path>
                                                <path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="black"></path>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </span>
                                    <!--end::Icon-->
                                    <!--begin::Title-->
                                    <div class="flex-grow-1 me-2">
                                        <a href="#" class="fw-bolder text-gray-800 text-hover-primary fs-6">Navigation optimization</a>
                                        <span class="text-muted fw-bold d-block">Due in 2 Days</span>
                                    </div>
                                    <!--end::Title-->
                                    <!--begin::Lable-->
                                    <span class="fw-bolder text-success py-1">+50%</span>
                                    <!--end::Lable-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center bg-light-danger rounded p-5 mb-7">
                                    <!--begin::Icon-->
                                    <span class="svg-icon svg-icon-danger me-5">
                                        <!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="black"></path>
                                                <path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="black"></path>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </span>
                                    <!--end::Icon-->
                                    <!--begin::Title-->
                                    <div class="flex-grow-1 me-2">
                                        <a href="#" class="fw-bolder text-gray-800 text-hover-primary fs-6">Rebrand strategy planning</a>
                                        <span class="text-muted fw-bold d-block">Due in 5 Days</span>
                                    </div>
                                    <!--end::Title-->
                                    <!--begin::Lable-->
                                    <span class="fw-bolder text-danger py-1">-27%</span>
                                    <!--end::Lable-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-center bg-light-info rounded p-5">
                                    <!--begin::Icon-->
                                    <span class="svg-icon svg-icon-info me-5">
                                        <!--begin::Svg Icon | path: icons/duotune/abstract/abs027.svg-->
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="black"></path>
                                                <path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="black"></path>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </span>
                                    <!--end::Icon-->
                                    <!--begin::Title-->
                                    <div class="flex-grow-1 me-2">
                                        <a href="#" class="fw-bolder text-gray-800 text-hover-primary fs-6">Product goals strategy</a>
                                        <span class="text-muted fw-bold d-block">Due in 7 Days</span>
                                    </div>
                                    <!--end::Title-->
                                    <!--begin::Lable-->
                                    <span class="fw-bolder text-info py-1">+8%</span>
                                    <!--end::Lable-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::List Widget 6-->
                    </div>
                    <!--end::Col-->
                    <!--begin::Col-->
                    <div class="col-xl-4">
                        <!--begin::List Widget 4-->
                        <div class="card card-xl-stretch mb-5 mb-xl-8">
                            <!--begin::Header-->
                            <div class="card-header border-0 pt-5">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="card-label fw-bolder text-dark">Trends</span>
                                    <span class="text-muted mt-1 fw-bold fs-7">Latest tech trends</span>
                                </h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <button type="button" class="btn btn-sm btn-icon btn-color-primary btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                                    <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                </g>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </button>
                                    <!--begin::Menu 3-->
                                    <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-bold w-200px py-3" data-kt-menu="true">
                                        <!--begin::Heading-->
                                        <div class="menu-item px-3">
                                            <div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">Payments</div>
                                        </div>
                                        <!--end::Heading-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Create Invoice</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link flex-stack px-3">Create Payment
															<i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify a target name for future usage and reference" aria-label="Specify a target name for future usage and reference"></i></a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Generate Bill</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-end">
                                            <a href="#" class="menu-link px-3">
                                                <span class="menu-title">Subscription</span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <!--begin::Menu sub-->
                                            <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Plans</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Billing</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Statements</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator my-2"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3">
                                                        <!--begin::Switch-->
                                                        <label class="form-check form-switch form-check-custom form-check-solid">
                                                            <!--begin::Input-->
                                                            <input class="form-check-input w-30px h-20px" type="checkbox" value="1" checked="checked" name="notifications">
                                                            <!--end::Input-->
                                                            <!--end::Label-->
                                                            <span class="form-check-label text-muted fs-6">Recuring</span>
                                                            <!--end::Label-->
                                                        </label>
                                                        <!--end::Switch-->
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu sub-->
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3 my-1">
                                            <a href="#" class="menu-link px-3">Settings</a>
                                        </div>
                                        <!--end::Menu item-->
                                    </div>
                                    <!--end::Menu 3-->
                                    <!--end::Menu-->
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body pt-5">
                                <!--begin::Item-->
                                <div class="d-flex align-items-sm-center mb-7">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-50px me-5">
                                        <span class="symbol-label">
                                            <img src="assets/media/svg/brand-logos/plurk.svg" class="h-50 align-self-center" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Section-->
                                    <div class="d-flex align-items-center flex-row-fluid flex-wrap">
                                        <div class="flex-grow-1 me-2">
                                            <a href="#" class="text-gray-800 text-hover-primary fs-6 fw-bolder">Top Authors</a>
                                            <span class="text-muted fw-bold d-block fs-7">Mark, Rowling, Esther</span>
                                        </div>
                                        <span class="badge badge-light fw-bolder my-2">+82$</span>
                                    </div>
                                    <!--end::Section-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-sm-center mb-7">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-50px me-5">
                                        <span class="symbol-label">
                                            <img src="assets/media/svg/brand-logos/telegram.svg" class="h-50 align-self-center" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Section-->
                                    <div class="d-flex align-items-center flex-row-fluid flex-wrap">
                                        <div class="flex-grow-1 me-2">
                                            <a href="#" class="text-gray-800 text-hover-primary fs-6 fw-bolder">Popular Authors</a>
                                            <span class="text-muted fw-bold d-block fs-7">Randy, Steve, Mike</span>
                                        </div>
                                        <span class="badge badge-light fw-bolder my-2">+280$</span>
                                    </div>
                                    <!--end::Section-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-sm-center mb-7">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-50px me-5">
                                        <span class="symbol-label">
                                            <img src="assets/media/svg/brand-logos/vimeo.svg" class="h-50 align-self-center" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Section-->
                                    <div class="d-flex align-items-center flex-row-fluid flex-wrap">
                                        <div class="flex-grow-1 me-2">
                                            <a href="#" class="text-gray-800 text-hover-primary fs-6 fw-bolder">New Users</a>
                                            <span class="text-muted fw-bold d-block fs-7">John, Pat, Jimmy</span>
                                        </div>
                                        <span class="badge badge-light fw-bolder my-2">+4500$</span>
                                    </div>
                                    <!--end::Section-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-sm-center mb-7">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-50px me-5">
                                        <span class="symbol-label">
                                            <img src="assets/media/svg/brand-logos/bebo.svg" class="h-50 align-self-center" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Section-->
                                    <div class="d-flex align-items-center flex-row-fluid flex-wrap">
                                        <div class="flex-grow-1 me-2">
                                            <a href="#" class="text-gray-800 text-hover-primary fs-6 fw-bolder">Active Customers</a>
                                            <span class="text-muted fw-bold d-block fs-7">Mark, Rowling, Esther</span>
                                        </div>
                                        <span class="badge badge-light fw-bolder my-2">+686$</span>
                                    </div>
                                    <!--end::Section-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="d-flex align-items-sm-center mb-7">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-50px me-5">
                                        <span class="symbol-label">
                                            <img src="assets/media/svg/brand-logos/kickstarter.svg" class="h-50 align-self-center" alt="">
                                        </span>
                                    </div>
                                    <!--end::Symbol-->
                                    <!--begin::Section-->
                                    <div class="d-flex align-items-center flex-row-fluid flex-wrap">
                                        <div class="flex-grow-1 me-2">
                                            <a href="#" class="text-gray-800 text-hover-primary fs-6 fw-bolder">Bestseller Theme</a>
                                            <span class="text-muted fw-bold d-block fs-7">Disco, Retro, Sports</span>
                                        </div>
                                        <span class="badge badge-light fw-bolder my-2">+726$</span>
                                    </div>
                                    <!--end::Section-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::List Widget 4-->
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
                <!--begin::Row-->
                <div class="row g-5 g-xxl-8">
                    <!--begin::Col-->
                    <div class="col-xxl-4">
                        <!--begin::Mixed Widget 5-->
                        <div class="card card-xxl-stretch mb-xl-8">
                            <!--begin::Beader-->
                            <div class="card-header border-0 py-5">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="card-label fw-bolder fs-3 mb-1">Trends</span>
                                    <span class="text-muted fw-bold fs-7">Latest trends</span>
                                </h3>
                                <div class="card-toolbar">
                                    <!--begin::Menu-->
                                    <button type="button" class="btn btn-sm btn-icon btn-color-primary btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen024.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                                    <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                    <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                                </g>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </button>
                                    <!--begin::Menu 3-->
                                    <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-bold w-200px py-3" data-kt-menu="true">
                                        <!--begin::Heading-->
                                        <div class="menu-item px-3">
                                            <div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">Payments</div>
                                        </div>
                                        <!--end::Heading-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Create Invoice</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link flex-stack px-3">Create Payment
															<i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify a target name for future usage and reference" aria-label="Specify a target name for future usage and reference"></i></a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3">
                                            <a href="#" class="menu-link px-3">Generate Bill</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-end">
                                            <a href="#" class="menu-link px-3">
                                                <span class="menu-title">Subscription</span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <!--begin::Menu sub-->
                                            <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Plans</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Billing</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">Statements</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator my-2"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3">
                                                        <!--begin::Switch-->
                                                        <label class="form-check form-switch form-check-custom form-check-solid">
                                                            <!--begin::Input-->
                                                            <input class="form-check-input w-30px h-20px" type="checkbox" value="1" checked="checked" name="notifications">
                                                            <!--end::Input-->
                                                            <!--end::Label-->
                                                            <span class="form-check-label text-muted fs-6">Recuring</span>
                                                            <!--end::Label-->
                                                        </label>
                                                        <!--end::Switch-->
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu sub-->
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3 my-1">
                                            <a href="#" class="menu-link px-3">Settings</a>
                                        </div>
                                        <!--end::Menu item-->
                                    </div>
                                    <!--end::Menu 3-->
                                    <!--end::Menu-->
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body d-flex flex-column" style="position: relative;">
                                <!--begin::Chart-->
                                <div class="mixed-widget-5-chart card-rounded-top" data-kt-chart-color="success" style="height: 150px; min-height: 150px;">
                                    <div id="apexchartstapfk4j" class="apexcharts-canvas apexchartstapfk4j apexcharts-theme-light" style="width: 880px; height: 150px;">
                                        <svg id="SvgjsSvg1327" width="880" height="150" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <g id="SvgjsG1329" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)">
                                                <defs id="SvgjsDefs1328">
                                                    <clipPath id="gridRectMasktapfk4j">
                                                        <rect id="SvgjsRect1332" width="887" height="153" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="forecastMasktapfk4j"></clipPath>
                                                    <clipPath id="nonForecastMasktapfk4j"></clipPath>
                                                    <clipPath id="gridRectMarkerMasktapfk4j">
                                                        <rect id="SvgjsRect1333" width="884" height="154" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                </defs>
                                                <g id="SvgjsG1340" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1341" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g>
                                                </g>
                                                <g id="SvgjsG1349" class="apexcharts-grid">
                                                    <g id="SvgjsG1350" class="apexcharts-gridlines-horizontal" style="display: none;">
                                                        <line id="SvgjsLine1352" x1="0" y1="0" x2="880" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1353" x1="0" y1="15" x2="880" y2="15" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1354" x1="0" y1="30" x2="880" y2="30" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1355" x1="0" y1="45" x2="880" y2="45" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1356" x1="0" y1="60" x2="880" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1357" x1="0" y1="75" x2="880" y2="75" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1358" x1="0" y1="90" x2="880" y2="90" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1359" x1="0" y1="105" x2="880" y2="105" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1360" x1="0" y1="120" x2="880" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1361" x1="0" y1="135" x2="880" y2="135" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1362" x1="0" y1="150" x2="880" y2="150" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1351" class="apexcharts-gridlines-vertical" style="display: none;"></g>
                                                    <line id="SvgjsLine1364" x1="0" y1="150" x2="880" y2="150" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1363" x1="0" y1="1" x2="0" y2="150" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1334" class="apexcharts-area-series apexcharts-plot-series">
                                                    <g id="SvgjsG1335" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0">
                                                        <path id="SvgjsPath1338" d="M 0 150L 0 80.76923076923077C 61.599999999999994 80.76923076923077 114.4 80.76923076923077 176 80.76923076923077C 237.6 80.76923076923077 290.4 11.538461538461547 352 11.538461538461547C 413.6 11.538461538461547 466.4 92.3076923076923 528 92.3076923076923C 589.6 92.3076923076923 642.4 92.3076923076923 704 92.3076923076923C 765.6 92.3076923076923 818.4 57.69230769230769 880 57.69230769230769C 880 57.69230769230769 880 57.69230769230769 880 150M 880 57.69230769230769z" fill="rgba(232,255,243,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMasktapfk4j)" pathTo="M 0 150L 0 80.76923076923077C 61.599999999999994 80.76923076923077 114.4 80.76923076923077 176 80.76923076923077C 237.6 80.76923076923077 290.4 11.538461538461547 352 11.538461538461547C 413.6 11.538461538461547 466.4 92.3076923076923 528 92.3076923076923C 589.6 92.3076923076923 642.4 92.3076923076923 704 92.3076923076923C 765.6 92.3076923076923 818.4 57.69230769230769 880 57.69230769230769C 880 57.69230769230769 880 57.69230769230769 880 150M 880 57.69230769230769z" pathFrom="M -1 150L -1 150L 176 150L 352 150L 528 150L 704 150L 880 150"></path>
                                                        <path id="SvgjsPath1339" d="M 0 80.76923076923077C 61.599999999999994 80.76923076923077 114.4 80.76923076923077 176 80.76923076923077C 237.6 80.76923076923077 290.4 11.538461538461547 352 11.538461538461547C 413.6 11.538461538461547 466.4 92.3076923076923 528 92.3076923076923C 589.6 92.3076923076923 642.4 92.3076923076923 704 92.3076923076923C 765.6 92.3076923076923 818.4 57.69230769230769 880 57.69230769230769" fill="none" fill-opacity="1" stroke="#50cd89" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMasktapfk4j)" pathTo="M 0 80.76923076923077C 61.599999999999994 80.76923076923077 114.4 80.76923076923077 176 80.76923076923077C 237.6 80.76923076923077 290.4 11.538461538461547 352 11.538461538461547C 413.6 11.538461538461547 466.4 92.3076923076923 528 92.3076923076923C 589.6 92.3076923076923 642.4 92.3076923076923 704 92.3076923076923C 765.6 92.3076923076923 818.4 57.69230769230769 880 57.69230769230769" pathFrom="M -1 150L -1 150L 176 150L 352 150L 528 150L 704 150L 880 150"></path>
                                                        <g id="SvgjsG1336" class="apexcharts-series-markers-wrap" data:realIndex="0">
                                                            <g class="apexcharts-series-markers">
                                                                <circle id="SvgjsCircle1370" r="0" cx="0" cy="0" class="apexcharts-marker wb7ahinyr no-pointer-events" stroke="#50cd89" fill="#e8fff3" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1337" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                </g>
                                                <line id="SvgjsLine1365" x1="0" y1="0" x2="880" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1366" x1="0" y1="0" x2="880" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1367" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1368" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1369" class="apexcharts-point-annotations"></g>
                                            </g><g id="SvgjsG1348" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG1330" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 75px;"></div>
                                        <div class="apexcharts-tooltip apexcharts-theme-light">
                                            <div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;"></div>
                                            <div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(232, 255, 243);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                                    <div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                            <div class="apexcharts-xaxistooltip-text" style="font-family: inherit; font-size: 12px;"></div>
                                        </div>
                                        <div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                            <div class="apexcharts-yaxistooltip-text"></div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Chart-->
                                <!--begin::Items-->
                                <div class="mt-5">
                                    <!--begin::Item-->
                                    <div class="d-flex flex-stack mb-5">
                                        <!--begin::Section-->
                                        <div class="d-flex align-items-center me-2">
                                            <!--begin::Symbol-->
                                            <div class="symbol symbol-50px me-3">
                                                <div class="symbol-label bg-light">
                                                    <img src="assets/media/svg/brand-logos/plurk.svg" class="h-50" alt="">
                                                </div>
                                            </div>
                                            <!--end::Symbol-->
                                            <!--begin::Title-->
                                            <div>
                                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bolder">Top Authors</a>
                                                <div class="fs-7 text-muted fw-bold mt-1">Ricky Hunt, Sandra Trepp</div>
                                            </div>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Section-->
                                        <!--begin::Label-->
                                        <div class="badge badge-light fw-bold py-4 px-3">+82$</div>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="d-flex flex-stack mb-5">
                                        <!--begin::Section-->
                                        <div class="d-flex align-items-center me-2">
                                            <!--begin::Symbol-->
                                            <div class="symbol symbol-50px me-3">
                                                <div class="symbol-label bg-light">
                                                    <img src="assets/media/svg/brand-logos/figma-1.svg" class="h-50" alt="">
                                                </div>
                                            </div>
                                            <!--end::Symbol-->
                                            <!--begin::Title-->
                                            <div>
                                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bolder">Top Sales</a>
                                                <div class="fs-7 text-muted fw-bold mt-1">PitStop Emails</div>
                                            </div>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Section-->
                                        <!--begin::Label-->
                                        <div class="badge badge-light fw-bold py-4 px-3">+82$</div>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Item-->
                                    <!--begin::Item-->
                                    <div class="d-flex flex-stack">
                                        <!--begin::Section-->
                                        <div class="d-flex align-items-center me-2">
                                            <!--begin::Symbol-->
                                            <div class="symbol symbol-50px me-3">
                                                <div class="symbol-label bg-light">
                                                    <img src="assets/media/svg/brand-logos/vimeo.svg" class="h-50" alt="">
                                                </div>
                                            </div>
                                            <!--end::Symbol-->
                                            <!--begin::Title-->
                                            <div class="py-1">
                                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bolder">Top Engagement</a>
                                                <div class="fs-7 text-muted fw-bold mt-1">KT.com</div>
                                            </div>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Section-->
                                        <!--begin::Label-->
                                        <div class="badge badge-light fw-bold py-4 px-3">+82$</div>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Item-->
                                </div>
                                <!--end::Items-->
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 939px; height: 402px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Mixed Widget 5-->
                    </div>
                    <!--end::Col-->
                    <!--begin::Col-->
                    <div class="col-xxl-8">
                        <!--begin::Tables Widget 5-->
                        <div class="card card-xxl-stretch mb-5 mb-xl-8">
                            <!--begin::Header-->
                            <div class="card-header border-0 pt-5">
                                <h3 class="card-title align-items-start flex-column">
                                    <span class="card-label fw-bolder fs-3 mb-1">Latest Products</span>
                                    <span class="text-muted mt-1 fw-bold fs-7">More than 400 new products</span>
                                </h3>
                                <div class="card-toolbar">
                                    <ul class="nav">
                                        <li class="nav-item">
                                            <a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-dark active fw-bolder px-4 me-1" data-bs-toggle="tab" href="#kt_table_widget_5_tab_1">Month</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-dark fw-bolder px-4 me-1" data-bs-toggle="tab" href="#kt_table_widget_5_tab_2">Week</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-dark fw-bolder px-4" data-bs-toggle="tab" href="#kt_table_widget_5_tab_3">Day</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Body-->
                            <div class="card-body py-3">
                                <div class="tab-content">
                                    <!--begin::Tap pane-->
                                    <div class="tab-pane fade show active" id="kt_table_widget_5_tab_1">
                                        <!--begin::Table container-->
                                        <div class="table-responsive">
                                            <!--begin::Table-->
                                            <table class="table table-row-dashed table-row-gray-200 align-middle gs-0 gy-4">
                                                <!--begin::Table head-->
                                                <thead>
                                                    <tr class="border-0">
                                                        <th class="p-0 w-50px"></th>
                                                        <th class="p-0 min-w-150px"></th>
                                                        <th class="p-0 min-w-140px"></th>
                                                        <th class="p-0 min-w-110px"></th>
                                                        <th class="p-0 min-w-50px"></th>
                                                    </tr>
                                                </thead>
                                                <!--end::Table head-->
                                                <!--begin::Table body-->
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/plurk.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Brad Simmons</a>
                                                            <span class="text-muted fw-bold d-block">Movie Creator</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">React, HTML</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-success">Approved</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/telegram.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Popular Authors</a>
                                                            <span class="text-muted fw-bold d-block">Most Successful</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">Python, MySQL</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-warning">In Progress</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/vimeo.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">New Users</a>
                                                            <span class="text-muted fw-bold d-block">Awesome Users</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">Laravel,Metronic</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-primary">Success</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/bebo.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Active Customers</a>
                                                            <span class="text-muted fw-bold d-block">Movie Creator</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">AngularJS, C#</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-danger">Rejected</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/kickstarter.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Bestseller Theme</a>
                                                            <span class="text-muted fw-bold d-block">Best Customers</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">ReactJS, Ruby</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-warning">In Progress</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <!--end::Table body-->
                                            </table>
                                        </div>
                                        <!--end::Table-->
                                    </div>
                                    <!--end::Tap pane-->
                                    <!--begin::Tap pane-->
                                    <div class="tab-pane fade" id="kt_table_widget_5_tab_2">
                                        <!--begin::Table container-->
                                        <div class="table-responsive">
                                            <!--begin::Table-->
                                            <table class="table table-row-dashed table-row-gray-200 align-middle gs-0 gy-4">
                                                <!--begin::Table head-->
                                                <thead>
                                                    <tr class="border-0">
                                                        <th class="p-0 w-50px"></th>
                                                        <th class="p-0 min-w-150px"></th>
                                                        <th class="p-0 min-w-140px"></th>
                                                        <th class="p-0 min-w-110px"></th>
                                                        <th class="p-0 min-w-50px"></th>
                                                    </tr>
                                                </thead>
                                                <!--end::Table head-->
                                                <!--begin::Table body-->
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/plurk.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Brad Simmons</a>
                                                            <span class="text-muted fw-bold d-block">Movie Creator</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">React, HTML</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-success">Approved</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/telegram.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Popular Authors</a>
                                                            <span class="text-muted fw-bold d-block">Most Successful</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">Python, MySQL</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-warning">In Progress</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/bebo.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Active Customers</a>
                                                            <span class="text-muted fw-bold d-block">Movie Creator</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">AngularJS, C#</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-danger">Rejected</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <!--end::Table body-->
                                            </table>
                                        </div>
                                        <!--end::Table-->
                                    </div>
                                    <!--end::Tap pane-->
                                    <!--begin::Tap pane-->
                                    <div class="tab-pane fade" id="kt_table_widget_5_tab_3">
                                        <!--begin::Table container-->
                                        <div class="table-responsive">
                                            <!--begin::Table-->
                                            <table class="table table-row-dashed table-row-gray-200 align-middle gs-0 gy-4">
                                                <!--begin::Table head-->
                                                <thead>
                                                    <tr class="border-0">
                                                        <th class="p-0 w-50px"></th>
                                                        <th class="p-0 min-w-150px"></th>
                                                        <th class="p-0 min-w-140px"></th>
                                                        <th class="p-0 min-w-110px"></th>
                                                        <th class="p-0 min-w-50px"></th>
                                                    </tr>
                                                </thead>
                                                <!--end::Table head-->
                                                <!--begin::Table body-->
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/kickstarter.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Bestseller Theme</a>
                                                            <span class="text-muted fw-bold d-block">Best Customers</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">ReactJS, Ruby</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-warning">In Progress</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/bebo.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Active Customers</a>
                                                            <span class="text-muted fw-bold d-block">Movie Creator</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">AngularJS, C#</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-danger">Rejected</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/vimeo.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">New Users</a>
                                                            <span class="text-muted fw-bold d-block">Awesome Users</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">Laravel,Metronic</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-primary">Success</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="symbol symbol-45px me-2">
                                                                <span class="symbol-label">
                                                                    <img src="assets/media/svg/brand-logos/telegram.svg" class="h-50 align-self-center" alt="">
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="text-dark fw-bolder text-hover-primary mb-1 fs-6">Popular Authors</a>
                                                            <span class="text-muted fw-bold d-block">Most Successful</span>
                                                        </td>
                                                        <td class="text-end text-muted fw-bold">Python, MySQL</td>
                                                        <td class="text-end">
                                                            <span class="badge badge-light-warning">In Progress</span>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="#" class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr064.svg-->
                                                                <span class="svg-icon svg-icon-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                        <rect opacity="0.5" x="18" y="13" width="13" height="2" rx="1" transform="rotate(-180 18 13)" fill="black"></rect>
                                                                        <path d="M15.4343 12.5657L11.25 16.75C10.8358 17.1642 10.8358 17.8358 11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25L18.2929 12.7071C18.6834 12.3166 18.6834 11.6834 18.2929 11.2929L12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75C10.8358 6.16421 10.8358 6.83579 11.25 7.25L15.4343 11.4343C15.7467 11.7467 15.7467 12.2533 15.4343 12.5657Z" fill="black"></path>
                                                                    </svg>
                                                                </span>
                                                                <!--end::Svg Icon-->
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <!--end::Table body-->
                                            </table>
                                        </div>
                                        <!--end::Table-->
                                    </div>
                                    <!--end::Tap pane-->
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Tables Widget 5-->
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
                <!--begin::Row-->
                <div class="g-5 gx-xxl-8">
                    <!--begin::Calendar Widget 1-->
                    <div class="card card-xxl-stretch">
                        <!--begin::Card header-->
                        <div class="card-header">
                            <h3 class="card-title align-items-start flex-column">
                                <span class="card-label fw-bolder text-dark">My Calendar</span>
                                <span class="text-muted mt-1 fw-bold fs-7">Preview monthly events</span>
                            </h3>
                            <div class="card-toolbar">
                                <a href="../../demo1/dist/apps/calendar.html" class="btn btn-primary">Manage Calendar</a>
                            </div>
                        </div>
                        <!--end::Card header-->
                        <!--begin::Card body-->
                        <div class="card-body">
                            <!--begin::Calendar-->
                            <div id="kt_calendar_widget_1" class="fc fc-media-screen fc-direction-ltr fc-theme-standard" style="height: 800px;">
                                <div class="fc-header-toolbar fc-toolbar fc-toolbar-ltr">
                                    <div class="fc-toolbar-chunk">
                                        <div class="fc-button-group">
                                            <button class="fc-prev-button fc-button fc-button-primary" type="button" aria-label="prev"><span class="fc-icon fc-icon-chevron-left"></span></button>
                                            <button class="fc-next-button fc-button fc-button-primary" type="button" aria-label="next"><span class="fc-icon fc-icon-chevron-right"></span></button>
                                        </div>
                                        <button disabled="" class="fc-today-button fc-button fc-button-primary" type="button">today</button></div>
                                    <div class="fc-toolbar-chunk">
                                        <h2 class="fc-toolbar-title">June 2023</h2>
                                    </div>
                                    <div class="fc-toolbar-chunk">
                                        <div class="fc-button-group">
                                            <button class="fc-dayGridMonth-button fc-button fc-button-primary fc-button-active" type="button">month</button>
                                            <button class="fc-timeGridWeek-button fc-button fc-button-primary" type="button">week</button>
                                            <button class="fc-timeGridDay-button fc-button fc-button-primary" type="button">day</button>
                                            <button class="fc-listMonth-button fc-button fc-button-primary" type="button">list</button></div>
                                    </div>
                                </div>
                                <div class="fc-view-harness fc-view-harness-active">
                                    <div class="fc-daygrid fc-dayGridMonth-view fc-view">
                                        <table class="fc-scrollgrid  fc-scrollgrid-liquid">
                                            <thead>
                                                <tr class="fc-scrollgrid-section fc-scrollgrid-section-header ">
                                                    <td>
                                                        <div class="fc-scroller-harness">
                                                            <div class="fc-scroller" style="overflow: hidden;">
                                                                <table class="fc-col-header " style="width: 878px;">
                                                                    <colgroup></colgroup>
                                                                    <tbody>
                                                                        <tr>
                                                                            <th class="fc-col-header-cell fc-day fc-day-sun">
                                                                                <div class="fc-scrollgrid-sync-inner"><a class="fc-col-header-cell-cushion ">Sun</a></div>
                                                                            </th>
                                                                            <th class="fc-col-header-cell fc-day fc-day-mon">
                                                                                <div class="fc-scrollgrid-sync-inner"><a class="fc-col-header-cell-cushion ">Mon</a></div>
                                                                            </th>
                                                                            <th class="fc-col-header-cell fc-day fc-day-tue">
                                                                                <div class="fc-scrollgrid-sync-inner"><a class="fc-col-header-cell-cushion ">Tue</a></div>
                                                                            </th>
                                                                            <th class="fc-col-header-cell fc-day fc-day-wed">
                                                                                <div class="fc-scrollgrid-sync-inner"><a class="fc-col-header-cell-cushion ">Wed</a></div>
                                                                            </th>
                                                                            <th class="fc-col-header-cell fc-day fc-day-thu">
                                                                                <div class="fc-scrollgrid-sync-inner"><a class="fc-col-header-cell-cushion ">Thu</a></div>
                                                                            </th>
                                                                            <th class="fc-col-header-cell fc-day fc-day-fri">
                                                                                <div class="fc-scrollgrid-sync-inner"><a class="fc-col-header-cell-cushion ">Fri</a></div>
                                                                            </th>
                                                                            <th class="fc-col-header-cell fc-day fc-day-sat">
                                                                                <div class="fc-scrollgrid-sync-inner"><a class="fc-col-header-cell-cushion ">Sat</a></div>
                                                                            </th>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="fc-scrollgrid-section fc-scrollgrid-section-body  fc-scrollgrid-section-liquid">
                                                    <td>
                                                        <div class="fc-scroller-harness fc-scroller-harness-liquid">
                                                            <div class="fc-scroller fc-scroller-liquid-absolute" style="overflow: hidden auto;">
                                                                <div class="fc-daygrid-body fc-daygrid-body-balanced " style="width: 878px;">
                                                                    <table class="fc-scrollgrid-sync-table" style="width: 878px; height: 693px;">
                                                                        <colgroup></colgroup>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sun fc-day-past fc-day-other" data-date="2023-05-28">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-05-28&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">28</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-mon fc-day-past fc-day-other" data-date="2023-05-29">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-05-29&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">29</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-tue fc-day-past fc-day-other" data-date="2023-05-30">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-05-30&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">30</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-wed fc-day-past fc-day-other" data-date="2023-05-31">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-05-31&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">31</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-thu fc-day-past" data-date="2023-06-01">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-01&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">1</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-event-danger fc-event-solid-warning">
                                                                                                <div class="fc-event-main">
                                                                                                    <div class="fc-event-main-frame">
                                                                                                        <div class="fc-event-title-container">
                                                                                                            <div class="fc-event-title fc-sticky">All Day Event</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="fc-event-resizer fc-event-resizer-end"></div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-fri fc-day-past" data-date="2023-06-02">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-02&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">2</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-event-primary">
                                                                                                <div class="fc-event-main">
                                                                                                    <div class="fc-event-main-frame">
                                                                                                        <div class="fc-event-title-container">
                                                                                                            <div class="fc-event-title fc-sticky">Company Trip</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="fc-event-resizer fc-event-resizer-end"></div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sat fc-day-past" data-date="2023-06-03">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-03&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">3</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-start fc-event-past fc-event-light fc-event-solid-primary">
                                                                                                <div class="fc-event-main">
                                                                                                    <div class="fc-event-main-frame">
                                                                                                        <div class="fc-event-title-container">
                                                                                                            <div class="fc-event-title fc-sticky">ICT Expo 2017 - Product Release</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sun fc-day-past" data-date="2023-06-04">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-04&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">4</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-end fc-event-past fc-event-light fc-event-solid-primary">
                                                                                                <div class="fc-event-main">
                                                                                                    <div class="fc-event-main-frame">
                                                                                                        <div class="fc-event-title-container">
                                                                                                            <div class="fc-event-title fc-sticky">ICT Expo 2017 - Product Release</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="fc-event-resizer fc-event-resizer-end"></div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-mon fc-day-past" data-date="2023-06-05">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-05&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">5</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-tue fc-day-past" data-date="2023-06-06">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-06&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">6</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-wed fc-day-past" data-date="2023-06-07">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-07&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">7</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-thu fc-day-past" data-date="2023-06-08">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-08&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">8</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="top: 0px; left: 0px; right: -125.427px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-primary">
                                                                                                <div class="fc-event-main">
                                                                                                    <div class="fc-event-main-frame">
                                                                                                        <div class="fc-event-title-container">
                                                                                                            <div class="fc-event-title fc-sticky">Conference</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="fc-event-resizer fc-event-resizer-end"></div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 29px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-fri fc-day-today " data-date="2023-06-09">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-09&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">9</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-today">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">10:30a</div>
                                                                                                <div class="fc-event-title">Meeting</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-today fc-event-info">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">12p</div>
                                                                                                <div class="fc-event-title">Lunch</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-today fc-event-warning">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">2:30p</div>
                                                                                                <div class="fc-event-title">Meeting</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-today fc-event-danger">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">4p</div>
                                                                                                <div class="fc-event-title">Repeating Event</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-today fc-event-info">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">5:30p</div>
                                                                                                <div class="fc-event-title">Happy Hour</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 29px;"><a class="fc-daygrid-more-link fc-more-link">+5 more</a></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sat fc-day-future" data-date="2023-06-10">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-10&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">10</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-event-solid-danger fc-event-light">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">5a</div>
                                                                                                <div class="fc-event-title">Dinner</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-event-primary">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">7a</div>
                                                                                                <div class="fc-event-title">Birthday Party</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sun fc-day-future" data-date="2023-06-11">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-11&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">11</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-mon fc-day-future" data-date="2023-06-12">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-12&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">12</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future">
                                                                                                <div class="fc-event-main">
                                                                                                    <div class="fc-event-main-frame">
                                                                                                        <div class="fc-event-title-container">
                                                                                                            <div class="fc-event-title fc-sticky">Dinner</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="fc-event-resizer fc-event-resizer-end"></div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-tue fc-day-future" data-date="2023-06-13">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-13&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">13</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-wed fc-day-future" data-date="2023-06-14">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-14&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">14</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-event-success">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">1:30p</div>
                                                                                                <div class="fc-event-title">Reporting</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-thu fc-day-future" data-date="2023-06-15">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-15&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">15</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-fri fc-day-future" data-date="2023-06-16">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-16&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">16</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future">
                                                                                                <div class="fc-daygrid-event-dot"></div>
                                                                                                <div class="fc-event-time">4p</div>
                                                                                                <div class="fc-event-title">Repeating Event</div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sat fc-day-future" data-date="2023-06-17">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-17&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">17</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sun fc-day-future" data-date="2023-06-18">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-18&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">18</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-mon fc-day-future" data-date="2023-06-19">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-19&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">19</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-tue fc-day-future" data-date="2023-06-20">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-20&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">20</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-wed fc-day-future" data-date="2023-06-21">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-21&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">21</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-thu fc-day-future" data-date="2023-06-22">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-22&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">22</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-fri fc-day-future" data-date="2023-06-23">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-23&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">23</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sat fc-day-future" data-date="2023-06-24">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-24&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">24</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sun fc-day-future" data-date="2023-06-25">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-25&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">25</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-mon fc-day-future" data-date="2023-06-26">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-26&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">26</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-tue fc-day-future" data-date="2023-06-27">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-27&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">27</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-wed fc-day-future" data-date="2023-06-28">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-28&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">28</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-event-solid-info fc-event-light" href="http://google.com/">
                                                                                                <div class="fc-event-main">
                                                                                                    <div class="fc-event-main-frame">
                                                                                                        <div class="fc-event-title-container">
                                                                                                            <div class="fc-event-title fc-sticky">Click for Google</div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="fc-event-resizer fc-event-resizer-end"></div>
                                                                                            </a></div>
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-thu fc-day-future" data-date="2023-06-29">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-29&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">29</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-fri fc-day-future" data-date="2023-06-30">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-06-30&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">30</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sat fc-day-future fc-day-other" data-date="2023-07-01">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-07-01&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">1</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sun fc-day-future fc-day-other" data-date="2023-07-02">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-07-02&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">2</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-mon fc-day-future fc-day-other" data-date="2023-07-03">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-07-03&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">3</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-tue fc-day-future fc-day-other" data-date="2023-07-04">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-07-04&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">4</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-wed fc-day-future fc-day-other" data-date="2023-07-05">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-07-05&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">5</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-thu fc-day-future fc-day-other" data-date="2023-07-06">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-07-06&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">6</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-fri fc-day-future fc-day-other" data-date="2023-07-07">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-07-07&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">7</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="fc-daygrid-day fc-day fc-day-sat fc-day-future fc-day-other" data-date="2023-07-08">
                                                                                    <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                                        <div class="fc-daygrid-day-top"><a class="fc-daygrid-day-number" data-navlink="{&quot;date&quot;:&quot;2023-07-08&quot;,&quot;type&quot;:&quot;day&quot;}" tabindex="0">8</a></div>
                                                                                        <div class="fc-daygrid-day-events">
                                                                                            <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                                        </div>
                                                                                        <div class="fc-daygrid-day-bg"></div>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!--end::Calendar-->
                        </div>
                        <!--end::Card body-->
                    </div>
                    <!--end::Calendar Widget 1-->
                    <!--begin::Modals-->
                    <!--begin::Modal - New Product-->
                    <div class="modal fade" id="kt_modal_add_event" tabindex="-1" aria-hidden="true">
                        <!--begin::Modal dialog-->
                        <div class="modal-dialog modal-dialog-centered mw-650px">
                            <!--begin::Modal content-->
                            <div class="modal-content">
                                <!--begin::Form-->
                                <form class="form" action="#" id="kt_modal_add_event_form">
                                    <!--begin::Modal header-->
                                    <div class="modal-header">
                                        <!--begin::Modal title-->
                                        <h2 class="fw-bolder" data-kt-calendar="title">Add Event</h2>
                                        <!--end::Modal title-->
                                        <!--begin::Close-->
                                        <div class="btn btn-icon btn-sm btn-active-icon-primary" id="kt_modal_add_event_close">
                                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                                            <span class="svg-icon svg-icon-1">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black"></rect>
                                                    <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black"></rect>
                                                </svg>
                                            </span>
                                            <!--end::Svg Icon-->
                                        </div>
                                        <!--end::Close-->
                                    </div>
                                    <!--end::Modal header-->
                                    <!--begin::Modal body-->
                                    <div class="modal-body py-10 px-lg-17">
                                        <!--begin::Input group-->
                                        <div class="fv-row mb-9">
                                            <!--begin::Label-->
                                            <label class="fs-6 fw-bold required mb-2">Event Name</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" class="form-control form-control-solid" placeholder="" name="calendar_event_name">
                                            <!--end::Input-->
                                        </div>
                                        <!--end::Input group-->
                                        <!--begin::Input group-->
                                        <div class="fv-row mb-9">
                                            <!--begin::Label-->
                                            <label class="fs-6 fw-bold mb-2">Event Description</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" class="form-control form-control-solid" placeholder="" name="calendar_event_description">
                                            <!--end::Input-->
                                        </div>
                                        <!--end::Input group-->
                                        <!--begin::Input group-->
                                        <div class="fv-row mb-9">
                                            <!--begin::Label-->
                                            <label class="fs-6 fw-bold mb-2">Event Location</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" class="form-control form-control-solid" placeholder="" name="calendar_event_location">
                                            <!--end::Input-->
                                        </div>
                                        <!--end::Input group-->
                                        <!--begin::Input group-->
                                        <div class="fv-row mb-9">
                                            <!--begin::Checkbox-->
                                            <label class="form-check form-check-custom form-check-solid">
                                                <input class="form-check-input" type="checkbox" value="" id="kt_calendar_datepicker_allday">
                                                <span class="form-check-label fw-bold" for="kt_calendar_datepicker_allday">All Day</span>
                                            </label>
                                            <!--end::Checkbox-->
                                        </div>
                                        <!--end::Input group-->
                                        <!--begin::Input group-->
                                        <div class="row row-cols-lg-2 g-10">
                                            <div class="col">
                                                <div class="fv-row mb-9">
                                                    <!--begin::Label-->
                                                    <label class="fs-6 fw-bold mb-2 required">Event Start Date</label>
                                                    <!--end::Label-->
                                                    <!--begin::Input-->
                                                    <input class="form-control form-control-solid" name="calendar_event_start_date" placeholder="Pick a start date" id="kt_calendar_datepicker_start_date">
                                                    <!--end::Input-->
                                                </div>
                                            </div>
                                            <div class="col" data-kt-calendar="datepicker">
                                                <div class="fv-row mb-9">
                                                    <!--begin::Label-->
                                                    <label class="fs-6 fw-bold mb-2">Event Start Time</label>
                                                    <!--end::Label-->
                                                    <!--begin::Input-->
                                                    <input class="form-control form-control-solid" name="calendar_event_start_time" placeholder="Pick a start time" id="kt_calendar_datepicker_start_time">
                                                    <!--end::Input-->
                                                </div>
                                            </div>
                                        </div>
                                        <!--end::Input group-->
                                        <!--begin::Input group-->
                                        <div class="row row-cols-lg-2 g-10">
                                            <div class="col">
                                                <div class="fv-row mb-9">
                                                    <!--begin::Label-->
                                                    <label class="fs-6 fw-bold mb-2 required">Event End Date</label>
                                                    <!--end::Label-->
                                                    <!--begin::Input-->
                                                    <input class="form-control form-control-solid" name="calendar_event_end_date" placeholder="Pick a end date" id="kt_calendar_datepicker_end_date">
                                                    <!--end::Input-->
                                                </div>
                                            </div>
                                            <div class="col" data-kt-calendar="datepicker">
                                                <div class="fv-row mb-9">
                                                    <!--begin::Label-->
                                                    <label class="fs-6 fw-bold mb-2">Event End Time</label>
                                                    <!--end::Label-->
                                                    <!--begin::Input-->
                                                    <input class="form-control form-control-solid" name="calendar_event_end_time" placeholder="Pick a end time" id="kt_calendar_datepicker_end_time">
                                                    <!--end::Input-->
                                                </div>
                                            </div>
                                        </div>
                                        <!--end::Input group-->
                                    </div>
                                    <!--end::Modal body-->
                                    <!--begin::Modal footer-->
                                    <div class="modal-footer flex-center">
                                        <!--begin::Button-->
                                        <button type="reset" id="kt_modal_add_event_cancel" class="btn btn-light me-3">Cancel</button>
                                        <!--end::Button-->
                                        <!--begin::Button-->
                                        <button type="button" id="kt_modal_add_event_submit" class="btn btn-primary">
                                            <span class="indicator-label">Submit</span>
                                            <span class="indicator-progress">Please wait...
															<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                        </button>
                                        <!--end::Button-->
                                    </div>
                                    <!--end::Modal footer-->
                                </form>
                                <!--end::Form-->
                            </div>
                        </div>
                    </div>
                    <!--end::Modal - New Product-->
                    <!--begin::Modal - New Product-->
                    <div class="modal fade" id="kt_modal_view_event" tabindex="-1" aria-hidden="true">
                        <!--begin::Modal dialog-->
                        <div class="modal-dialog modal-dialog-centered mw-650px">
                            <!--begin::Modal content-->
                            <div class="modal-content">
                                <!--begin::Modal header-->
                                <div class="modal-header border-0 justify-content-end">
                                    <!--begin::Edit-->
                                    <div class="btn btn-icon btn-sm btn-color-gray-400 btn-active-icon-primary me-2" data-bs-toggle="tooltip" data-bs-dismiss="click" title="" id="kt_modal_view_event_edit" data-bs-original-title="Edit Event">
                                        <!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black"></path>
                                                <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black"></path>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </div>
                                    <!--end::Edit-->
                                    <!--begin::Edit-->
                                    <div class="btn btn-icon btn-sm btn-color-gray-400 btn-active-icon-danger me-2" data-bs-toggle="tooltip" data-bs-dismiss="click" title="" id="kt_modal_view_event_delete" data-bs-original-title="Delete Event">
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
                                        <span class="svg-icon svg-icon-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black"></path>
                                                <path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black"></path>
                                                <path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black"></path>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </div>
                                    <!--end::Edit-->
                                    <!--begin::Close-->
                                    <div class="btn btn-icon btn-sm btn-color-gray-500 btn-active-icon-primary" data-bs-toggle="tooltip" title="" data-bs-dismiss="modal" data-bs-original-title="Hide Event">
                                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                                        <span class="svg-icon svg-icon-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black"></rect>
                                                <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black"></rect>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                    </div>
                                    <!--end::Close-->
                                </div>
                                <!--end::Modal header-->
                                <!--begin::Modal body-->
                                <div class="modal-body pt-0 pb-20 px-lg-17">
                                    <!--begin::Row-->
                                    <div class="d-flex">
                                        <!--begin::Icon-->
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen014.svg-->
                                        <span class="svg-icon svg-icon-1 svg-icon-muted me-5">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path opacity="0.3" d="M21 22H3C2.4 22 2 21.6 2 21V5C2 4.4 2.4 4 3 4H21C21.6 4 22 4.4 22 5V21C22 21.6 21.6 22 21 22Z" fill="black"></path>
                                                <path d="M6 6C5.4 6 5 5.6 5 5V3C5 2.4 5.4 2 6 2C6.6 2 7 2.4 7 3V5C7 5.6 6.6 6 6 6ZM11 5V3C11 2.4 10.6 2 10 2C9.4 2 9 2.4 9 3V5C9 5.6 9.4 6 10 6C10.6 6 11 5.6 11 5ZM15 5V3C15 2.4 14.6 2 14 2C13.4 2 13 2.4 13 3V5C13 5.6 13.4 6 14 6C14.6 6 15 5.6 15 5ZM19 5V3C19 2.4 18.6 2 18 2C17.4 2 17 2.4 17 3V5C17 5.6 17.4 6 18 6C18.6 6 19 5.6 19 5Z" fill="black"></path>
                                                <path d="M8.8 13.1C9.2 13.1 9.5 13 9.7 12.8C9.9 12.6 10.1 12.3 10.1 11.9C10.1 11.6 10 11.3 9.8 11.1C9.6 10.9 9.3 10.8 9 10.8C8.8 10.8 8.59999 10.8 8.39999 10.9C8.19999 11 8.1 11.1 8 11.2C7.9 11.3 7.8 11.4 7.7 11.6C7.6 11.8 7.5 11.9 7.5 12.1C7.5 12.2 7.4 12.2 7.3 12.3C7.2 12.4 7.09999 12.4 6.89999 12.4C6.69999 12.4 6.6 12.3 6.5 12.2C6.4 12.1 6.3 11.9 6.3 11.7C6.3 11.5 6.4 11.3 6.5 11.1C6.6 10.9 6.8 10.7 7 10.5C7.2 10.3 7.49999 10.1 7.89999 10C8.29999 9.90003 8.60001 9.80003 9.10001 9.80003C9.50001 9.80003 9.80001 9.90003 10.1 10C10.4 10.1 10.7 10.3 10.9 10.4C11.1 10.5 11.3 10.8 11.4 11.1C11.5 11.4 11.6 11.6 11.6 11.9C11.6 12.3 11.5 12.6 11.3 12.9C11.1 13.2 10.9 13.5 10.6 13.7C10.9 13.9 11.2 14.1 11.4 14.3C11.6 14.5 11.8 14.7 11.9 15C12 15.3 12.1 15.5 12.1 15.8C12.1 16.2 12 16.5 11.9 16.8C11.8 17.1 11.5 17.4 11.3 17.7C11.1 18 10.7 18.2 10.3 18.3C9.9 18.4 9.5 18.5 9 18.5C8.5 18.5 8.1 18.4 7.7 18.2C7.3 18 7 17.8 6.8 17.6C6.6 17.4 6.4 17.1 6.3 16.8C6.2 16.5 6.10001 16.3 6.10001 16.1C6.10001 15.9 6.2 15.7 6.3 15.6C6.4 15.5 6.6 15.4 6.8 15.4C6.9 15.4 7.00001 15.4 7.10001 15.5C7.20001 15.6 7.3 15.6 7.3 15.7C7.5 16.2 7.7 16.6 8 16.9C8.3 17.2 8.6 17.3 9 17.3C9.2 17.3 9.5 17.2 9.7 17.1C9.9 17 10.1 16.8 10.3 16.6C10.5 16.4 10.5 16.1 10.5 15.8C10.5 15.3 10.4 15 10.1 14.7C9.80001 14.4 9.50001 14.3 9.10001 14.3C9.00001 14.3 8.9 14.3 8.7 14.3C8.5 14.3 8.39999 14.3 8.39999 14.3C8.19999 14.3 7.99999 14.2 7.89999 14.1C7.79999 14 7.7 13.8 7.7 13.7C7.7 13.5 7.79999 13.4 7.89999 13.2C7.99999 13 8.2 13 8.5 13H8.8V13.1ZM15.3 17.5V12.2C14.3 13 13.6 13.3 13.3 13.3C13.1 13.3 13 13.2 12.9 13.1C12.8 13 12.7 12.8 12.7 12.6C12.7 12.4 12.8 12.3 12.9 12.2C13 12.1 13.2 12 13.6 11.8C14.1 11.6 14.5 11.3 14.7 11.1C14.9 10.9 15.2 10.6 15.5 10.3C15.8 10 15.9 9.80003 15.9 9.70003C15.9 9.60003 16.1 9.60004 16.3 9.60004C16.5 9.60004 16.7 9.70003 16.8 9.80003C16.9 9.90003 17 10.2 17 10.5V17.2C17 18 16.7 18.4 16.2 18.4C16 18.4 15.8 18.3 15.6 18.2C15.4 18.1 15.3 17.8 15.3 17.5Z" fill="black"></path>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                        <!--end::Icon-->
                                        <div class="mb-9">
                                            <!--begin::Event name-->
                                            <div class="d-flex align-items-center mb-2">
                                                <span class="fs-3 fw-bolder me-3" data-kt-calendar="event_name"></span>
                                                <span class="badge badge-light-success" data-kt-calendar="all_day"></span>
                                            </div>
                                            <!--end::Event name-->
                                            <!--begin::Event description-->
                                            <div class="fs-6" data-kt-calendar="event_description"></div>
                                            <!--end::Event description-->
                                        </div>
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="d-flex align-items-center mb-2">
                                        <!--begin::Icon-->
                                        <!--begin::Svg Icon | path: icons/duotune/abstract/abs050.svg-->
                                        <span class="svg-icon svg-icon-1 svg-icon-success me-5">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <circle fill="#000000" cx="12" cy="12" r="8"></circle>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                        <!--end::Icon-->
                                        <!--begin::Event start date/time-->
                                        <div class="fs-6">
                                            <span class="fw-bolder">Starts</span>
                                            <span data-kt-calendar="event_start_date"></span>
                                        </div>
                                        <!--end::Event start date/time-->
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="d-flex align-items-center mb-9">
                                        <!--begin::Icon-->
                                        <!--begin::Svg Icon | path: icons/duotune/abstract/abs050.svg-->
                                        <span class="svg-icon svg-icon-1 svg-icon-danger me-5">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <circle fill="#000000" cx="12" cy="12" r="8"></circle>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                        <!--end::Icon-->
                                        <!--begin::Event end date/time-->
                                        <div class="fs-6">
                                            <span class="fw-bolder">Ends</span>
                                            <span data-kt-calendar="event_end_date"></span>
                                        </div>
                                        <!--end::Event end date/time-->
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="d-flex align-items-center">
                                        <!--begin::Icon-->
                                        <!--begin::Svg Icon | path: icons/duotune/general/gen018.svg-->
                                        <span class="svg-icon svg-icon-1 svg-icon-muted me-5">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path opacity="0.3" d="M18.0624 15.3453L13.1624 20.7453C12.5624 21.4453 11.5624 21.4453 10.9624 20.7453L6.06242 15.3453C4.56242 13.6453 3.76242 11.4453 4.06242 8.94534C4.56242 5.34534 7.46242 2.44534 11.0624 2.04534C15.8624 1.54534 19.9624 5.24534 19.9624 9.94534C20.0624 12.0453 19.2624 13.9453 18.0624 15.3453Z" fill="black"></path>
                                                <path d="M12.0624 13.0453C13.7193 13.0453 15.0624 11.7022 15.0624 10.0453C15.0624 8.38849 13.7193 7.04535 12.0624 7.04535C10.4056 7.04535 9.06241 8.38849 9.06241 10.0453C9.06241 11.7022 10.4056 13.0453 12.0624 13.0453Z" fill="black"></path>
                                            </svg>
                                        </span>
                                        <!--end::Svg Icon-->
                                        <!--end::Icon-->
                                        <!--begin::Event location-->
                                        <div class="fs-6" data-kt-calendar="event_location"></div>
                                        <!--end::Event location-->
                                    </div>
                                    <!--end::Row-->
                                </div>
                                <!--end::Modal body-->
                            </div>
                        </div>
                    </div>
                    <!--end::Modal - New Product-->
                    <!--end::Modals-->
                </div>
                <!--end::Row-->
            </div>
            <!--end::Container-->
        </div>








    </div>
    <%--    <script type="text/javascript" id="">!function (b, e, f, g, a, c, d) { b.fbq || (a = b.fbq = function () { a.callMethod ? a.callMethod.apply(a, arguments) : a.queue.push(arguments) }, b._fbq || (b._fbq = a), a.push = a, a.loaded = !0, a.version = "2.0", a.queue = [], c = e.createElement(f), c.async = !0, c.src = g, d = e.getElementsByTagName(f)[0], d.parentNode.insertBefore(c, d)) }(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js"); fbq("init", "738802870177541"); fbq("track", "PageView");</script>
    <script type="text/javascript" id="">try { (function () { var a = google_tag_manager["GTM-5FS8GGP"].macro(6); a = "undefined" == typeof a ? google_tag_manager["GTM-5FS8GGP"].macro(7) : a; var b = new Date; b.setTime(b.getTime() + 18E5); var c = "gtm-session-start"; b = b.toGMTString(); var d = "/", e = ".keenthemes.com"; document.cookie = c + "\x3d" + a + "; Expires\x3d" + b + "; domain\x3d" + e + "; Path\x3d" + d })() } catch (a) { };</script>
    <script>
        var KTAppSettings = {
            "breakpoints": {
                "sm": 576,
                "md": 768,
                "lg": 992,
                "xl": 1200,
                "xxl": 1400
            },
            "colors": {
                "theme": {
                    "base": {
                        "white": "#ffffff",
                        "primary": "#3699FF",
                        "secondary": "#E5EAEE",
                        "success": "#1BC5BD",
                        "info": "#8950FC",
                        "warning": "#FFA800",
                        "danger": "#F64E60",
                        "light": "#E4E6EF",
                        "dark": "#181C32"
                    },
                    "light": {
                        "white": "#ffffff",
                        "primary": "#E1F0FF",
                        "secondary": "#EBEDF3",
                        "success": "#C9F7F5",
                        "info": "#EEE5FF",
                        "warning": "#FFF4DE",
                        "danger": "#FFE2E5",
                        "light": "#F3F6F9",
                        "dark": "#D6D6E0"
                    },
                    "inverse": {
                        "white": "#ffffff",
                        "primary": "#ffffff",
                        "secondary": "#3F4254",
                        "success": "#ffffff",
                        "info": "#ffffff",
                        "warning": "#ffffff",
                        "danger": "#ffffff",
                        "light": "#464E5F",
                        "dark": "#ffffff"
                    }
                },
                "gray": {
                    "gray-100": "#F3F6F9",
                    "gray-200": "#EBEDF3",
                    "gray-300": "#E4E6EF",
                    "gray-400": "#D1D3E0",
                    "gray-500": "#B5B5C3",
                    "gray-600": "#7E8299",
                    "gray-700": "#5E6278",
                    "gray-800": "#3F4254",
                    "gray-900": "#181C32"
                }
            },
            "font-family": "Poppins"
        };
        </script>
    <script src="/assets/plugins/global/plugins.bundle.js?v=7.2.9"></script>
    <script src="/assets/plugins/custom/prismjs/prismjs.bundle.js?v=7.2.9"></script>
    <%--    <script src="/assets/js/scripts.bundle.js?v=7.2.9"></script>--%>
    <%--    <script src="https://keenthemes.com/metronic/assets/js/engage_code.js"></script>
    <script src="/assets/js/custom/widgets.js?v=7.2.9"></script>--%>
</asp:Content>
