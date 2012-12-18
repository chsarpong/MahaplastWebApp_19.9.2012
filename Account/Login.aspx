<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Account/Account.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head">
    <link href="Styles/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/docs.css" rel="stylesheet" type="text/css" />
    <script src="/js/application.js" type="text/javascript"></script>
    <script src="/js/bootstrap-alert.js" type="text/javascript"></script>
    <script src="/js/bootstrap-button.js" type="text/javascript"></script>
    <script src="/js/bootstrap-carousel.js" type="text/javascript"></script>
    <script src="/js/bootstrap-collapse.js" type="text/javascript"></script>
    <script src="/js/bootstrap-dropdown.js" type="text/javascript"></script>
    <script src="/js/bootstrap-modal.js" type="text/javascript"></script>
    <script src="/js/bootstrap-popover.js" type="text/javascript"></script>
    <script src="/js/bootstrap-scrollspy.js" type="text/javascript"></script>
    <script src="/js/bootstrap-tab.js" type="text/javascript"></script>
    <script src="/js/bootstrap-tooltip.js" type="text/javascript"></script>
    <script src="/js/bootstrap-transition.js" type="text/javascript"></script>
    <script src="/js/bootstrap-typeahead.js" type="text/javascript"></script>
    <script src="/js/jquery.js" type="text/javascript"></script>

    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="Styles/BuyerInfoSys.css" rel="stylesheet" type="text/css" />

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="../Styles/Lahja.css" rel="stylesheet" type="text/css" />

       <script type="text/javascript">
           $(function () {
               $('#myCarousel').carousel({
                   interval: 2000
               });
           });
	    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

<br /><br /><br />
    <h2>
        Log In
    </h2>
    <p>
        Please enter your username and password.<br />
        <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false"></asp:HyperLink> 
    </p>
    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Account Information</legend>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
                    </p>
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                        ValidationGroup="LoginUserValidationGroup" onclick="LoginButton_Click"/>
                </p>
                <br /><br />
            </div>
        </LayoutTemplate>
    </asp:Login>

    <div>
                 If you don't have an account
                  <a href="../CreatePersCustAcct.aspx">Register as buyer</a> OR
                  <a href="../CreateBusAcct.aspx">Register as merchant</a>
    </div>

    <br /><br />

<div id="Div1"></div>
<script type="text/javascript">
    window.fbAsyncInit = function () {

        FB.getLoginStatus(function (response) {
            if (response.status === 'connected') {
                // connected
            } else if (response.status === 'not_authorized') {
                // not_authorized
            } else {
                // not_logged_in
            }
        });
        // init the FB JS SDK
        FB.init({
            appId: '573050709378253', // App ID from the App Dashboard
            channelUrl: 'https://enigmatic-headland-1327.herokuapp.com/', // Channel File for x-domain communication
            status: true, // check the login status upon init?
            cookie: true, // set sessions cookies to allow your server to access the session?
            xfbml: true  // parse XFBML tags on this page?
        });

        // Additional initialization code such as adding Event Listeners goes here
        FB.Event.subscribe('auth.authResponseChange', function (response) {
            if (response.status === 'connected') {
                // the user is logged in and has authenticated your
                // app, and response.authResponse supplies
                // the user's ID, a valid access token, a signed
                // request, and the time the access token 
                // and signed request each expire
                var uid = response.authResponse.userID;
                var accessToken = response.authResponse.accessToken;

                // TODO: Handle the access token

            } else if (response.status === 'not_authorized') {
                // the user is logged in to Facebook, 
                // but has not authenticated your app
            } else {
                // the user isn't logged in to Facebook.
            }
        });
    };

    function login() {
        FB.login(function (response) {
            if (response.authResponse) {
                // connected
            } else {
                // cancelled
            }
        });
    }

function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
        console.log('Good to see you, ' + response.name + '.');
    });
}


    // Additional init code here
FB.getLoginStatus(function(response) {
    if (response.status === 'connected') {
        // connected
    } else if (response.status === 'not_authorized') {
        // not_authorized
        login();
    } else {
        // not_logged_in
        login();
    }
});


    // Load the SDK's source Asynchronously
    // Note that the debug version is being actively developed and might 
    // contain some type checks that are overly strict. 
    // Please report such bugs using the bugs tool.
    (function (d, debug) {
        var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
        if (d.getElementById(id)) { return; }
        js = d.createElement('script'); js.id = id; js.async = true;
        js.src = "//connect.facebook.net/en_US/all" + (debug ? "/debug" : "") + ".js";
        ref.parentNode.insertBefore(js, ref);
    } (document, /*debug*/false));
</script>

<div id="fb-root"></div>
<script type="text/javascript">    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=573050709378253";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));</script>

<script type="text/C#" src="//connect.facebook.net/en_US/all.js"></script>

<div class="fcbk fb-login-button" data-show-faces="true" data-width="1000" data-max-rows="1" size="xlarge"></div>
<br /><br />
<%--<fb:activity actions="[deamshub]:ACTION-TYPE"/></fb:activity>--%>

<div class="fb-like" data-href="http://localhost:19548/MahaplastWebApp_19.9.2012/Account/Login.aspx" data-send="true" data-width="450"></div>
   
</asp:Content>