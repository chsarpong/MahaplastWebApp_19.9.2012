<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.master" AutoEventWireup="true" CodeFile="CreateProdListing.aspx.cs" Inherits="CreateProdListing" %>

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
<br /><br />
<h3>Create your listing </h3>
<br /><br />
<div>
<asp:Label ID="lbCustomerNumber" runat="server" CssClass="detail_label" 
        Text="Customer Number"></asp:Label>
    <asp:TextBox ID="tbCustomerNumber" runat="server" 
        CssClass="center_customer_textbox" Enabled="False"></asp:TextBox><br />
    <asp:Label ID="lbNameOfCustomer" runat="server" CssClass="detail_label" Text="Name of customer"></asp:Label>
    <asp:TextBox ID="tbNameOfCustomer" runat="server" CssClass="center_customer_textbox" ToolTip="Enter Text Input" ></asp:TextBox><br />
    <asp:Label ID="lbAphabeticIdentification" runat="server" CssClass="detail_label" Text="Alphabetic Identification"></asp:Label>
    <asp:TextBox ID="tbAphabeticIdentification" runat="server" 
        CssClass="center_customer_textbox" 
        ToolTip="Enter Alphabetic Id Ex : Velj. Mattila Oy -&gt; Mattila" ></asp:TextBox><br />
    <asp:Label ID="lbCreditLimitCode" runat="server" CssClass="detail_label" Text="Credit limit code"></asp:Label>
    <asp:TextBox ID="tbCreditLimitCode" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
    <asp:Label ID="lbCreditLimitText" runat="server" CssClass="detail_label" Text="Credit limit text"></asp:Label>
    <asp:TextBox ID="tbCreditLimitText" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
    <asp:Label ID="lbDiscountRate" runat="server" CssClass="detail_label" Text="Discount rate(%)"></asp:Label>
    <asp:TextBox ID="tbDiscountRate" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
    <asp:Label ID="lbFirstNameCP" runat="server" CssClass="detail_label" Text="First Name of contact person"></asp:Label>
    <asp:TextBox ID="tbFirstNameCP" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
    <asp:Label ID="lbLastNameCP" runat="server" CssClass="detail_label" Text="Last Name of contact person"></asp:Label>
    <asp:TextBox ID="tbLastNameCP" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
    <asp:Label ID="lbTitleOfCP" runat="server" CssClass="detail_label" Text="Title contact person"></asp:Label>
    <asp:TextBox ID="tbTitleOfCP" runat="server" CssClass="center_customer_textbox" ></asp:TextBox><br />
    <asp:Label ID="lbPhoneOfCP" runat="server" CssClass="detail_label"  Text="Phone of contact person"></asp:Label>
    <asp:TextBox ID="tbPhoneOfCP" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
     <asp:Label ID="lbEmailOfCP" runat="server" CssClass="detail_label" Text="Email address of contact person"></asp:Label>
    <asp:TextBox ID="tbEmailOfCP" runat="server" CssClass="center_customer_textbox" 
        Width="206px"></asp:TextBox><br />
     <asp:Label ID="lbCustomerGroup" runat="server" CssClass="detail_label" Text="Customer group"></asp:Label>
    <asp:DropDownList ID="ddlCustomerGroup" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br />
    <asp:Label ID="lbTermsOfDelivery" runat="server" CssClass="detail_label" Text="Terms of delivery"></asp:Label>
    <asp:DropDownList ID="ddlTermsOfDelivery" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br />
     <asp:Label ID="lbTermsOfPayment" runat="server" CssClass="detail_label" Text="Terms of payment"></asp:Label>
    <asp:DropDownList ID="ddlTermsOfPayment" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br />
</div>

</asp:Content>

