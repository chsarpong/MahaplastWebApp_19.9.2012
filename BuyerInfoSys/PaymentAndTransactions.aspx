<%@ Page Title="" Language="C#" MasterPageFile="~/BuyerInfoSys/Buyer_AccountSetting.master" AutoEventWireup="true" CodeFile="PaymentAndTransactions.aspx.cs" Inherits="BuyerInfoSys_PaymentAndTransactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="../twitter-bootstrap-c52368d/docs/assets/css/bootstrap-responsive.css"
            rel="stylesheet" type="text/css" />
        <link href="../twitter-bootstrap-c52368d/docs/assets/css/bootstrap.css" rel="stylesheet"
            type="text/css" />
        <link href="../twitter-bootstrap-c52368d/docs/assets/css/docs.css" rel="stylesheet"
            type="text/css" />

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
            height: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="accordion" class="goright">
        <h3>
            <a href="#">Subcriptions</a></h3>
        <div class="divacc1">
            <br />
           <%-- For right images --%>
            
         


        </div>
        <h3>
            <a href="#">Purchase History</a></h3>
        <div class="divacc1">
            <br />
          <p>
               
            </p>
             
        </div>
        <h3>
            <a href="#">Payment Methods</a></h3>
        <div class="divacc1">
            <p>
               <asp:Label ID="lbPymMethod" runat="server" CssClass="detail_label" Text="Choose payment method"></asp:Label>
               <asp:DropDownList ID="ddlPymMethod" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br /><br />

               <asp:Button ID="btSavePymMethod" runat="server" Text="Save Changes" BackColor="#0080C0" ForeColor="White"></asp:Button>
               <asp:Button ID="btCancelPymMethod" runat="server" Text="Cancel" ></asp:Button>  
            </p>
        </div>

          <h3>
            <a href="#">Preferred Currency</a></h3>
        <div class="divacc1">
            <p>
            <br />
               <asp:Label ID="lbChoosePreCurrency" runat="server" CssClass="detail_label" Text="Choose preferred currency"></asp:Label>
               <asp:DropDownList ID="ddlChoosePreCurrency" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br /><br />

               <asp:Button ID="btSaveChanPreCurency" runat="server" Text="Save Changes" BackColor="#0080C0" ForeColor="White"></asp:Button>
               <asp:Button ID="btCancelPreCurency" runat="server" Text="Cancel" ></asp:Button>  
            </p>
        </div>
    </div>


</asp:Content>

