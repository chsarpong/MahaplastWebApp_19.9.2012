<%@ Page Title="" Language="C#" MasterPageFile="~/MerchantInfoSys/ProductListing.master" AutoEventWireup="true" CodeFile="ImageTest.aspx.cs" Inherits="MerchantInfoSys_ImageTest" %>

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
            height: 400px;
        }
         .title
        {
            margin-left:30px;   
        }
        .imagetestingrid
        {
           width:300px;    
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--<img src="Handler.ashx?productimageId=<%#(Eval("1019")) %>" alt="<%#(Eval("imagetwo")) %>" />--%>

<br />
<asp:GridView ID="GridViewTestImage" runat="server" CssClass="table table-striped table-bordered table-condensed" >
    <Columns>
        <asp:TemplateField>
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
               <%-- <img src="318974_10151226049181749_1261981761_n.jpg" alt="" />--%>
               <%-- <img src="Handler.ashx?productimageId='<%#"Handler.ashx?productimageId="+Eval("productimageId") %>" alt="<%#(Eval("imagetwo")) %>" />--%>
                <asp:Image ID="Image2" runat="server" ImageUrl='<%#"../Handler/Handler.ashx?productimageId="+Eval("productimageId") %>' width="100px" CssClass="imagetestingrid"/>
                
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    </asp:GridView>
    <br /><br />
    <asp:TextBox ID="TextBox1mage" runat="server"></asp:TextBox>
    <br />

    <asp:Button ID="btAddImage" runat="server" Text="Button" 
        onclick="btAddImage_Click1"></asp:Button>
        <br /><br />
    
    <%--<asp:Image ID="Image1" ImageUrl='<%#(Eval("productimageId")) %>' runat="server"/>--%>
    <%--<asp:Image ID="Image2" runat="server" width="502px" Height="380px"/>--%>
    <br />
    <asp:Image ID="Image1" runat="server" 
        ImageUrl='<%#"../Handler/Handler.ashx?productimageId=1019"+Eval("productimageId") %>' 
        width="503px"/>
   <br />
    <asp:Image ID="Image3" runat="server" 
        ImageUrl='<%#"../Handler/Handler.ashx?productimageId=1019"+Eval("productimageId") %>' 
        width="503px"/>

   <%--<asp:DataList ID="DataList1" RepeatColumns="3" RepeatDirection="Horizontal" 
        runat="server" DataSourceID="SqlDataSource1" Width="797px">
    <ItemTemplate>
                <asp:Label ID="imagetwoLabel" runat="server" Text='<%# Eval("imagetwo") %>' />
                <br />
                <br />
            </ItemTemplate>
   </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT [imagetwo] FROM [PRODUCTIMAGE]"></asp:SqlDataSource>--%>
</asp:Content>


