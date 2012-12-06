<%@ Page Title="" Language="C#" MasterPageFile="~/MerchantInfoSys/ProductListing.master" AutoEventWireup="true" CodeFile="FinalProductListing.aspx.cs" Inherits="MerchantInfoSys_FinalProductListing" %>

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
    <asp:Panel ID="PanelProdDetails" runat="server" GroupingText="Product Details" CssClass="inputsforprodlist">
<div class="inputsforprodlist">
<asp:Label ID="lbItemDescription" runat="server" Text="Item Description"></asp:Label>
<br />

<asp:TextBox ID="tbItemDescription" runat="server"></asp:TextBox><br />

<asp:Label ID="lbBuyItNow" runat="server" Text="Price"></asp:Label>
<br />
<asp:TextBox ID="tbPrice" runat="server"></asp:TextBox><br />

<asp:Label ID="lbQuantity" runat="server" Text="Quantity"></asp:Label>
<br />
<asp:TextBox ID="tbQuantity" runat="server"></asp:TextBox><br />

<asp:Label ID="lbSellinlead" runat="server" Text="Sellin Lead"></asp:Label>
<br />
<asp:DropDownList ID="ddlSellinlead" runat="server"></asp:DropDownList><br /><br />

<asp:Label ID="lbProductoptionone" runat="server" Text="Product Option 1"></asp:Label>
<br />
<asp:TextBox ID="tbProductoptionone" runat="server"></asp:TextBox><br />


<asp:Label ID="lbProductoptiontwo" runat="server" Text="Product Option 2"></asp:Label>
<br />
<asp:TextBox ID="tbProductoptiontwo" runat="server"></asp:TextBox><br />

<asp:Label ID="lbProductoptionthree" runat="server" Text="Product Option 3"></asp:Label>
<br />
<asp:TextBox ID="tbProductoptionthree" runat="server"></asp:TextBox><br />

<asp:Label ID="lbProductoptionfour" runat="server" Text="Product Option 4"></asp:Label>
<br />
<asp:TextBox ID="tbProductoptionfour" runat="server"></asp:TextBox><br />

<asp:Label ID="lbProductoptionfive" runat="server" Text="Product Option 5"></asp:Label>
<br />
<asp:TextBox ID="tbProductoptionfive" runat="server"></asp:TextBox><br />

<asp:Label ID="lbProductoptionsix" runat="server" Text="Product Option 6"></asp:Label>
<br />
<asp:TextBox ID="tbProductoptionsix" runat="server"></asp:TextBox><br />

<asp:Label ID="lbComment" runat="server" Text="Comment"></asp:Label>
<br />
<asp:TextBox ID="TextBoxComment" runat="server" TextMode="MultiLine"></asp:TextBox>
<br /><br />
<asp:Button ID="btSaveAndContinue" runat="server" Text="Save and Continue" 
        CssClass="btn-primary1" onclick="btSaveAndContinue_Click" ></asp:Button>

</div>
</asp:Panel>
<br />
<asp:Label ID="LabelErr" runat="server"></asp:Label><br />
<asp:Label ID="lbSesProdfiletOneId" runat="server" Text="Label"></asp:Label>
<br /><br />
<asp:Label ID="lbProductId" runat="server" Text="Label"></asp:Label>
<br /><br /><br />
<asp:Label ID="lbMerchantId" runat="server" Text="Label"></asp:Label>

</asp:Content>

