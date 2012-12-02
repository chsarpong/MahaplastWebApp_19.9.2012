<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AccordionProdTest.aspx.cs" Inherits="AccordionProdTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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




    <link href="jquery/themes/base/ui.all.css" rel="stylesheet" type="text/css" />
    <!-- jQuery libraries are defined here. -->
    <script src="jquery/jquery-1.3.2.js" type="text/javascript"></script>
    <script src="jquery/ui/ui.core.js" type="text/javascript"></script>
    <script src="jquery/ui/ui.accordion.js" type="text/javascript"></script>
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
            width: auto;
            
        }
        h3
        {
            width: auto;
        }
        .divacc1
        {
            height: 700px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br /><br />
   
    <div id="accordion">
        <h3>
            <a href="#">Customer Information</a></h3>
        <div class="divacc1">
            <br />

            <%--Inputs--%>
            <div>
                &nbsp;<asp:Panel ID="Panel1" CssClass="PanelSelApp" 
                runat="server" BorderColor="#51C7FF" GroupingText="Mens" Width="261px">
                <asp:Label ID="lbCustomerNumber" runat="server" CssClass="detail_label" Text="Customer Number"></asp:Label><br />
                <asp:ListBox ID="ListBox1" runat="server" CssClass="detail_label"></asp:ListBox>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="detail_label" Text="Customer Number"></asp:Label><br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="detail_label" Enabled="True"></asp:TextBox>
                <asp:Label ID="lbErrorCusInformation" runat="server" Text=""></asp:Label>
                <br /><br /><br /><br /><br /><br /><br />
                <label class="checkbox">
              <input type="checkbox"/> Check me out
            </label>

               <div class="pagination">
              <ul>
                <li><a href="#">«</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">»</a></li>
              </ul>
            </div> 
                </asp:Panel>
            </div>
           
            
                       
        
           <%-- For right images --%>
            
            <div class="selectImage">
             <div class="img2">
            <a href="Product.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>

            <div class="img2">
            <a href="CreateProdListing.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>


             <div class="img2">
            <a href="CreateProdListing.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>


             <div class="img2">
            <a href="CreateProdListing.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>
        </div>


        </div>
        <h3>
            <a href="#">Address Information</a></h3>
        <div class="divacc">
            <br />
          <p>
                <asp:Label ID="Label2" runat="server" CssClass="detail_label" Text="Customer Number"></asp:Label><br />
                <asp:ListBox ID="ListBox2" runat="server" CssClass="detail_label"></asp:ListBox>
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="detail_label" Text="Customer Number"></asp:Label><br />
                <asp:TextBox ID="TextBox2" runat="server" CssClass="detail_label" Enabled="True"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </p>

             <div class="img2">
            <a href="CreateProdListing.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>

            <div class="img2">
            <a href="CreateProdListing.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>


             <div class="img2">
            <a href="CreateProdListing.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>


             <div class="img2">
            <a href="CreateProdListing.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>
        </div>
        <h3>
            <a href="#">Terms of Trade</a></h3>
        <div class="divacc">
            <p>
               
            </p>
        </div>
    </div>
   
   <%--Buiding Metro--%>
  <%--  <div class="CentertheMetro">
        <div class="img2">
            <a href="CreateProdListing.aspx">
                <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                    height="90" />
            </a>
            <div class="desc">
                List your product
            </div>
        </div>
        
        <br />
        <div class="img2">
            <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                height="90" />
            <div class="desc">
                Hello world
            </div>
        </div>
        <br />
        <div class="img2">
            <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                height="90" />
            <div class="desc">
                Hello world
            </div>
        </div>
        <br />
        <div class="img2">
            <img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60"
                height="90" />
            <div class="desc">
                Hello world
            </div>
        </div>
    </div>--%>
   
</asp:Content>
