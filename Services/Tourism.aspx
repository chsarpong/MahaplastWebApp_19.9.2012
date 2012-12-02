﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Services/Businesservice.master" AutoEventWireup="true" CodeFile="Tourism.aspx.cs" Inherits="Services_Tourism" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/docs.css" rel="stylesheet" type="text/css" />
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

    <link href="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/css/metro.css"
        rel="stylesheet" type="text/css" />
    <link href="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/css/representative.css"
        rel="stylesheet" type="text/css" />
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/less-1.3.0.min.js"
        type="text/javascript"></script>
    <link href="../Styles/metro.css" rel="stylesheet" type="text/css" />


 <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/less-1.3.0.min.js" type="text/javascript"></script>
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/jquery.mousewheel.min.js" type="text/javascript"></script>
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/jquery.cycle.all.js" type="text/javascript"></script>
    <script src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/js/metroui.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $("body").metroUI();
    })

    $(function () {
        var new_width = 0;

        $(".metro-section").each(function () {
            var w = $(this).width() + 80;
            new_width += w;
        });

        $(".metro-sections").css("width", new_width);

        $(".metro-scroll").height($(window).height() - 10);
        //$(".metro-scroll").width($(".metro-sections").width());

    })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--Inputs--%>
<div>
                &nbsp;<&nbsp;<&nbsp;<asp:Panel ID="Panel1" CssClass="PanelSelApp" 
                runat="server" BorderColor="#51C7FF" GroupingText="Find Out" Width="261px">
                <asp:Label ID="lbCustomerNumber" runat="server" CssClass="detail_label" Text="Merchant"></asp:Label><br />
                <asp:ListBox ID="ListBoxMerchant" runat="server" CssClass="detail_label" 
                        AutoPostBack="True" ></asp:ListBox>
                <br /><br /><br /><br /><br />
                <asp:Label ID="Label1" runat="server" CssClass="detail_label" Text="Category"></asp:Label><br />
                <asp:ListBox ID="ListBoxCategory" runat="server" CssClass="detail_label" 
                        AutoPostBack="True" ></asp:ListBox><br />
                 <asp:Label ID="Label2" runat="server" CssClass="detail_label" Text="Order Date"></asp:Label><br />
                <asp:ListBox ID="ListBox3" runat="server" CssClass="detail_label"></asp:ListBox>
                <asp:Label ID="lbErrorCusInformation" runat="server" Text=""></asp:Label>
                <br /><br /><br /><br /><br /><br /><br />
          

                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" CssClass="PanelSelApp" 
                runat="server" BorderColor="#51C7FF" GroupingText="Enter Order #" Width="261px">
                <asp:TextBox ID="tbSearchOrderNum" runat="server" CssClass="detail_label"></asp:TextBox><br />
                <asp:Button ID="btSearchOrderNum" runat="server" Text="Search"></asp:Button>
                </asp:Panel>
                <br />
                <asp:Label ID="lbOrderError" runat="server" Text="Label"></asp:Label>
                
      </div>
      <%--Whole center metro--%>
<div class="metro-sections">
                  
                <br />
                <br />
      <div class="gotop">
         <%-- First row div--%>
          <div style="height: 162px; width: 942px;">

                <%--First Tile--%>
               <div class="metro3">
                      <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                       <h3>Nokia</h3>
                        <a href="../CreateProdListing.aspx"></a>
                      <asp:GridView ID="GridViewFirstGrid" runat="server" Width="303px"></asp:GridView>
                </div>


                <%--Second tile--%>
                <div class="metro3bg_yellow">
                     <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                    <asp:GridView ID="GridView2" runat="server" Width="303px" ></asp:GridView>
                </div>


                <%--Third Tile--%>
                 <div class="metro3bg_purple">
                    <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                     <h3>Apple</h3>
                    <asp:GridView ID="GridView4" runat="server" Width="303px"></asp:GridView>
                </div>
      </div>



              <%--  Second row div--%>
             <%-- First Tile--%>
                 <div style="height: 162px; width: 942px;">
                <div class="metro3bg_greenLight">
                    <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                    <h3>Amazon</h3>
                    <asp:GridView ID="GridView5" runat="server" Width="303px"></asp:GridView>
                </div>

                <%--second tile--%>
                <div class="metro3_lilred">
                     <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                    <asp:GridView ID="GridView29" runat="server" Width="303px"></asp:GridView>
                </div>

                <div class="metro3_bluelight">
                    <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                    <asp:GridView ID="GridView6" runat="server" Width="303px"></asp:GridView>
                </div>
                </div>
              <%--Third div--%>
                 <div style="height: 162px; width: 942px;">
                <div class="metro33_yellow">
                    <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                        <asp:GridView ID="GridView0" runat="server" Width="303px"></asp:GridView>
                </div>
                <div class="metro3_pinkdark">
                    <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                    <asp:GridView ID="GridView7" runat="server" Width="303px"></asp:GridView>
                </div>
                <div class="metro3_orangedark">
                    <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                    <h3>Seppälä</h3>
                    <asp:GridView ID="GridView8" runat="server" Width="303px"></asp:GridView>
                </div>
                 <br />
                
                 <%--<div >
                    <img src="../Images/227471_10151222281456749_1355537675_n.jpg" alt="" class="imagemetroprofilepic2"/>
                    <asp:GridView ID="GridView1" runat="server" Width="303px"></asp:GridView>
                </div>--%>

                <%-- <div >
                    <img src="../Images/318974_10151226049181749_1261981761_n.jpg" alt="" class="imagemetroprofilepic3"/>
                    <asp:GridView ID="GridView3" runat="server" Width="303px"></asp:GridView>
                </div>--%>
<%--
                 <div >

                   <img src="../Images/23912_10151216064156749_1013878791_n.jpg" alt="" class="imagemetroprofilepic4"/>
                    <asp:GridView ID="GridView9" runat="server" Width="303px"></asp:GridView>
                </div>--%>
                </div>
       </div>
                <br />

    </div>
   <%-- Main pic on side--%>
    <div class="sideimage bg-color-orange" >
        
                    </div>
</asp:Content>

