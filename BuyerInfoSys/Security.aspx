<%@ Page Title="" Language="C#" MasterPageFile="~/BuyerInfoSys/Buyer_AccountSetting.master" AutoEventWireup="true" CodeFile="Security.aspx.cs" Inherits="BuyerInfoSys_Security" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="../twitter-bootstrap-c52368d/docs/assets/css/bootstrap-responsive.css"
            rel="stylesheet" type="text/css" />
        <link href="../twitter-bootstrap-c52368d/docs/assets/css/bootstrap.css" rel="stylesheet"
            type="text/css" />
        <link href="../twitter-bootstrap-c52368d/docs/assets/css/docs.css" rel="stylesheet"
            type="text/css" />

    <link href="../Styles/BidOfferStyle.css" rel="stylesheet" type="text/css" />

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

<div id="accordion" class="goright">
        <h3>
            <a href="#">Security Questions</a></h3>
        <div class="divacc1">
            <br />
           <%-- For right images --%>
             <asp:Label ID="lbSecQuestion" runat="server" CssClass="detail_label" Text="Question"></asp:Label>
               <asp:DropDownList ID="ddlSecQuestion" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br />

               <asp:Label ID="lbSecAnswer" runat="server" CssClass="detail_label" Text="Answer"></asp:Label>
               <asp:DropDownList ID="ddlSecAnswer" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br /><br />

               <asp:Button ID="btSaveChanPreCurency" runat="server" Text="Save Changes" BackColor="#0080C0" ForeColor="White"></asp:Button>
               <asp:Button ID="btCancelPreCurency" runat="server" Text="Cancel" ></asp:Button>  
         


        </div>
        <h3>
            <a href="#">Active Session</a></h3>
        <div class="divacc">
            <br />
          <p>
               <asp:Label ID="lbLocation" runat="server" Text="Location: "></asp:Label><br /><br />
               <asp:Label ID="lbLocationFound" runat="server" Text="Location Found"></asp:Label><br /><br />
               <asp:Label ID="lbDeviceType" runat="server" Text="Device Type: "></asp:Label><br /><br />
               <asp:Label ID="lbDeviceTypeFound" runat="server" Text="Device Type Found"></asp:Label>
            </p>
             
        </div>
        <h3>
            <a href="#">Login Notification</a></h3>
        <div class="divacc">
            <p>
               <asp:CheckBox ID="CheckBox1" runat="server"  ></asp:CheckBox>
               <asp:Label ID="Label1" runat="server" Text="Answer"></asp:Label><br /><br />
               <asp:CheckBox ID="CheckBox2" runat="server" ></asp:CheckBox>
               <asp:Label ID="Label2" runat="server"  Text="Answer"></asp:Label><br /><br />

               <asp:Button ID="Button1" runat="server" Text="Save Changes" BackColor="#0080C0" ForeColor="White"></asp:Button>
               <asp:Button ID="Button2" runat="server" Text="Cancel" ></asp:Button>  
            </p>
        </div>
    </div>
</asp:Content>

