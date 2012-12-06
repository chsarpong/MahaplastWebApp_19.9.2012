<%@ Page Title="" Language="C#" MasterPageFile="~/Services/Businesservice.master" AutoEventWireup="true" CodeFile="Sales.aspx.cs" Inherits="Services_Sales" %>

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
    <link href="../Styles/GetAround.css" rel="stylesheet" type="text/css" />


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
   <%--left search--%>
<div class="selectiondiv">
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
                <asp:Button ID="btSearchOrderNum" runat="server" Text="Search" ></asp:Button>
                </asp:Panel>
                <br />
                <asp:Label ID="lbOrderError" runat="server" Text="Label"></asp:Label>
                
      </div>
      <br />

      <asp:GridView ID="GridViewProdSearch" runat="server" 
        CssClass="table table-striped table-bordered table-condensed gridpict" 
        AllowPaging="True" PageSize="8">
         <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                   <%-- <img src="318974_10151226049181749_1261981761_n.jpg" alt="" />--%>
               <%-- <img src="Handler.ashx?productimageId='<%#"Handler.ashx?productimageId="+Eval("productimageId") %>" alt="<%#(Eval("imagetwo")) %>" />--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#"../Handler/GetAroundHandler.ashx?productcategoryId="+Eval("productcategoryId") %>' width="150px" Height="110px"/>
                
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
   
      </asp:GridView>
    

      <br /><br />
      <asp:Image ID="Image2" runat="server"  ImageUrl='<%#"../Handler/GetAroundHandler.ashx?productcategoryId="+Eval("productcategoryId") %>' width="100px" CssClass="imagetestingrid" ></asp:Image>

      <asp:Label ID="lbFashionSales" runat="server" Text="Label"></asp:Label>
<br /><br />
    <asp:Label ID="lbSesProductCat" runat="server" Text="Label"></asp:Label>

<br /><br />
<div>
        <asp:DataList ID="DataList1" runat="server" 
            RepeatColumns="3" RepeatDirection="Horizontal" CssClass="table table-striped table-bordered table-condensed">
            <ItemTemplate>
                <table>
                    <tr>
                        <td valign="middle" align="center" 
                            style="background-color:#cccccc;border:1px solid gray;" class="style1"><%#DataBinder.Eval(Container.DataItem, "imageone")%></td>
                    </tr>
                </table>
                <div>
                Hello wolnnkjkjklölölö
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

</asp:Content>

