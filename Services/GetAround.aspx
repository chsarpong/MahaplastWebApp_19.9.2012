<%@ Page Title="" Language="C#" MasterPageFile="~/Services/Businesservice.master" AutoEventWireup="true" CodeFile="GetAround.aspx.cs" Inherits="Services_GetAround" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/docs.css" rel="stylesheet" type="text/css" />
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

    <link href="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/css/metro.css"
        rel="stylesheet" type="text/css" />
    <link href="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/css/representative.css"
        rel="stylesheet" type="text/css" />
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/less-1.3.0.min.js"
        type="text/javascript"></script>
    <link href="../Styles/metro.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/GetAround.css" rel="stylesheet" type="text/css" />
    


 <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/less-1.3.0.min.js" type="text/javascript"></script>
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/jquery.mousewheel.min.js" type="text/javascript"></script>
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/jquery.cycle.all.js" type="text/javascript"></script>
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/metroui.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $("body").metroUI();
    })

    $(function () {
        var new_width = 0;

        $(".metro-section").each(function () {
            var w = $(this).width() + 80;
            new_width += w;
        });

        $(".metro-sections").css("width", new_width);

        $(".metro-scroll").height($(window).height() - 10);
        //$(".metro-scroll").width($(".metro-sections").width());

    })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--left search--%>
<div class="selectiondiv">
                &nbsp;<&nbsp;<&nbsp;<asp:Panel ID="Panel1" CssClass="PanelSelApp" 
                runat="server" BorderColor="#51C7FF" GroupingText="Find Out" Width="261px">
                <asp:Label ID="lbfilter1" runat="server" CssClass="detail_label" Text="F1"></asp:Label><br />
                <asp:ListBox ID="ListBoxF1" runat="server" CssClass="detail_label" 
                        AutoPostBack="True" ></asp:ListBox>
                <br /><br /><br /><br />
                <asp:Label ID="lbFiltertwo" runat="server" CssClass="detail_label" Text="F2"></asp:Label><br />
                <asp:ListBox ID="ListBoxF2" runat="server" CssClass="detail_label" 
                        AutoPostBack="True" ></asp:ListBox><br />
                 <asp:Label ID="Label2" runat="server" CssClass="detail_label" Text="F3"></asp:Label><br />
                <asp:ListBox ID="ListBox3" runat="server" CssClass="detail_label"></asp:ListBox>
                <asp:Label ID="lbErrorCusInformation" runat="server" Text=""></asp:Label>
                <br /><br /><br /><br /><br /><br /><br />
          

                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" CssClass="PanelSelApp" 
                runat="server" BorderColor="#51C7FF" GroupingText="Search" Width="261px">
                <asp:TextBox ID="tbSearchOrderNum" runat="server" CssClass="detail_label"></asp:TextBox><br />
                <asp:Button ID="btSearchOrderNum" runat="server" Text="Search" 
                        onclick="btSearchOrderNum_Click"></asp:Button>
                </asp:Panel>
                <br />
                <asp:Label ID="lbOrderError" runat="server" Text="Label"></asp:Label>
                
      </div>

     <%-- Templates images,ads,discounts--%>
     


     <div class="wholecontainerdiv">
            <div class="divaround">
                 <div class="logo" >
                 <img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/>
                 </div>
                 <a href="../Department/getAroundProd.aspx" >
                      <div class="metro3getaround">
                        <asp:Image ID="Image1" runat="server"></asp:Image>
                      </div>
                    </a>
                    
                </div>
               

                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                 <div class="divaround2">
                 <div class="logo2" ><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                      <div class="metro3getaround2">
                        <asp:Image ID="Image4" runat="server"></asp:Image>
                     </div>
                </div>
                <br />
               <div class="divaround3">
                 <%--<div class="logo3" ><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>--%>
                      <div class="metro3getaround3">
                       <h3>Nokia</h3>
                        <a href="../CreateProdListing.aspx"></a>
                     </div>
                </div>
               
                  <div class="divaround4">
                 <div class="logo4" ><img src="../Images/miclogo_276419_20528438720_2044766422_q.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                      <div class="metro3getaround4">
                      <asp:Image ID="Image2" runat="server" CssClass="image2"></asp:Image>
                     </div>
                </div>

                <br /> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <div class="divaround5">
                 <div class="logo5" ><img src="../Images/miclogo_276419_20528438720_2044766422_q.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                      <div class="metro3getaround5">
                        <asp:Image ID="Image5" runat="server"></asp:Image>
                     </div>
                </div>
                  <div class="divaround55">
                 <div class="logo55" ><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                      <div class="metro3getaround55">
                       <h3>Nokia</h3>
                        <a href="../CreateProdListing.aspx"></a>
                     </div>
                </div>

                  <div class="divaround6">
                 <div class="logo6" ><img src="../Images/miclogo_276419_20528438720_2044766422_q.jpg"  alt="profilepic" class="imagemetroprofilepic"/></div>
                      <div class="metro3getaround6">
                       <asp:Image ID="Image3" runat="server" CssClass="image3"></asp:Image>
                     </div>
                </div>
      </div>
    
    <div>
        <asp:Label ID="lbproidforimage" runat="server" Text=""></asp:Label>
    </div>
                     <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
               

                <br /><br /><br /><br />

<div id="fb-root"></div>
<script type="">
    window.fbAsyncInit = function () {
        // init the FB JS SDK
        FB.init({
            appId: 'YOUR_APP_ID', // App ID from the App Dashboard
            channelUrl: '//WWW.YOUR_DOMAIN.COM/channel.html', // Channel File for x-domain communication
            status: true, // check the login status upon init?
            cookie: true, // set sessions cookies to allow your server to access the session?
            xfbml: true  // parse XFBML tags on this page?
        });

        // Additional initialization code such as adding Event Listeners goes here

    };

    // Load the SDK's source Asynchronously
    (function (d, debug) {
        var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
        if (d.getElementById(id)) { return; }
        js = d.createElement('script'); js.id = id; js.async = true;
        js.src = "//connect.facebook.net/en_US/all" + (debug ? "/debug" : "") + ".js";
        ref.parentNode.insertBefore(js, ref);
    } (document, /*debug*/false));


    FB.getLoginStatus(function (response) {
        if (response.status === 'connected') {
            // the user is logged in and has authenticated your
            // app, and response.authResponse supplies
            // the user's ID, a valid access token, a signed
            // request, and the time the access token 
            // and signed request each expire
            var uid = response.authResponse.userID;
            var accessToken = response.authResponse.accessToken;
        } else if (response.status === 'not_authorized') {
            // the user is logged in to Facebook, 
            // but has not authenticated your app
        } else {
            // the user isn't logged in to Facebook.
        }
    });

</script>

<div id="Div1"></div>
<script type="">    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));</script>




<br />
<%--<div class="fb-activity acttofcbk" data-action="critiqueapp:despise,critiqueapp:review" data-width="260" data-height="900" data-header="true" data-font="arial" data-recommendations="true"></div>--%>
<div class="fb-like-box acttofcbk" data-href="http://www.facebook.com/platform" data-width="260" data-show-faces="true" data-stream="true" data-header="true"></div>
<br /><br />
<div class="fb-like" data-send="true" data-width="20" data-show-faces="true" data-font="arial"></div>
</asp:Content>

