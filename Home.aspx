<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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

       <script type="text/javascript">
           $(function () {
               $('#myCarousel').carousel({
                   interval: 2000
               });
           });
	    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--  <h2 class="Mashaplast">Mashaplast</h2>--%>
    <%--Category--%>
<div class="sidenavediv">
<ul class="nav nav-list bs-docs-sidenav affix">
          <li class="active"><a href="#dropdowns"><i class="icon-chevron-right"></i> Shop by Department</a></li>
          <li class=""><a href="Services/GetAround.aspx"><i class="icon-chevron-right"></i> Fashion</a></li>
          <li class=""><a href="AccordionProdTest.aspx"><i class="icon-chevron-right"></i> Electricals</a></li>
          <li class=""><a href="Services/GetAround.aspx"><i class="icon-chevron-right"></i>Computers & Electronics</a></li>
          <li class=""><a href="Services/Tourism.aspx"><i class="icon-chevron-right"></i>Travel & Tourism</a></li>
          <li class=""><a href="Services/Tourism.aspx""><i class="icon-chevron-right"></i> Bill Payments</a></li>
          <li class=""><a href="Services/Tourism.aspx"><i class="icon-chevron-right"></i> Software Center</a></li>
          <li class=""><a href="olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/demo/tiles-1.html"><i class="icon-chevron-right"></i> Land and Housing</a></li>
          <li class=""><a href="olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/demo/tiles-1.html"><i class="icon-chevron-right"></i> Jewelries</a></li>
          <li class=""><a href="olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/demo/tiles-1.html"><i class="icon-chevron-right"></i> Cars and Automobiles</a></li>
          <li class=""><a href="olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/demo/tiles-1.html"><i class="icon-chevron-right"></i> Education</a></li>
          <li class=""><a href="olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/demo/tiles-1.html"><i class="icon-chevron-right"></i> Entertainment</a></li>
          <li class=""><a href="olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/demo/tiles-1.html"><i class="icon-chevron-right"></i> Art and Craft</a></li>
          <li class=""><a href="olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/demo/tiles-1.html"><i class="icon-chevron-right"></i> Sports & Outdoors</a></li>
        </ul>
</div>

    
 <div class="mkcarousalfix">
<div id="myCarousel" class="carousel slide">
            <div class="carousel-inner">
              <div class="item active">
                  <img src="Images/Desert.jpg" alt="Desert" />
                <%--<div class="carousel-caption">
                <br />
                  <h4>First Thumbnail label</h4>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>--%>
              </div>
              <div class="item">
                <img src="/assets/img/bootstrap-mdo-sfmoma-02.jpg" alt=""/>
                <div class="carousel-caption">
                  <h4>Second Thumbnail label</h4>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
              </div>
              <div class="item">
                <img src="/assets/img/bootstrap-mdo-sfmoma-03.jpg" alt=""/>
                <div class="carousel-caption">
                  <h4>Third Thumbnail label</h4>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
              </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
          </div>
</div>

<br /><br /><br />
<div class="HomeMetro">
<div class="img2">
    <a href="CreatePersCustAcct.aspx">
<img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60" height="90" />
</a>
<div class="desc">
List your product
</div>
</div>
<div class="img2">
<img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60" height="90"/>
<div class="desc">
Hello world
</div>
</div>
<div class="img2">
<img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60" height="90"/>
<div class="desc">
Hello world
</div>
</div>
<div class="img2">
<img class="HomeMet" src="Images/WinPhone_0904_260x130_EN-US.png" alt="pipes" width="60" height="90"/>
<div class="desc">
Hello world
</div>
</div>
</div>

 </asp:Content>

