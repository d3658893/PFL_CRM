<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PFL_CRM.Login" %>


<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->
<head>
    <base href="../../../">
    <title>PFL CRM - Login</title>
    <meta name="description" content="PFL CRM" />
    <meta name="keywords" content="PTCL, UFONE, PTML, Ecosystem, Hub, Vibe, Vibe Pro, PTCL Vibe, Ufone Vibe " />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8" />
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="PFL CRM" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />
    <!--begin::Fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>" />
    <!--end::Fonts-->
    <!--begin::Global Stylesheets Bundle(used by all pages)-->
    <link href="assets/plugins/global/plugins.bundle.css?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>" rel="stylesheet" type="text/css" />
    <link href="assets/css/custom.css?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.bundle.css?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>" rel="stylesheet" type="text/css" />
    <link href="assets/css/animate.css?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>" rel="stylesheet" type="text/css" />
    <!--end::Global Stylesheets Bundle-->
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body" class="header-mobile-fixed subheader-enabled aside-enabled aside-fixed aside-secondary-enabled newloginBody">
    <!--begin::Main-->
    <!--begin::Login-->
    <div class=" login loginnew login-1 login-signin-on d-flex flex-column flex-lg-row flex-column-fluid bg-white">
        <div class="container-fluid">
            <div class="container-fluid">
                <div class="row mt-20 cardsRow">
                    <div class="col ">
                        <div class="card card-main border-0 mh-640px">
                            <div class="card-body main-card">
                                <div class="row">
                                    <div class="col gif1divLogin">
                                        <div class="card float-left border-0 pt-15">
                                            <img class="card-img-top animate__animated animate__bounceInLeft" src="/assets/images/gif.gif" alt="Card image cap">
                                            <div class="card-body">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="card loginCard card-main border-0 float-left shadow-4" >
                                            <div class="card-header p-0 d-none">
                                                <h2 class=" PeopleCareheading fs-3x animate__animated animate__bounceInDown">Welcome
                                                   
                                                    <br>
                                                    to PeopleCare Portal 
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                                <div class=" animate__animated animate__bounceInDown">
                                                    <form  id="kt_sign_in_form" class="form w-90" novalidate="novalidate" runat="server">
