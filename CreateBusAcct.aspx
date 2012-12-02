<%@ Page Title="" Language="C#" MasterPageFile="~/BuyerAccount.master" AutoEventWireup="true" CodeFile="CreateBusAcct.aspx.cs" Inherits="CreateBusAcct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="Styles/Lahja.css" rel="stylesheet" type="text/css" />
    <%--        <meta charset="utf-8"><title>Bootstrap, from Twitter</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">--%>
    <!-- Le styles -->
    <link href="../assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            padding-top: 60px;
            padding-bottom: 40px;
        }
        .sidebar-nav
        {
            padding: 9px 0;
        }
    </style>
    <link href="twitter-bootstrap-d335adf/docs/assets/css/bootstrap-responsive.css" rel="stylesheet"
        type="text/css" />
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Le fav and touch icons -->
    <%--      <link rel="shortcut icon" href="../assets/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">--%>
    <script type="text/javascript">
        $(function () {
            $('#myModal').modal('toggle')

            $('a[data-toggle="tab"]').on('shown', function (e) {
                e.target // activated tab
                e.relatedTarget // previous tab
            })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br />
<div class="regpercust">
<asp:Label ID="lbMerchantId" runat="server" CssClass="detail_label" 
        Text="Merchant Id"></asp:Label>
    <asp:TextBox ID="tbMerchantId" runat="server" 
        CssClass="center_customer_textbox" Enabled="False"></asp:TextBox><br />

    <asp:Label ID="lbBusName" runat="server" CssClass="detail_label" Text="Business Name"></asp:Label>
    <asp:TextBox ID="tbBusName" runat="server" CssClass="center_customer_textbox" ToolTip="Enter Text Input" ></asp:TextBox><br />

    <asp:Label ID="lbFirstNameOfCP" runat="server" CssClass="detail_label" Text="Contact Person First Name"></asp:Label>
    <asp:TextBox ID="tbFirstNameOfCP" runat="server" 
        CssClass="center_customer_textbox" 
        ToolTip="Enter Alphabetic Id Ex : Velj. Mattila Oy -&gt; Mattila" ></asp:TextBox><br />

    <asp:Label ID="lbLastNameOfCP" runat="server" CssClass="detail_label" Text="Contact Person Last Name"></asp:Label>
    <asp:TextBox ID="tbLastNameOfCP" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />


    <asp:Label ID="lbMerchantType" runat="server" CssClass="detail_label" Text="Merchant Type"></asp:Label>
     <asp:DropDownList ID="ddlMerchantType" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br />
   

    <asp:Label ID="lbEmailAddress" runat="server" CssClass="detail_label" Text="Email address"></asp:Label>
    <asp:TextBox ID="tbEmailAddress" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />


    <asp:Label ID="lbPhoneNumber" runat="server" CssClass="detail_label" Text="Phone Number"></asp:Label>
    <asp:TextBox ID="tbPhoneNumber" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />


    <asp:Label ID="lbMerchantUserId" runat="server" CssClass="detail_label" Text="Enter your merchant user id"></asp:Label>
    <asp:TextBox ID="tbMerchantUserId" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />


    <asp:Label ID="lbPassword" runat="server" CssClass="detail_label" Text="Enter password"></asp:Label>
    <asp:TextBox ID="tbPassword" runat="server" CssClass="center_customer_textbox" ></asp:TextBox><br />


    <asp:Label ID="lbReenterPassword" runat="server" CssClass="detail_label"  Text="Re-enter password"></asp:Label>
    <asp:TextBox ID="tbReenterPassword" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />


     <asp:Label ID="lbSecretQuestion" runat="server" CssClass="detail_label" Text="Secret Question"></asp:Label>
    <asp:TextBox ID="tbSecretQuestion" runat="server" CssClass="center_customer_textbox" 
        Width="206px"></asp:TextBox><br />


     <asp:Label ID="lbSecretAnswer" runat="server" CssClass="detail_label" Text="Secret Answer"></asp:Label>
      <asp:TextBox ID="tbSecretAnswer" runat="server" CssClass="center_customer_textbox" 
        Width="206px"></asp:TextBox><br />


    <asp:Label ID="lbnotrobot" runat="server" CssClass="detail_label" Text="notrobot"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />

       
      
</div>

</asp:Content>

