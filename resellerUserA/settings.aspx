<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="resellerUserA.settings" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>

<uc1:head runat="server" ID="head" />

<title>Settings</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" class="app-default">
    <form class="mt-4" action="#" method="Post" name="frmpd" id="frmpd" runat="server">
        <uc1:loader runat="server" ID="loader" />
        <!--begin::Theme mode setup on page load-->
        <script>
            var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
        </script>
        <!--end::Theme mode setup on page load-->
        <!--begin::App-->
        <div class="d-flex flex-column flex-root app-root" id="kt_app_root">
            <!--begin::Page-->
            <div class="app-page flex-column flex-column-fluid" id="kt_app_page">
                <!--begin::Header-->
                <uc1:menuTop runat="server" ID="menuTop1" parentPageText="Settings" childPageText="Profile" />
                <!--end::Header-->
                <!--begin::Wrapper-->
                <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                    <!--begin::Sidebar-->
                    <uc1:sideBar runat="server" ID="sideBar" />
                    <!--end::Sidebar-->
                    <!--begin::Main-->
                    <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
                        <!--begin::Content wrapper-->
                        <div class="d-flex flex-column flex-column-fluid">
                            <!--begin::Content-->
                            <div id="kt_app_content" class="app-content flex-column-fluid">
                                <!--begin::Content container-->
                                <div id="kt_app_content_container" class="app-container container-fluid">
                                    <!--begin::Row-->
                                    <div class="row g-5 g-xl-10 mb-xl-10 mt-0">
                                        <!--begin::Col-->
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <!--begin::Card widget 4-->
                                            <div class="card card-flush h-100 border-0">
                                                <!--begin::Card body-->
                                                <div class="card-body pb-4 mt-5 pt-0 ps-0 pr-0">
                                                    <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                                                        <li class="nav-item">
                                                            <a class="nav-link active" data-bs-toggle="tab" href="#profile_tab">Profile</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-bs-toggle="tab" href="#security_tab">Security</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-bs-toggle="tab" href="#api_tab">API & DLR</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" data-bs-toggle="tab" href="#notifications_tab">Notifications</a>
                                                        </li>
                                                    </ul>
                                                    <div class="tab-content mt-8" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="profile_tab" role="tabpanel">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="card-body shadow-xs rounded-4">
                                                                        <!--begin::Page title-->
                                                                        <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                            <!--begin::Title-->
                                                                            <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Profile Details</h1>
                                                                            <p class="fs-14 color-neutral-grey">
                                                                                You can change your name, update your contact information, and other details to make your account feel more personalized.
                                                                            </p>
                                                                            <!--end::Title-->
                                                                        </div>
                                                                        <!--end::Page title-->
                                                                        <div class="row">
                                                                            <div class="col-lg-6">
                                                                                <div class="mb-5">
                                                                                    <label class="form-label">Name:</label>
                                                                                    <input class="form-custom-input form-control" value="" type="text" name="name" id="name" runat="server" placeholder="Enter full name">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-lg-6">
                                                                                <div class="mb-5">
                                                                                    <label class="form-label">Phone Number:</label>
                                                                                    <input class="form-custom-input form-control" value="" type="text" name="phone" id="phone" runat="server" onkeypress="return goodchars(event,'0123456789,+');" maxlength="21" placeholder="Enter your phone number">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-lg-6">
                                                                                <div class="mb-5">
                                                                                    <label class="form-label">Company Name:</label>
                                                                                    <input class="form-custom-input form-control" value="" type="text" name="company" id="company" runat="server" placeholder="Enter company name">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-lg-6">
                                                                                <div class="mb-5">
                                                                                    <label class="form-label">Email:</label>
                                                                                    <div class="form-custom-input form-control your-class">test@test.com</div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-lg-6">
                                                                                <div class="mb-5">
                                                                                    <label class="form-label">Country:</label>
                                                                                    <select name="country" id="country" runat="server" class="form-select form-custom-select" aria-label="">
                                                                                        <option value="Greece" selected="">Greece</option>
                                                                                        <option value="Afghanistan">Afghanistan</option>
                                                                                        <option value="Aland Islands">Aland Islands</option>
                                                                                        <option value="Albania">Albania</option>
                                                                                        <option value="Algeria">Algeria</option>
                                                                                        <option value="American Samoa">American Samoa</option>
                                                                                        <option value="AndorrA">AndorrA</option>
                                                                                        <option value="Angola">Angola</option>
                                                                                        <option value="Anguilla">Anguilla</option>
                                                                                        <option value="Antarctica">Antarctica</option>
                                                                                        <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                                                                        <option value="Argentina">Argentina</option>
                                                                                        <option value="Armenia">Armenia</option>
                                                                                        <option value="Aruba">Aruba</option>
                                                                                        <option value="Australia">Australia</option>
                                                                                        <option value="Austria">Austria</option>
                                                                                        <option value="Azerbaijan">Azerbaijan</option>
                                                                                        <option value="Bahamas">Bahamas</option>
                                                                                        <option value="Bahrain">Bahrain</option>
                                                                                        <option value="Bangladesh">Bangladesh</option>
                                                                                        <option value="Barbados">Barbados</option>
                                                                                        <option value="Belarus">Belarus</option>
                                                                                        <option value="Belgium">Belgium</option>
                                                                                        <option value="Belize">Belize</option>
                                                                                        <option value="Benin">Benin</option>
                                                                                        <option value="Bermuda">Bermuda</option>
                                                                                        <option value="Bhutan">Bhutan</option>
                                                                                        <option value="Bolivia">Bolivia</option>
                                                                                        <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                                                                        <option value="Botswana">Botswana</option>
                                                                                        <option value="Bouvet Island">Bouvet Island</option>
                                                                                        <option value="Brazil">Brazil</option>
                                                                                        <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                                                                                        <option value="Brunei Darussalam">Brunei Darussalam</option>
                                                                                        <option value="Bulgaria">Bulgaria</option>
                                                                                        <option value="Burkina Faso">Burkina Faso</option>
                                                                                        <option value="Burundi">Burundi</option>
                                                                                        <option value="Cambodia">Cambodia</option>
                                                                                        <option value="Cameroon">Cameroon</option>
                                                                                        <option value="Canada">Canada</option>
                                                                                        <option value="Cape Verde">Cape Verde</option>
                                                                                        <option value="Cayman Islands">Cayman Islands</option>
                                                                                        <option value="Central African Republic">Central African Republic</option>
                                                                                        <option value="Chad">Chad</option>
                                                                                        <option value="Chile">Chile</option>
                                                                                        <option value="China">China</option>
                                                                                        <option value="Christmas Island">Christmas Island</option>
                                                                                        <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                                                                        <option value="Colombia">Colombia</option>
                                                                                        <option value="Comoros">Comoros</option>
                                                                                        <option value="Congo">Congo</option>
                                                                                        <option value="Congo, The Democratic Republic of the">Congo, The Democratic Republic of the</option>
                                                                                        <option value="Cook Islands">Cook Islands</option>
                                                                                        <option value="Costa Rica">Costa Rica</option>
                                                                                        <option value="Cote D\&quot;Ivoire">Cote D\"Ivoire</option>
                                                                                        <option value="Croatia">Croatia</option>
                                                                                        <option value="Cuba">Cuba</option>
                                                                                        <option value="Cyprus">Cyprus</option>
                                                                                        <option value="Czech Republic">Czech Republic</option>
                                                                                        <option value="Denmark">Denmark</option>
                                                                                        <option value="Djibouti">Djibouti</option>
                                                                                        <option value="Dominica">Dominica</option>
                                                                                        <option value="Dominican Republic">Dominican Republic</option>
                                                                                        <option value="Ecuador">Ecuador</option>
                                                                                        <option value="Egypt">Egypt</option>
                                                                                        <option value="El Salvador">El Salvador</option>
                                                                                        <option value="Equatorial Guinea">Equatorial Guinea</option>
                                                                                        <option value="Eritrea">Eritrea</option>
                                                                                        <option value="Estonia">Estonia</option>
                                                                                        <option value="Ethiopia">Ethiopia</option>
                                                                                        <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                                                                        <option value="Faroe Islands">Faroe Islands</option>
                                                                                        <option value="Fiji">Fiji</option>
                                                                                        <option value="Finland">Finland</option>
                                                                                        <option value="France">France</option>
                                                                                        <option value="French Guiana">French Guiana</option>
                                                                                        <option value="French Polynesia">French Polynesia</option>
                                                                                        <option value="French Southern Territories">French Southern Territories</option>
                                                                                        <option value="Gabon">Gabon</option>
                                                                                        <option value="Gambia">Gambia</option>
                                                                                        <option value="Georgia">Georgia</option>
                                                                                        <option value="Germany">Germany</option>
                                                                                        <option value="Ghana">Ghana</option>
                                                                                        <option value="Gibraltar">Gibraltar</option>
                                                                                        <option value="Greece">Greece</option>
                                                                                        <option value="Greenland">Greenland</option>
                                                                                        <option value="Grenada">Grenada</option>
                                                                                        <option value="Guadeloupe">Guadeloupe</option>
                                                                                        <option value="Guam">Guam</option>
                                                                                        <option value="Guatemala">Guatemala</option>
                                                                                        <option value="Guernsey">Guernsey</option>
                                                                                        <option value="Guinea">Guinea</option>
                                                                                        <option value="Guinea-Bissau">Guinea-Bissau</option>
                                                                                        <option value="Guyana">Guyana</option>
                                                                                        <option value="Haiti">Haiti</option>
                                                                                        <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
                                                                                        <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                                                                        <option value="Honduras">Honduras</option>
                                                                                        <option value="Hong Kong">Hong Kong</option>
                                                                                        <option value="Hungary">Hungary</option>
                                                                                        <option value="Iceland">Iceland</option>
                                                                                        <option value="India">India</option>
                                                                                        <option value="Indonesia">Indonesia</option>
                                                                                        <option value="Iran, Islamic Republic Of">Iran, Islamic Republic Of</option>
                                                                                        <option value="Iraq">Iraq</option>
                                                                                        <option value="Ireland">Ireland</option>
                                                                                        <option value="Isle of Man">Isle of Man</option>
                                                                                        <option value="Israel">Israel</option>
                                                                                        <option value="Italy">Italy</option>
                                                                                        <option value="Jamaica">Jamaica</option>
                                                                                        <option value="Japan">Japan</option>
                                                                                        <option value="Jersey">Jersey</option>
                                                                                        <option value="Jordan">Jordan</option>
                                                                                        <option value="Kazakhstan">Kazakhstan</option>
                                                                                        <option value="Kenya">Kenya</option>
                                                                                        <option value="Kiribati">Kiribati</option>
                                                                                        <option value="Korea, Democratic People\&quot;S Republic of">Korea, Democratic People\"S Republic of</option>
                                                                                        <option value="Korea, Republic of">Korea, Republic of</option>
                                                                                        <option value="Kuwait">Kuwait</option>
                                                                                        <option value="Kyrgyzstan">Kyrgyzstan</option>
                                                                                        <option value="Lao People\&quot;S Democratic Republic">Lao People\"S Democratic Republic</option>
                                                                                        <option value="Latvia">Latvia</option>
                                                                                        <option value="Lebanon">Lebanon</option>
                                                                                        <option value="Lesotho">Lesotho</option>
                                                                                        <option value="Liberia">Liberia</option>
                                                                                        <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                                                                                        <option value="Liechtenstein">Liechtenstein</option>
                                                                                        <option value="Lithuania">Lithuania</option>
                                                                                        <option value="Luxembourg">Luxembourg</option>
                                                                                        <option value="Macao">Macao</option>
                                                                                        <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
                                                                                        <option value="Madagascar">Madagascar</option>
                                                                                        <option value="Malawi">Malawi</option>
                                                                                        <option value="Malaysia">Malaysia</option>
                                                                                        <option value="Maldives">Maldives</option>
                                                                                        <option value="Mali">Mali</option>
                                                                                        <option value="Malta">Malta</option>
                                                                                        <option value="Marshall Islands">Marshall Islands</option>
                                                                                        <option value="Martinique">Martinique</option>
                                                                                        <option value="Mauritania">Mauritania</option>
                                                                                        <option value="Mauritius">Mauritius</option>
                                                                                        <option value="Mayotte">Mayotte</option>
                                                                                        <option value="Mexico">Mexico</option>
                                                                                        <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                                                                                        <option value="Moldova, Republic of">Moldova, Republic of</option>
                                                                                        <option value="Monaco">Monaco</option>
                                                                                        <option value="Mongolia">Mongolia</option>
                                                                                        <option value="Montenegro">Montenegro</option>
                                                                                        <option value="Montserrat">Montserrat</option>
                                                                                        <option value="Morocco">Morocco</option>
                                                                                        <option value="Mozambique">Mozambique</option>
                                                                                        <option value="Myanmar">Myanmar</option>
                                                                                        <option value="Namibia">Namibia</option>
                                                                                        <option value="Nauru">Nauru</option>
                                                                                        <option value="Nepal">Nepal</option>
                                                                                        <option value="Netherlands">Netherlands</option>
                                                                                        <option value="Netherlands Antilles">Netherlands Antilles</option>
                                                                                        <option value="New Caledonia">New Caledonia</option>
                                                                                        <option value="New Zealand">New Zealand</option>
                                                                                        <option value="Nicaragua">Nicaragua</option>
                                                                                        <option value="Niger">Niger</option>
                                                                                        <option value="Nigeria">Nigeria</option>
                                                                                        <option value="Niue">Niue</option>
                                                                                        <option value="Norfolk Island">Norfolk Island</option>
                                                                                        <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                                                                        <option value="Norway">Norway</option>
                                                                                        <option value="Oman">Oman</option>
                                                                                        <option value="Pakistan">Pakistan</option>
                                                                                        <option value="Palau">Palau</option>
                                                                                        <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                                                                                        <option value="Panama">Panama</option>
                                                                                        <option value="Papua New Guinea">Papua New Guinea</option>
                                                                                        <option value="Paraguay">Paraguay</option>
                                                                                        <option value="Peru">Peru</option>
                                                                                        <option value="Philippines">Philippines</option>
                                                                                        <option value="Pitcairn">Pitcairn</option>
                                                                                        <option value="Poland">Poland</option>
                                                                                        <option value="Portugal">Portugal</option>
                                                                                        <option value="Puerto Rico">Puerto Rico</option>
                                                                                        <option value="Qatar">Qatar</option>
                                                                                        <option value="Reunion">Reunion</option>
                                                                                        <option value="Romania">Romania</option>
                                                                                        <option value="Russian Federation">Russian Federation</option>
                                                                                        <option value="RWANDA">RWANDA</option>
                                                                                        <option value="Saint Helena">Saint Helena</option>
                                                                                        <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                                                                        <option value="Saint Lucia">Saint Lucia</option>
                                                                                        <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                                                                        <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                                                                                        <option value="Samoa">Samoa</option>
                                                                                        <option value="San Marino">San Marino</option>
                                                                                        <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                                                                        <option value="Saudi Arabia">Saudi Arabia</option>
                                                                                        <option value="Senegal">Senegal</option>
                                                                                        <option value="Serbia">Serbia</option>
                                                                                        <option value="Seychelles">Seychelles</option>
                                                                                        <option value="Sierra Leone">Sierra Leone</option>
                                                                                        <option value="Singapore">Singapore</option>
                                                                                        <option value="Slovakia">Slovakia</option>
                                                                                        <option value="Slovenia">Slovenia</option>
                                                                                        <option value="Solomon Islands">Solomon Islands</option>
                                                                                        <option value="Somalia">Somalia</option>
                                                                                        <option value="South Africa">South Africa</option>
                                                                                        <option value="South Georgia and the South Sandwich Islands">South Georgia and the South Sandwich Islands</option>
                                                                                        <option value="Spain">Spain</option>
                                                                                        <option value="Sri Lanka">Sri Lanka</option>
                                                                                        <option value="Sudan">Sudan</option>
                                                                                        <option value="Suriname">Suriname</option>
                                                                                        <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                                                                        <option value="Swaziland">Swaziland</option>
                                                                                        <option value="Sweden">Sweden</option>
                                                                                        <option value="Switzerland">Switzerland</option>
                                                                                        <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                                                                                        <option value="Taiwan, Province of China">Taiwan, Province of China</option>
                                                                                        <option value="Tajikistan">Tajikistan</option>
                                                                                        <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                                                                                        <option value="Thailand">Thailand</option>
                                                                                        <option value="Timor-Leste">Timor-Leste</option>
                                                                                        <option value="Togo">Togo</option>
                                                                                        <option value="Tokelau">Tokelau</option>
                                                                                        <option value="Tonga">Tonga</option>
                                                                                        <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                                                                        <option value="Tunisia">Tunisia</option>
                                                                                        <option value="Turkey">Turkey</option>
                                                                                        <option value="Turkmenistan">Turkmenistan</option>
                                                                                        <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                                                                        <option value="Tuvalu">Tuvalu</option>
                                                                                        <option value="Uganda">Uganda</option>
                                                                                        <option value="Ukraine">Ukraine</option>
                                                                                        <option value="United Arab Emirates">United Arab Emirates</option>
                                                                                        <option value="United Kingdom">United Kingdom</option>
                                                                                        <option value="United States">United States</option>
                                                                                        <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
                                                                                        <option value="Uruguay">Uruguay</option>
                                                                                        <option value="Uzbekistan">Uzbekistan</option>
                                                                                        <option value="Vanuatu">Vanuatu</option>
                                                                                        <option value="Venezuela">Venezuela</option>
                                                                                        <option value="Viet Nam">Viet Nam</option>
                                                                                        <option value="Virgin Islands, British">Virgin Islands, British</option>
                                                                                        <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                                                                                        <option value="Wallis and Futuna">Wallis and Futuna</option>
                                                                                        <option value="Western Sahara">Western Sahara</option>
                                                                                        <option value="Yemen">Yemen</option>
                                                                                        <option value="Zambia">Zambia</option>
                                                                                        <option value="Zimbabwe">Zimbabwe</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="text-start">
                                                                            <asp:Button ID="btnsubmit_personal" runat="server" Text="Edit profile"
                                                                                CssClass="btn btn-grad py-2 px-8 rounded-1"
                                                                                OnClientClick="profileInfoSubmit('btnsubmit_personal'); return false;" OnClick="btnsubmit_personal_Click" />
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="security_tab" role="tabpanel">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div>
                                                                        <div class="card-body shadow-xs rounded-4">
                                                                            <!--begin::Page title-->
                                                                            <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                                <!--begin::Title-->
                                                                                <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Change Password</h1>
                                                                                <p class="fs-14 color-neutral-grey">
                                                                                    Your new password must be at least 8 characters long. This ensures a baseline level of security and makes it harder for unauthorized individuals to guess.
                                                                                </p>
                                                                                <!--end::Title-->
                                                                            </div>
                                                                            <!--end::Page title-->
                                                                            <div class="mt-4">
                                                                                <div class="row">
                                                                                    <div class="col-lg-6">
                                                                                        <div class="mb-5">
                                                                                            <label class="form-label">Current Password:</label>
                                                                                            <input type="password" class="form-control form-custom-input" name="current_password" id="current_password" runat="server" placeholder="Type Your Current Password" value="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-lg-6">
                                                                                        <div class="mb-5">
                                                                                            <label class="form-label">New Password:</label>
                                                                                            <input type="password" class="form-control form-custom-input" name="password_new" id="password_new" runat="server" placeholder="Type Your New Password" value="">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="text-start">
                                                                                    <asp:Button ID="btnsubmit_password" runat="server" Text="Update password"
                                                                                        CssClass="btn btn-grad py-2 px-8 rounded-1"
                                                                                        OnClientClick="updatePasswordSubmit('btnsubmit_password'); return false;" OnClick="btnsubmit_password_Click" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-18">
                                                                            <div class="card-body shadow-xs rounded-4">
                                                                                <!--begin::Page title-->
                                                                                <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                                    <!--begin::Title-->
                                                                                    <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Two Factor Authentication</h1>
                                                                                    <p class="fs-14 color-neutral-grey">
                                                                                        Ensure maximum protection for your account by enabling two-factor authentication for login.
                                                                                    </p>
                                                                                    <!--end::Title-->
                                                                                </div>
                                                                                <!--end::Page title-->
                                                                                <div class="mt-4">
                                                                                    <div class="d-flex justify-content-start align-items-start mb-5 two-fa-card">
                                                                                        <div class="form-check form-switch me-4">
                                                                                            <input class="form-check-input" type="checkbox" role="switch" id="twofacheckbox" name="twofacheckbox" runat="server">
                                                                                        </div>
                                                                                        <div>
                                                                                            <p class="fs-14 dark-color fw-600 mb-2">
                                                                                                Activate 2FA
                                                                                            </p>
                                                                                            <p class="fs-14 color-neutral-grey mb-0">
                                                                                                Enable two-factor authentication (2FA) to receive a verification OTP code via your registered email every time you log in.
                                                                                            </p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="text-start">
                                                                                        <asp:Button ID="btnsubmit_2fa" runat="server" Text="Save changes"
                                                                                            CssClass="btn btn-grad py-2 px-8 rounded-1" OnClick="btnsubmit_2fa_Click" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="api_tab" role="tabpanel">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div>
                                                                        <div class="card-body shadow-xs rounded-4">
                                                                            <!--begin::Page title-->
                                                                            <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                                <!--begin::Title-->
                                                                                <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Enhancing API Security</h1>
                                                                                <p class="fs-14 color-neutral-grey">
                                                                                    Your new password must be at least 8 characters long. This ensures a baseline level of security and makes it harder for unauthorized individuals to guess.
                                                                                </p>
                                                                                <!--end::Title-->
                                                                            </div>
                                                                            <!--end::Page title-->
                                                                            <div class="row mt-3 ">
                                                                                <div class="col-md-6 mb-3">
                                                                                    <div class="d-flex flex-column justify-content-between align-content-start h-100">
                                                                                        <div>
                                                                                            <label class="form-label">Configure API password</label>
                                                                                            <input value="" type="password" class="form-control form-custom-input" name="api_pass" id="api_pass" runat="server" placeholder="Enter your API password">
                                                                                            <p class="fs-14 color-neutral-grey mt-4">
                                                                                                Enhance the security of your API access by setting a unique API password. By default, the API uses the same login password, but you can ensure separate authentication for better protection.
                                                                                            </p>
                                                                                        </div>

                                                                                        <asp:Button ID="btnsubmit_api_pass" runat="server" Text="Save"
                                                                                            CssClass="btn btn-grad py-2 px-8 rounded-1 w-fit"
                                                                                            OnClientClick="updateAPIPasswordSubmit('btnsubmit_api_pass'); return false;" OnClick="btnsubmit_api_pass_Click" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-6 mb-3 ">
                                                                                    <div class="mb-3 d-flex flex-column justify-content-between align-content-start h-100">
                                                                                        <div>
                                                                                            <label class="form-label">Enable IP Whitelisting:</label>
                                                                                            <input class="form-control form-custom-input" value="" type="text" name="api_ip" id="api_ip" runat="server" placeholder="Enter whitelisted IP address for your API">
                                                                                            <p class="fs-14 color-neutral-grey mt-4">
                                                                                                Take a proactive approach to protect your API from unauthorized access. Enable IP whitelisting in this section to restrict HTTP(s) API requests to trusted IP addresses only. 
                                                                                            </p>
                                                                                        </div>
                                                                                        <asp:Button ID="btnsubmit_api_ip" runat="server" Text="Save"
                                                                                            CssClass="btn btn-grad py-2 px-8 rounded-1 w-fit"
                                                                                            OnClientClick="updateAPIIPubmit('btnsubmit_api_ip'); return false;" OnClick="btnsubmit_api_ip_Click" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-18">
                                                                            <div class="card-body shadow-xs rounded-4">
                                                                                <!--begin::Page title-->
                                                                                <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                                    <!--begin::Title-->
                                                                                    <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">DLR Call Back</h1>
                                                                                    <p class="fs-14 color-neutral-grey">
                                                                                        Ensure the URL Accepts GET, POST, and HEAD Methods with HTTP Status 200 Our system will verify the URL for any errors before adding it to your account.
                                                                                    </p>
                                                                                    <!--end::Title-->
                                                                                </div>
                                                                                <!--end::Page title-->
                                                                                <div class="mt-4">
                                                                                    <div>
                                                                                        <label class="form-label">DLR Call Back URL</label>
                                                                                        <input class="form-control form-custom-input" value="" type="text" name="dlr" id="dlr" runat="server" placeholder="http://www.example.com/dlr.php">
                                                                                        <p class="fs-14 color-neutral-grey mt-4">
                                                                                            Enhance the security of your API access by setting a unique API password. By default, the API uses the same login password, but you can ensure separate authentication for better protection.
                                                                                        </p>
                                                                                    </div>
                                                                                    <div class="text-start">
                                                                                         <asp:Button ID="btnsubmit_dlr" runat="server" Text="Save"
                                                                                             CssClass="btn btn-grad py-2 px-8 rounded-1 w-fit"
                                                                                             OnClientClick="dlrSubmit('btnsubmit_dlr'); return false;" OnClick="btnsubmit_dlr_Click" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="notifications_tab" role="tabpanel">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div>
                                                                        <div class="card-body shadow-xs rounded-4">
                                                                            <!--begin::Page title-->
                                                                            <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                                <!--begin::Title-->
                                                                                <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Notifications</h1>
                                                                                <p class="fs-14 color-neutral-grey">
                                                                                    Once you've set your desired low balance threshold, our system will monitor your account balance. If it falls below the specified amount, we'll immediately notify you through email.
                                                                                </p>
                                                                                <!--end::Title-->
                                                                            </div>
                                                                            <!--end::Page title-->
                                                                            <div class="mt-4">
                                                                                <div class="row">
                                                                                    <div class="col-md-6">
                                                                                        <div>
                                                                                            <div>
                                                                                                <div class="d-flex justify-content-start align-items-start mb-5">
                                                                                                    <div class="form-check form-switch me-4">
                                                                                                        <input class="form-check-input" type="checkbox" role="switch" id="low_balance_checkbox" name="low_balance_checkbox" runat="server">
                                                                                                    </div>
                                                                                                    <div>
                                                                                                        <div>
                                                                                                            <p class="fs-14 dark-color fw-600 mb-2">
                                                                                                                Balance warning
                                                                                                            </p>
                                                                                                            <p class="fs-14 color-neutral-grey mb-0">
                                                                                                                Send an email or SMS anytime your balance runs below the listed amount.
                                                                                                            </p>
                                                                                                        </div>
                                                                                                        <div class="mb-5 mt-8">
                                                                                                            <label class="form-label">When balance falls below</label>
                                                                                                            <input class="form-control form-custom-input" type="text" disabled="" value="" name="low_balance_amount" maxlength="7" id="low_balance_amount" runat="server" placeholder="Enter an amount" onkeypress="return goodchars(event,'0123456789');">
                                                                                                        </div>
                                                                                                        <div>
                                                                                                            <label class="form-label">Notification sent to:</label>
                                                                                                            <input class="form-control form-custom-input" type="email" disabled="" value="" name="low_balance_email" id="low_balance_email" runat="server" placeholder="Email address to notify">
                                                                                                        </div>
                                                                                                        <div class="text-start mt-5">
                                                                                                            <asp:Button ID="btnsubmit_alert" runat="server" Text="Save changes"
                                                                                                                CssClass="btn btn-grad py-2 px-8 rounded-1"
                                                                                                                OnClientClick="updateNotification('btnsubmit_alert'); return false;" OnClick="btnsubmit_alert_Click" />
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
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end::Card body-->
                                            </div>
                                            <!--end::Card widget 4-->
                                        </div>
                                        <!--end::Col-->
                                    </div>
                                    <!--end::Row-->
                                </div>
                                <!--end::Content container-->
                            </div>
                            <!--end::Content-->
                        </div>
                        <!--end::Content wrapper-->
                        <uc1:footer runat="server" ID="footer" />
                    </div>
                    <!--end:::Main-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Page-->
        </div>
        <!--end::App-->
        <!--begin::Scrolltop-->
        <div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
            <i class="ki-outline ki-arrow-up"></i>
        </div>
        <!--end::Scrolltop-->


        <uc1:footerLinks runat="server" ID="footerLinks" />
        <script src="/assets/js/settings.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>
