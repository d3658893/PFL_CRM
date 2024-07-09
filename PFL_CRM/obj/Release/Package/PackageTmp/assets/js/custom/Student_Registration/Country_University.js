$(document).ready(function () {
    GetUniversities();
    GetCountries();
    GetDDCountries();
});
var Locations = function () {
    return {
        init: function () {

            ! function () {
                var t = document.querySelector("#kt_datatable_university_listing");
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
                            filename: 'Universities Data export_' + datetime,
                            text: '<i class="flaticon2-download"></i> Export To Excel',
                            title: '',
                            className: 'btn btn-sm btn-success mt-2',
                            exportOptions: {
                                columns: [2, 3]
                            }

                        },

                    ],
                    columnDefs: [
                        {
                            "targets": [0],
                            "visible": false,
                            "searchable": false
                        },
                        //{
                        //    "targets": [1],
                        //    render: function (data, type, full, meta) {
                        //        return '<span class="badge badge-primary">' + full[1] + '</span>';
                        //    }
                        //},
                        //{
                        //    "targets": [2],
                        //    "visible": true,
                        //    "searchable": true
                        //},
                        {
                            "targets": [3],
                            "visible": true,
                            "searchable": false,
                            render: function (data, type, full, meta) {

                                var edit_level = '<a href="javascript:void(0)" class="btn btn-icon btn-warning h-30px w-30px mx-1"  title="Edit" onclick="EditLevelAndGroup(this,' + full[0] + ')" id="UpdateLocation"><i class="fa fa-edit fs-base"></i></a>';
                                var delete_level = '<a href="javascript:void(0)"  class="btn btn-icon btn-danger h-30px w-30px mx-1"  title="Delete" data-kt-page-modal-action="delete" onclick="DeleteLocation(this,' + full[0] + ')" id="deleteLocation")"><i  class="fa fa-trash fs-base"></i></a>';
                                return edit_level + delete_level;

                            }
                        }

                    ]
                })

            }()
        }
    }
}();
var User_Settings = function () {
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
                                columns: [0,1]
                            }

                        },

                    ],
                    columnDefs: [
                        {
                            "targets": [0],
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
                            targets: 2,
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
var KTLocationsAddAction = function () {
    const t = document.getElementById("kt_modal_usersettings_location"),
        e = t.querySelector("#kt_modal_add_location_form"),
        n = new bootstrap.Modal(t);
    return {
        init: function () {
            (() => {
                var o = FormValidation.formValidation(e, {
                    fields: {
                        country_name: {
                            validators: {
                                notEmpty: {
                                    message: "Country is required"
                                }
                            }
                        },
                        university_name: {
                            validators: {
                                notEmpty: {
                                    message: "University Name is required"
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
                            var country_name = $("#country_name").val();
                            var university_name = $("#university_name").val();
                            param = "{'country':'" + country_name + "','name':'" + university_name + "'}";
                            $.ajax({
                                type: "post",
                                url: "/Student_Registration/Universities_Countries.aspx/INSERT_UNIVERSITY",
                                contentType: "application/json; charset=utf-8",
                                data: param,
                                datatype: "json",
                                async: false,
                                success: function (response) {
                                    var data = response.d;
                                    if (data[0].return == "1") {
                                        debugger;
                                        i.removeAttribute("data-kt-indicator"), i.disabled = !1, Swal.fire({
                                            text: "University has been successfully created!",
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
                            var University_ID = $("#University_ID").val();
                            var country_name = $("#country_name").val();
                            var university_name = $("#university_name").val();

                            param = "{'ID':'" + University_ID + "','name':'" + university_name + "','country':'" + country_name + "'}";
                            $.ajax({
                                type: "post",
                                url: "/Student_Registration/Universities_Countries.aspx/UPDATE_UNIVERSITY",
                                contentType: "application/json; charset=utf-8",
                                data: param,
                                datatype: "json",
                                async: false,
                                success: function (response) {
                                    var data = response.d;
                                    if (data[0].return == "1") {
                                        debugger;
                                        i.removeAttribute("data-kt-indicator"), i.disabled = !1, Swal.fire({
                                            text: "University has been successfully updated!",
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
"use strict"
KTUtil.onDOMContentLoaded((function () {
    User_Settings.init();
    KTUserSettingsAddAction.init();
    Locations.init();
    KTLocationsAddAction.init();
}));

function GetUniversities() {

    debugger;
    $.ajax({
        type: "post",
        url: "/Student_Registration/Universities_Countries.aspx/GET_ALL_UNIVERSITIES",
        contentType: "application/json; charset=utf-8",
        //data: param,
        async: false,
        datatype: "json",
        success: RenderLocations
        ,
        error: function (response) { debugger; swal("Failed"); }


    });
}
function GetCountries() {
    debugger;
    $.ajax({
        type: "post",
        url: "/Student_Registration/Student_Registration.aspx/GET_STUDY_COUNTRIES",
        contentType: "application/json; charset=utf-8",
        //data: param,
        async: false,
        datatype: "json",
        success: RenderUsers
        ,
        error: function (response) { debugger; swal("Failed"); }


    });
}
function GetDDCountries() {
    debugger;
    debugger;
    //param = "{'country_name':'" + ID + "'}";
    $.ajax({
        type: "post",
        url: "/Student_Registration/Student_Registration.aspx/GET_STUDY_COUNTRIES",
        contentType: "application/json; charset=utf-8",
        //data: "{'ID':'" + ID + "'}",
        datatype: "json",
        async: false,
        success: function (response) {
            debugger;
            var entryLevellookup = response.d;
            var newOption = new Option("", "", true, false);
            $("#country_name").append(newOption);
            $.each(entryLevellookup, function (i) {
                var newOption = new Option(entryLevellookup[i].name, entryLevellookup[i].name, false, false);
                $("#country_name").append(newOption);
            });
        },
        error: function (response) { debugger; swal("Failed"); }
    });

}

function RenderLocations(response) {
    var data = response.d;

        var rows = '';
        var count = 0;

        var table;
        table = $('#kt_datatable_university_listing').DataTable();
        table.clear();
        for (var i = 0; i < data.length; i++) {
            count++;
            table.row.add([data[i].University_Id, data[i].University_Name, data[i].Country]);
        }
        table.draw();

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
            table.row.add([data[i].Id, data[i].name]);
        }
        table.draw();
    //}

}

function AddUser_Settings(obj) {
    $("#updateUserSettingButton").addClass('d-none');
    $("#updatelevelButton").addClass('d-none');

    if (obj == "Country") {
        $(".modaltitle").text("Add Country");
        $(".level_content").addClass("d-none");
        $(".group_content").removeClass("d-none");
    }
    else if (obj == "University") {
        $(".modaltitle").text("Add University");
        $(".group_content").addClass("d-none");
        $(".level_content").removeClass("d-none");
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
function GetLocationByID(id) {
    debugger
    param = "{'ID':'" + id + "'}";
    $.ajax({
        type: "post",
        url: "/Student_Registration/Universities_Countries.aspx/GET_UNIVERSITY_BY_ID",
        contentType: "application/json; charset=utf-8",
        data: param,
        datatype: "json",
        async: false,
        success: function (response) {
            var data = response.d;
            $("#University_ID").val(data[0].University_Id);
            $("#country_name").val(data[0].Country);
            $("#university_name").val(data[0].University_Name);
        },
        error: function (response) { debugger; swal("Failed"); }
    });

}
function GetUserByID(id) {
    debugger
    param = "{'ID':'" + id + "'}";
    $.ajax({
        type: "post",
        url: "/Student_Registration/Universities_Countries.aspx/GET_COUNTRY_BY_ID",
        contentType: "application/json; charset=utf-8",
        data: param,
        datatype: "json",
        async: false,
        success: function (response)
        {
            var data = response.d;
            $("#country").val(data[0].Country_Name);
            $("#Country_ID").val(data[0].StudyCountry_ID);
        },
        error: function (response) { debugger; swal("Failed"); }
    });
}
function DeleteLocation(obj, id) {
    if ($(obj).attr('id') == "deleteLocation") {

        Swal.fire({
            title: "Confirm!",
            text: "Do you really want to delete Location?",
            icon: "warning",
            showCancelButton: true,
            buttons: true,
            dangerMode: true,
        }).then((willDelete) => {
            if (willDelete.isConfirmed) {
                param = "{'ID':'" + id + "'}";

                $.ajax({
                    type: "post",
                    url: "/Student_Registration/Universities_Countries.aspx/DELETE_UNIVERSITY",
                    contentType: "application/json; charset=utf-8",
                    data: param,
                    datatype: "json",
                    async: false,
                    success: function (response) {
                        var data = response.d;
                        if (data[0].return == "1") {
                            Swal.fire({
                                text: "University has been deleted successfully",
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
                                text: "Country has been deleted successfully",
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
                            })                        }

                    },
                    error: function (response) { debugger; swal("Failed"); }
                });

            }

        });
    }
    else {


    }

}
function resetFields() {
    $("#GroupID").val('')
    $("#group_name").val('');
    $("#is_activeGroup").prop("checked", false);
    $("#LevelID").val('')
    $("#level_name").val('');
    $("#submitGroupButton").removeClass('d-none');
    $("#updateGroupButton").addClass('d-none');
}


$("#kt_modal_usersettings_location").on("hidden.bs.modal", function () {
    resetFields();
});

