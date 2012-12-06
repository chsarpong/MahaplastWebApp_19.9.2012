<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.master" AutoEventWireup="true" CodeFile="ProductExplore.aspx.cs" Inherits="ProductExplore" %>

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

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="Styles/Lahja.css" rel="stylesheet" type="text/css" />


        <meta charset="utf-8"><title>Bootstrap, from Twitter</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

    <!-- Le styles -->
        <link href="../assets/css/bootstrap.css" rel="stylesheet"/>
        <style type="text/css">

      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
        <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet"/>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="../assets/ico/favicon.ico"/>
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png"/>
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png"/>
        <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<br /><br />--%>
<%--<h2>&nbsp;&nbsp; Mashaplast</h2>--%>
<br /><br /><br />
<%--<br /><br />--%>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Explore Products</li>
              <li class="active"><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
         <%-- <div class="hero-unit">
            <h1>Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
          </div>--%>
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="Product.aspx">View Details &raquo;</a></p>

            </div><!--/span-->
            <div class="span4">
                 <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
             <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <br /><br />
          <div class="row-fluid">
            <div class="span4">
                 <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
                 <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
                <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <br /><br />
          <div class="row-fluid">
            <div class="span4">
                 <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
                 <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
                <h2>Heading</h2>
             <p class="img">
                <img src="Images/pipes.jpg" alt="pipes" width="60" height="90"/>
              </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div>
        </div><!--/span-->
      </div><!--/row-->

      <hr/>

      <footer>
        <p>&copy; Company 2012</p>
      </footer>

    </div>

</asp:Content>

