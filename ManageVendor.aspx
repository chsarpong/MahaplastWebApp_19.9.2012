﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ManageVendor.master" AutoEventWireup="true" CodeFile="ManageVendor.aspx.cs" Inherits="ManageVendor" %>

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

    <br /><br /><br /><br />
    <ul class="breadcrumb1">
        <li class="active">
            <asp:TextBox ID="tbSeatch" CssClass="txtboxSearch" 
                runat="server" Width="236px" Height="17px"></asp:TextBox>
            <asp:Button ID="btSearch" runat="server" Text="Search customer " Height="26px"  CssClass="txtboxSearch"
                Width="146px" ></asp:Button></li>
      </ul><br />

   <table class="table table-bordered table-striped">
  <thead>
      <tr>
        <th>Name</th>
        <th>Class</th>
        <th>Description</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Default</td>
        <td class="muted">None</td>
        <td>No styles, just columns and rows</td>
        <td><button class="btn btn-mini btn-primary">Primary action</button></td>
      </tr>
      <tr>
        <td>Basic</td>
        <td>
          <code>.table</code>
        </td>
        <td>Only horizontal lines between rows</td>
        <td><button class="btn btn-mini btn-primary">Primary action</button></td>
      </tr>
      <tr>
        <td>Bordered</td>
        <td>
          <code>.table-bordered</code>
        </td>
        <td>Rounds corners and adds outer border</td>
        <td><button class="btn btn-mini btn-primary">Primary action</button></td>
      </tr>
      <tr>
        <td>Zebra-stripe</td>
        <td>
          <code>.table-striped</code>
        </td>
        <td>Adds light gray background color to odd rows (1, 3, 5, etc)</td>
        <td><button class="btn btn-mini btn-primary">Primary action</button></td>
      </tr>
      <tr>
        <td>Condensed</td>
        <td>
          <code>.table-condensed</code>
        </td>
        <td>Cuts vertical padding in half, from 8px to 4px, within all <code>td</code> and <code>th</code> elements</td>
        <td><button class="btn btn-mini btn-primary">Primary action</button></td>
      </tr>
    </tbody>
  </table>
      
      
      <%--<asp:GridView ID="GridViewCustomer" runat="server" 
        CssClass="table table-striped table-bordered table-condensed" CellPadding="4" 
        ForeColor="#333333" GridLines="None" AllowPaging="True" 
        AllowSorting="True" PageSize="7" datakeynames="CustomerNumber"
      
       
        ToolTip="Click on select to choose a customer and click on blue button to view">
    </asp:GridView>--%>
<div class="pagination">
Customer number : <asp:Label ID="lbSearchCusError" runat="server" Text="" ForeColor="Red"></asp:Label><br />
	<asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/ViewCustomer.aspx">View Cusomter</asp:HyperLink>
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/UpdateCustomer.aspx">Update Cusomter</asp:HyperLink>
    <asp:HyperLink ID="HyperLink3" runat="server" 
        NavigateUrl="~/DeleteCustomer.aspx">Delete Cusomter</asp:HyperLink>
</div>
</asp:Content>

