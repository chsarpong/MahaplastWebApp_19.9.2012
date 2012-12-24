<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

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

    <link href="twitter-bootstrap-c52368d/docs/assets/css/docs.css" rel="stylesheet"
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
    
   <%-- Building Accordion--%>

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
        width:auto;	
    }
    h3
    {
        width:912px;	
    }
    .divacc1
    {
    	height:220px;
    }
    
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="accordion">
<h3><a href="#">Customer Information</a></h3>
<div class="divacc1">
<br />
<p>
<asp:GridView ID="GridViewCustomerInformation" runat="server" 
        CssClass="table table-striped table-bordered table-condensed" CellPadding="4" 
        ForeColor="#333333" GridLines="None" AllowPaging="True" 
        AllowSorting="True" PageSize="7" >
    </asp:GridView>
    
    <asp:Label ID="lbErrorCusInformation" runat="server" Text=""></asp:Label>
</p>
</div>
<h3><a href="#">Address Information</a></h3>
<div class="divacc">
<br />
<p>
<asp:GridView ID="GridViewAddressInfo" runat="server"  CssClass="table table-striped table-bordered table-condensed" CellPadding="4" 
        ForeColor="#333333" GridLines="None" AllowPaging="True" 
        AllowSorting="True" PageSize="7"></asp:GridView>
    <asp:Label ID="lbErrorViewTaskP" runat="server" Text=""></asp:Label>
 </p>
</div>
<h3><a href="#">Terms of Trade</a></h3>
	<div class="divacc">
		<p>
		    
		</p>
	</div>
    </div>
            <a href="PayPal.aspx">PayPal</a>
            <br /><br />
            <a href="Home.aspx">Home.aspx</a>
    <div>
        <iframe src="https://embed.spotify.com/?uri=spotify:user:hoxsd:playlist:3vgOXr17cntbz84tRfsrOQ" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>
    </div>

    <div>
        <iframe src="https://embed.spotify.com/?uri=spotify:track:6N43Qgg9jx21vfMkTYvSi3" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>
    </div>

    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="gender" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="gendercode" HeaderText="gendercode" 
                SortExpression="gendercode" />
            <asp:BoundField DataField="gender" HeaderText="gender" ReadOnly="True" 
                SortExpression="gender" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            SelectCommand="SELECT * FROM [GENDER]"></asp:SqlDataSource>
    </div>
    <div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="yearcode" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="yearcode" HeaderText="yearcode" ReadOnly="True" 
                    SortExpression="yearcode" />
                <asp:BoundField DataField="dob_year" HeaderText="dob_year" 
                    SortExpression="dob_year" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Server=d4e1e593-8399-47f3-ba34-a12100a76a23.sqlserver.sequelizer.com;Database=dbd4e1e593839947f3ba34a12100a76a23;User ID=tbykarfkayrhpesz;Password=FhL25hiutpgaLkAxxj7KkAQaRzn4tse8xdJG866L3MfVHkUYFs4AkgTfyLjD4oab; %>" 
            SelectCommand="SELECT * FROM [YEAR]"></asp:SqlDataSource>
    </div>

    <div>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="yearcode" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="yearcode" HeaderText="yearcode" ReadOnly="True" 
                SortExpression="yearcode" />
            <asp:BoundField DataField="dob_year" HeaderText="dob_year" 
                SortExpression="dob_year" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbd16d2063ff1147f5a572a12e00b8f2b8ConnectionString %>" 
            SelectCommand="SELECT * FROM [YEAR]"></asp:SqlDataSource>
    </div>

</asp:Content>

