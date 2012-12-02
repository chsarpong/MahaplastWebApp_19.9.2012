<%@ Page Title="" Language="C#" MasterPageFile="~/BuyerInfoSys/Buyer_AccountSetting.master" AutoEventWireup="true" CodeFile="GeneralInfo.aspx.cs" Inherits="BuyerInfoSys_GeneralInfo" %>

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
<asp:Label ID="lbGneralError" runat="server" Text="Label"></asp:Label>
<br />
<div class="goright">
    
<div id="accordion" >
        <h3>
            <a href="#">Name</a></h3>
        <div class="divacc1">
            <br />
           
           <%-- For General Info --%>
            
          <asp:Label ID="lbfirstnameBuyer" runat="server" CssClass="detail_label" Text="First Name"></asp:Label>
          <asp:TextBox ID="tbfirstnameBuyer" runat="server" CssClass="center_customer_textbox" ToolTip="Enter Text Input" ></asp:TextBox><br />

          <asp:Label ID="lblastnameBuyer" runat="server" CssClass="detail_label" Text="Last Name"></asp:Label>
          <asp:TextBox ID="tblastnameBuyer" runat="server" CssClass="center_customer_textbox" ToolTip="Enter Text Input" ></asp:TextBox><br />

          <asp:Label ID="lbTosavethis" runat="server" CssClass="whoyouare" 
        Text="To save settings, please enter your password" Font-Bold="True" Font-Size="Small" ForeColor="Black"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="center_customer_textbox" ToolTip="Enter Text Input" ></asp:TextBox><br />

        <asp:Button ID="Button1" runat="server" Text="Save Changes" BackColor="#0080C0" ForeColor="White"></asp:Button>
        <asp:Button ID="Button2" runat="server" Text="Cancel" ></asp:Button>
        </div>
        <h3>
            <a href="#">User Ids</a></h3>
        <div class="divacc1">
  
            <asp:Label ID="lbUserId" runat="server" CssClass="detail_label" Text="User Id"></asp:Label>
            <asp:TextBox ID="tbUserId" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />

            <asp:Label ID="lbPassword" runat="server" CssClass="detail_label" Text="Password"></asp:Label>
            <asp:TextBox ID="tbPassword" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
            
            <asp:Button ID="Button3" runat="server" Text="Save Changes" BackColor="#0080C0" ForeColor="White"></asp:Button>
            <asp:Button ID="Button4" runat="server" Text="Cancel" ></asp:Button>  
     
        </div>
           <h3><a href="#">Emails</a></h3>
        <div class="divacc1">
            <p>
                <asp:Label ID="lbEmail" runat="server" CssClass="detail_label" Text="Email:"></asp:Label>
                <asp:TextBox ID="tbEmail" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />

                <asp:Label ID="lbAddAnEmail" runat="server" CssClass="detail_label" Text="Add another email:"></asp:Label>
                <asp:TextBox ID="tbAddAnEmail" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
            </p>
        </div>
        <h3><a href="#">Passwords</a></h3>
        <div class="divacc1">
            <p>
            <asp:Label ID="lbCurrentPasword" runat="server" CssClass="detail_label" Text="Current"></asp:Label>
            <asp:TextBox ID="tbCurrentPasword" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />

            <asp:Label ID="lbNewPssword" runat="server" CssClass="detail_label" Text="New"></asp:Label>
            <asp:TextBox ID="tbNewPssword" runat="server" CssClass="center_customer_textbox"></asp:TextBox><br />
            
            <asp:Button ID="btSavePssword" runat="server" Text="Save Changes" BackColor="#0080C0" ForeColor="White"></asp:Button>
            <asp:Button ID="btCanSavePssWord" runat="server" Text="Cancel" ></asp:Button>  

            </p>
        </div>
          <h3><a href="#">Language</a></h3>
        <div class="divacc1">
            <p>
               <asp:Label ID="lbChoosePrimLang" runat="server" CssClass="detail_label" Text="Choose primary language"></asp:Label>
               <asp:DropDownList ID="ddldob_monthBuyer" runat="server" CssClass="center_customer_textbox"></asp:DropDownList><br /><br />

               <asp:Button ID="Button5" runat="server" Text="Save Changes" BackColor="#0080C0" ForeColor="White"></asp:Button>
               <asp:Button ID="Button6" runat="server" Text="Cancel" ></asp:Button>  
            </p>
        </div>
    </div>
    </div>
</asp:Content>

