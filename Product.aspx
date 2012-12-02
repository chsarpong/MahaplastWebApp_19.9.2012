<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Product.aspx.cs" Inherits="Product" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
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
                </div>
                <!--/.well -->
            </div>
            <!--/span-->
            <div class="span9">
                <%-- <div class="hero-unit">
            <h1>Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
          </div>--%>
                <div class="row-fluid">
                    <div class="span4">
                        <p class="img">
                            <img src="Images/pipes.jpg" alt="pipes" width="60" height="90" />
                        </p>
                    </div>
                    <!--/span-->
                    <div class="span4">
                        <p class="img">
                            <img src="Images/pipes.jpg" alt="pipes" width="60" height="90" />
                        </p>
                    </div>
                    <!--/span-->
                    <div class="span4">
                        <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-large">Launch demo
                            modal</a>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                   <%-- PayPal buy now--%>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_xclick"/>
<input type="hidden" name="business" value="sarpongcharles632@yahoo.com"/>
<input type="hidden" name="lc" value="FI"/>
<input type="hidden" name="item_name" value="T-shirt"/>
<input type="hidden" name="button_subtype" value="services"/>
<input type="hidden" name="no_note" value="0"/>
<input type="hidden" name="tax_rate" value="2.500"/>
<input type="hidden" name="shipping" value="1.00"/>
<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest"/>
<table>
<tr><td><input type="hidden" name="on0" value="Choose size"/>Choose size</td></tr><tr><td><select name="os0">
	<option value="Small">Small €20.00 EUR</option>
	<option value="Medium">Medium €20.00 EUR</option>
	<option value="Large">Large €20.00 EUR</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="EUR"/>
<input type="hidden" name="option_select0" value="Small"/>
<input type="hidden" name="option_amount0" value="20.00"/>
<input type="hidden" name="option_select1" value="Medium"/>
<input type="hidden" name="option_amount1" value="20.00"/>
<input type="hidden" name="option_select2" value="Large"/>
<input type="hidden" name="option_amount2" value="20.00"/>
<input type="hidden" name="option_index" value="0"/>
<input class="PayPal" type="image" 
    src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" 
    name="I1" alt="PayPal - The safer, easier way to pay online!"/>&nbsp;
</form>

<br />
<br />
<br />
<br />
<br />
<br />
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_cart"/>
<input type="hidden" name="business" value="sarpongcharles632@yahoo.com"/>
<input type="hidden" name="lc" value="FI"/>
<input type="hidden" name="item_name" value="T-shirt"/>
<input type="hidden" name="button_subtype" value="products"/>
<input type="hidden" name="no_note" value="0"/>
<input type="hidden" name="currency_code" value="EUR"/>
<input type="hidden" name="tax_rate" value="2.500"/>
<input type="hidden" name="shipping" value="1.00"/>
<input type="hidden" name="add" value="1"/>
<input type="hidden" name="bn" value="PP-ShopCartBF:btn_cart_LG.gif:NonHostedGuest"/>
<%--<table>
<tr><td><input type="hidden" name="on0" value="Choose size"/>Choose size</td></tr><tr><td><select name="os0">
	<option value="Small">Small €20.00 EUR</option>
	<option value="Medium">Medium €20.00 EUR</option>
	<option value="Large">Large €20.00 EUR</option>
</select> </td></tr>
</table>--%>
<input type="hidden" name="currency_code" value="EUR"/>
<input type="hidden" name="option_select0" value="Small"/>
<input type="hidden" name="option_amount0" value="20.00"/>
<input type="hidden" name="option_select1" value="Medium"/>
<input type="hidden" name="option_amount1" value="20.00"/>
<input type="hidden" name="option_select2" value="Large"/>
<input type="hidden" name="option_amount2" value="20.00"/>
<input type="hidden" name="option_index" value="0"/>
<input class="PayPal" type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!"/>&nbsp;
</form>

                </div>
                <!--/span-->
            </div>
            <!--/row-->
            <br />
            <br />
            <br />
            <br />
            <!--/row-->
            <div class="row-fluid">
                <div class="span4">
                    <hr width="810" />
                    <br />
                    <br />
                    <hr width="810" />
                    <br />
                    <br />
                    <hr width="810" />
                    <br />
                    <br />
                    <hr width="810" />
                    <br />
                    <br />
                    <hr width="810" />
                </div>
                <!--/span-->
                <!--/span-->
                <!--/span-->
            </div>
        </div>
        <!--/span-->
    </div>
    <!--/row-->
    <hr />
    <footer>
        <p>&copy; Company 2012</p><br /><br /></footer>
</asp:Content>
