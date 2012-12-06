<%@ Page Title="" Language="C#" MasterPageFile="~/MerchantInfoSys/ProductListing.master" AutoEventWireup="true" CodeFile="ShippingDetails.aspx.cs" Inherits="MerchantInfoSys_ShippingDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../twitter-bootstrap-c52368d/docs/assets/css/bootstrap-responsive.css"
            rel="stylesheet" type="text/css" />
        <link href="../twitter-bootstrap-c52368d/docs/assets/css/bootstrap.css" rel="stylesheet"
            type="text/css" />
        <link href="../twitter-bootstrap-c52368d/docs/assets/css/docs.css" rel="stylesheet"
            type="text/css" />

    <link href="../Styles/BidOfferStyle.css" rel="stylesheet" type="text/css" />

    <link href="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/demo/css/metro.css"
        rel="stylesheet" type="text/css" />

    <link href="../Styles/PaymentandTransactionStyle.css" rel="stylesheet" type="text/css" />

  
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

         
    <link href="../jquery/themes/base/ui.all.css" rel="stylesheet" type="text/css" />

    <!-- jQuery libraries are defined here. -->
    <script src="../jquery/jquery-1.3.2.js" type="text/javascript"></script>
    <script src="../jquery/ui/ui.core.js" type="text/javascript"></script>
    <script src="../jquery/ui/ui.accordion.js" type="text/javascript"></script>
    <!-- We are using accordion function. -->
    <script type="text/javascript">
        $(function () {
            $("#accordion").accordion({
                collapsible: true
            });
        });
    </script>
    <script type="text/javascript">

        function pageLoad() {
        }
    
    </script>
    <style type="text/css">
        .divacc
        {
            width: 700px;
            
        }
        h3
        {
            width: 700px;
        }
        .divacc1
        {
            height: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="PanelShippingDetail" runat="server" GroupingText="Shipping Details" CssClass="inputsforprodlist">
<div class="inputsforprodlist">

<asp:Label ID="lbshippingcompanyname" runat="server" Text="Shipping Company Name"></asp:Label>
<br />
<asp:DropDownList ID="ddlshippingcompanyname" runat="server"></asp:DropDownList><br />

<asp:Label ID="lbshippingcost" runat="server" Text="Shipping Cost"></asp:Label>
<br />
<asp:TextBox ID="tbShippingcost" runat="server"></asp:TextBox><br />

<asp:Label ID="lbHandlingtimeindays" runat="server" Text="Handling Days"></asp:Label>
<br />
<asp:TextBox ID="tbHandlingtimeindays" runat="server"></asp:TextBox><br />

<asp:Label ID="lbreturnpolicy" runat="server" Text="Return Policy"></asp:Label>
<br />
<asp:TextBox ID="tbReturnpolicy" runat="server"></asp:TextBox><br />


<asp:Label ID="lbCreatedon" runat="server" Text="Created On"></asp:Label>
<br />
<asp:TextBox ID="tbCreatedon" runat="server"></asp:TextBox><br />
<br />

<asp:Button ID="btSaveShippinDetail" runat="server" Text="Save and Continue" CssClass="btn-primary1" 
        onclick="btSaveShippinDetail_Click"></asp:Button>
<br />
<asp:Label ID="LabelErr" runat="server" Text=""></asp:Label>
<br /><br />
<asp:Label ID="lbSessionProdId" runat="server" Text=""></asp:Label>
<br /><br />
<asp:TextBox ID="tbShippingId" runat="server"></asp:TextBox>


</div>
</asp:Panel>
</asp:Content>

