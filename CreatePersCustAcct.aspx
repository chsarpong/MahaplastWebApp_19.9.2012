<%@ Page Title="" Language="C#" MasterPageFile="~/BuyerAccount.master" AutoEventWireup="true" CodeFile="CreatePersCustAcct.aspx.cs" Inherits="CreatePersCustAcct" %>

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
<div class="regpercust">
<%--<asp:Label ID="lbCustomerNumber" runat="server" CssClass="detail_label" 
        Text="Customer Number"></asp:Label>
    <asp:TextBox ID="tbCustomerNumber" runat="server" 
        CssClass="center_customer_textbox" Enabled="False"></asp:TextBox><br />--%>

        <asp:Label ID="lbBuyerErrors" runat="server" CssClass="detail_labelErr" 
        BackColor="#CCFF99"></asp:Label><br /><br />

    <asp:Label ID="lbWhoyouare" runat="server" CssClass="whoyouare" 
        Text="Who are you ?" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label><br /><br />

    <asp:Label ID="lbfirstnameBuyer" runat="server" CssClass="detail_label" Text="First Name"></asp:Label>
    <asp:TextBox ID="tbfirstnameBuyer" runat="server" CssClass="center_customer_textbox" ToolTip="Enter Text Input" ></asp:TextBox><br />

    <asp:Label ID="lblastnameBuyer" runat="server" CssClass="detail_label" Text="Last Name"></asp:Label>
    <asp:TextBox ID="tblastnameBuyer" runat="server" CssClass="center_customer_textbox" ToolTip="Enter Text Input" ></asp:TextBox><br />

    <asp:Label ID="lbgender" runat="server" CssClass="detail_label" Text="Gender"></asp:Label>
    <asp:DropDownList ID="ddlgender" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br /><br />

    <asp:Label ID="lbTellUsDOB" runat="server" CssClass="whoyouare" 
        Text="Tell us your birthday" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label><br /><br />

    <asp:Label ID="lbdob_monthBuyer" runat="server" CssClass="detail_label" Text="Month"></asp:Label>
    <asp:DropDownList ID="ddldob_monthBuyer" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br />

    <asp:Label ID="lbdob_dayBuyer" runat="server" CssClass="detail_label" Text="Day"></asp:Label>
    <asp:DropDownList ID="ddldob_dayBuyer" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br />

    <asp:Label ID="lbdob_yearBuyer" runat="server" CssClass="detail_label" Text="Year"></asp:Label>
    <asp:DropDownList ID="ddldob_yearBuyer" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br /><br />
    
    <asp:Label ID="lbhowwilusignin" runat="server" CssClass="whoyouare" 
        Text="How will you like to sign in ?" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label><br /><br />

    <asp:Label ID="lbEmailOfBuyer" runat="server" CssClass="detail_label" Text="Email address"></asp:Label>
    <asp:TextBox ID="tbEmailOfBuyer" runat="server" CssClass="center_customer_textbox" 
        Width="206px"></asp:TextBox><br />

    <asp:Label ID="lbUserId" runat="server" CssClass="detail_label" Text="User Id"></asp:Label>
    <asp:TextBox ID="tbUserId" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />

    <asp:Label ID="lbPassword" runat="server" CssClass="detail_label" Text="Create Password"></asp:Label>
    <asp:TextBox ID="tbPassword" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />

    <asp:Label ID="lbRePassword" runat="server" CssClass="detail_label" Text="Re-enter Password"></asp:Label>
    <asp:TextBox ID="tbRePassword" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />



    <asp:Label ID="lbPhoneOfBuyer" runat="server" CssClass="detail_label"  Text="Phone"></asp:Label>
    <asp:TextBox ID="tbPhoneOfBuyer" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br /><br />
   
     <asp:Label ID="lbNoRobotInstruction" runat="server" CssClass="whoyouare" 
        Text="Help us make sure you're not a robot" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label><br /><br />
        <br /><br /><br />

    <asp:Label ID="lbEnterNonRobotCharacter" runat="server" CssClass="detail_label" Text="Enter the characters you see"></asp:Label>
    <asp:TextBox ID="tbEnterNonRobotCharacter" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br /><br />

   I have read and accepted the User Agreement and Privacy Policy.<br />
   I may receive communications from eBay and can change my notification preferences in My eBay.<br />
   I am at least 18 years old.<br /><br /><br /><br />

    <div>
        <asp:Button ID="btIaccept" runat="server" Text="I accept" 
            onclick="btIaccept_Click"></asp:Button>
    </div>
    <br />
    <asp:Label ID="lbBuyerId" runat="server" CssClass="detail_label" Visible="False"></asp:Label>
      

</div>
</asp:Content>