<%--                                                        <div class="aspNetHidden">
                                                            <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="DVXFJ/k/HXzlzPxkJ/YJwhJlzg/DJnRQ2zJsAz8xLGhCJDH1A3uOfjb/D1YfICSa+DzE08vsnmmzogRnIaSib/ZSf3Rl/z3P3nFNj0E6jgI=">
                                                        </div>

                                                        <div class="aspNetHidden">
                                                            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D3A6D85E">
                                                            <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="KRSe1KhpJTUmSWmhM+hzDD4c0ahG3fbScy/bOtsTZL0Izxqf1vAYc7kKYCuytb5WMND8pPq/IQz/TdWLuggntWxDxH54MGgITqJu4jGk/n3lZRED5Sm5Fl88Hf+TGpuhJBbFvUH5400FYvhkdsHPjA==">
                                                        </div>--%>
                                                        <div class="h-150px d-flex justify-content-center pb-5">
                                                            <img class="w-300px h-200px pb-4 mb-2" src="/assets/images/LogoPFL.JPEG">
                                                            <%--<img class="" src="/assets/images/edu.gif">--%>
                                                        </div>
                                                        <br>
                                                        <div class="alert alert-danger" runat="server" id="exceptionAlertDiv" visible="false">
                                                            <span class="svg-icon svg-icon-2hx svg-icon-danger me-3">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path opacity="0.3" d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z" fill="black" />
                                                                    <rect x="9" y="13.0283" width="7.3536" height="1.2256" rx="0.6128" transform="rotate(-45 9 13.0283)" fill="black" />
                                                                    <rect x="9.86664" y="7.93359" width="7.3536" height="1.2256" rx="0.6128" transform="rotate(45 9.86664 7.93359)" fill="black" />
                                                                </svg>
                                                                <span runat="server" id="exceptionText"></span>
                                                            </span>
                                                        </div>
                                                        <div class="fv-row mb-2">
                                                            <label class="form-label fs-6 fw-bolder text-dark loginLabel">Username</label>
                                                            <asp:TextBox runat="server" ID="username" CssClass="form-control form-control-lg form-control-solid email" AutoCompleteType="None" ></asp:TextBox> 
                                                            <%--<input class="form-control form-control-lg form-control-solid email" type="text" name="username" autocomplete="off">--%>
                                                        </div>
                                                        <div class=" mb-4 passwordContainer">
                                                            <div class="d-flex flex-stack mb-2">
                                                                <label class="form-label fw-bolder text-dark fs-6 mb-0">Password</label>
                                                            </div>
                                                            <%--<input name="password" type="password" id="password" class="form-control form-control-lg form-control-solid d-none" autocomplete="off">--%>
                                                            <asp:TextBox runat="server" ID="pasword" CssClass="form-control form-control-lg form-control-solid" AutoCompleteType="None" TextMode="Password" ></asp:TextBox> 

                                                            <%--<input class="form-control form-control-lg form-control-solid" id="passwordFrontEnd" type="password" name="passwordFrontEnd" autocomplete="off">--%>
                                                        </div>
                                                        <asp:Button type="submit"  runat="server" ClientIDMode="Static" Text="Login" OnClick="login" CssClass="btn btn-lg btn-success w-100 mb-5" ID="kt_sign_in_submits"/>
                                                    </form>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                    <div class="col gif2divLogin">
                                        <div class="card float-left border-0 pt-8">
                                            <img class="card-img-top gif2card h-410px animate__animated animate__bounceInRight" src="/assets/images/gif2.gif" alt="Card image cap">
                                            <div class="card-body">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--end::Login-->
    <!--end::Main-->
    <script>var hostUrl = "/assets/";</script>
    <script src="/assets/plugins/global/plugins.bundle.js?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>
    <script src="assets/js/scripts.bundle.js?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>
    <script src="/assets/js/custom/authentication/sign-in/general.js?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>
    <script src="/assets/js/custom/authentication/sign-in/aes.js?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>
    <script src="/assets/js/custom/authentication/sign-in/crypto.js?rndstr=<%: DateTime.Now.ToString("yyyyMMddhhmmss") %>"></script>
    <script>
        $(document).ready(function () {
            //KTCookie.remove("gchro");
            KTCookie.remove("profilepicture");
        });
        $('.email').keyup(function () {
            if ($.isNumeric($(this).val().charAt(0))) {


                //allow  backspace, tab, ctrl+A, escape, carriage return

                $('.login_type').val('CNIC');
                $('.loginLabel').text('CNIC');
                $('.passwordContainer').hide();
                $(this).attr('maxlength', 15);
                $(this).removeAttr('type');

                if (event.keyCode == 8 || event.keyCode == 9
                    || event.keyCode == 27 || event.keyCode == 13
                    || (event.keyCode == 65 && event.ctrlKey === true))
                    return;

                if ((event.keyCode < 48 || event.keyCode > 57))
                    event.preventDefault();

                var length = $(this).val().length;

                if (length == 5 || length == 13)
                    $(this).val($(this).val() + '-');


            }
            else {
                $('.login_type').val('AD');
                $('.loginLabel').text('Email');
                $('.passwordContainer').show();
                $(this).removeAttr('maxlength');
                $(this).attr('type', 'text');
            }

        });

        (function ($) {
            // Behind the scenes method deals with browser
            // idiosyncrasies and such
            $.caretTo = function (el, index) {
                if (el.createTextRange) {
                    var range = el.createTextRange();
                    range.move("character", index);
                    range.select();
                } else if (el.selectionStart != null) {
                    el.focus();
                    el.setSelectionRange(index, index);
                }
            };

            // The following methods are queued under fx for more
            // flexibility when combining with $.fn.delay() and
            // jQuery effects.

            // Set caret to a particular index
            $.fn.caretTo = function (index, offset) {
                return this.queue(function (next) {
                    if (isNaN(index)) {
                        var i = $(this).val().indexOf(index);

                        if (offset === true) {
                            i += index.length;
                        } else if (offset) {
                            i += offset;
                        }

                        $.caretTo(this, i);
                    } else {
                        $.caretTo(this, index);
                    }

                    next();
                });
            };

            // Set caret to beginning of an element
            $.fn.caretToStart = function () {
                return this.caretTo(0);
            };

            // Set caret to the end of an element
            $.fn.caretToEnd = function () {
                return this.queue(function (next) {
                    $.caretTo(this, $(this).val().length);
                    next();
                });
            };
        }(jQuery));
    </script>
</body>
<!--end::Body-->
</html>
<!--end::HMTL-->
