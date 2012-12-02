<%@ Page Title="" Language="C#" MasterPageFile="~/MerchantInfoSys/ProductListing.master" AutoEventWireup="true" CodeFile="ProductPictures.aspx.cs" Inherits="MerchantInfoSys_ProductPictures" %>

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


    <asp:Panel ID="PanelPictures" runat="server" GroupingText="Product Pictures" CssClass="inputsforprodlist">
<div class="firstpicupload"">
<asp:Label ID="lbPict" runat="server" Text="Picture 1"></asp:Label>
<div class="picsize">
<asp:Image id="imgDB" runat="server" Visible="False"></asp:Image>
</div>
<br />
<asp:FileUpload ID="FileUpload1" runat="server" CssClass="Filegodown"></asp:FileUpload><br />
<asp:Button ID="btUpload1" runat="server" Text="Upload" CssClass="Filegodown" 
        onclick="btUpload1_Click" ></asp:Button>
</div>

<div class="inputsforprodlist1">
<asp:Label ID="lbPic2" runat="server" Text="Picture 2"></asp:Label>
<div class="picsize">
<asp:Image id="imgDB2" runat="server" Visible="False"></asp:Image>
</div>
<br />
<asp:FileUpload ID="FileUpload2" runat="server" CssClass="Filegodown"></asp:FileUpload><br />
<asp:Button ID="btUpload2" runat="server" Text="Upload" CssClass="Filegodown" 
        onclick="btUpload2_Click" ></asp:Button>
</div>

<div class="inputsforprodlist2">
<asp:Label ID="lbPic3" runat="server" Text="Picture 3"></asp:Label>
<div class="picsize">
<asp:Image id="imgDB3" runat="server" Visible="False"></asp:Image>
</div>
<br />
<asp:FileUpload ID="FileUpload3" runat="server" CssClass="Filegodown"></asp:FileUpload><br />
<asp:Button ID="btUpload3" runat="server" Text="Upload" CssClass="Filegodown" 
        onclick="btUpload3_Click"></asp:Button>
</div>

<div class="inputsforprodlist3">
<asp:Label ID="lbPic4" runat="server" Text="Picture 4"></asp:Label>
<div class="picsize">
<asp:Image id="imgDB4" runat="server" Visible="False"></asp:Image>
</div>
<br />
<asp:FileUpload ID="FileUpload4" runat="server" CssClass="Filegodown"></asp:FileUpload><br />
<asp:Button ID="btUpload4" runat="server" Text="Upload" CssClass="Filegodown" 
        onclick="btUpload4_Click" ></asp:Button>

</div>

<br />
<asp:Label ID="LabelErr" runat="server" Text=""></asp:Label>
<br />
<asp:Label ID="lbSessionProdId" runat="server" Text=""></asp:Label>
<br /><br />
<asp:TextBox ID="tbProductImageId" runat="server"></asp:TextBox>
<br /><br />
<asp:Button ID="btSaveImage" runat="server" Text="Save and Continue" 
        CssClass="btn-primary1" onclick="btSaveImage_Click"></asp:Button>
</asp:Panel>
</asp:Content>

