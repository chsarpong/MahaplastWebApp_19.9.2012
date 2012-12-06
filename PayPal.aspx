<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.master" AutoEventWireup="true" CodeFile="PayPal.aspx.cs" Inherits="PayPal" %>

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
<center>
<br />
<br />

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="paypal">

    <input type="hidden" name="cmd" value="_cart"/>
    <input type="hidden" name="add" value="1"/>

    <input type="hidden" name="business" value="youremailaddress@yourdomain.com"/>
    <input type="hidden" name="item_name" value="My Cart Item 2"/>

    <input type="hidden" name="amount" value="5.00"/>
    <input type="hidden" name="shipping" value="1.00"/>

    <input type="hidden" name="shopping_url" 
        value="http://www.yourwebsite.com/shoppingpage.html"/>
    <input type="hidden" name="return" value="http://www.yourwebsite.com/success.html"/>

    <input type="hidden" name="cancel_return" value="http://www.yourwebsite.com/cancel.html"/>
    <input type="hidden" name="bn" value="PP-ShopCartBF:x-click-but22.gif:NonHosted"/>

    <input type="image" src="https://www.paypal.com/en_US/i/btn/x-click-but22.gif" border="0"
        name="submit" alt="Make payments with PayPal - it's fast, free and secure!"/>&nbsp;
</form>

<br />
<br />
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
    <input type="hidden" name="cmd" value="_xclick-subscriptions"/> 
    <input type="hidden" name="business" value="youremailaddress@yourdomain.com"/> 
    <input type="hidden" name="item_name" value="Something"/> 
    <input type="submit" value="Subscribe!" /> 

    <input type="hidden" name="a1" value="0"/> 
    <input type="hidden" name="p1" value="3"/> 
    <input type="hidden" name="t1" value="D"/> 
    <input type="hidden" name="a3" value="10.00"/> 
    <input type="hidden" name="p3" value="1"/> 
    <input type="hidden" name="t3" value="M"/> 
    <input type="hidden" name="src" value="1"/> 
    <input type="hidden" name="srt" value="0"/> 
    <input type="hidden" name="sra" value="1"/> 

</form>
<br />
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="paypal">
    <input type="hidden" name="cmd" value="_cart"/>

    <input type="hidden" name="display" value="1"/>
    <input type="hidden" name="business" value="youremailaddress@yourdomain.com"/>

    <input type="hidden" name="shopping_url" 
        value="http://www.yourwebsite.com/shoppingpage.html"/>
    <input type="image" src="https://www.paypal.com/en_US/i/btn/view_cart_02.gif" 
           name="submit" alt="Make payments with PayPal - it's fast, free and secure!"/>

</form>

<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
    <input type="hidden" name="cmd" value="_xclick-subscriptions"/> 
    <input type="hidden" name="business" value="youremailaddress@yourdomain.com"/> 
    <input type="hidden" name="item_name" value="Something"/> 
    <input type="submit" value="Subscribe!" /> 

    <input type="hidden" name="a1" value="0"/> 
    <input type="hidden" name="p1" value="3"/> 
    <input type="hidden" name="t1" value="D"/> 
    <input type="hidden" name="a3" value="10.00"/> 
    <input type="hidden" name="p3" value="1"/> 
    <input type="hidden" name="t3" value="M"/> 
    <input type="hidden" name="src" value="1"/> 
    <input type="hidden" name="srt" value="0"/> 
    <input type="hidden" name="sra" value="1"/> 

</form>

<form action="https://www.paypal.com/cgi-bin/webscr" method="post">  
      <!-- Identify your business so that you can collect the payments. -->     
 <input type="hidden" name="business" value="alice@mystore.com"/>     
   <!-- Specify a Subscribe button. --> 
  <input type="hidden" name="cmd" value="_xclick-subscriptions"/>  
      <!-- Identify the subscription. -->    
        <input type="hidden" name="item_name" value="Alice's Weekly Digest"/>   
   <input type="hidden" name="item_number" value="DIG Weekly"/>  
         <!-- Set the revised subscription price and terms. -->    
  <input type="hidden" name="currency_code" value="USD"/>      <input type="hidden" name="a3" value="69.95"/>     
 <input type="hidden" name="p3" value="6"/>      <input type="hidden" name="t3" value="M"/>     
   <!-- Set recurring payments until canceled. --> 
        <input type="hidden" name="src" value="1"/>     
   <!-- Let current subscribers modify only. -->   
      <input type="hidden" name="modify" value="2"/>  
        <!-- Display the payment button. --> 
         <input type="image" name="submit" border="0"        
  src="https://www.paypal.com/en_US/i/btn/btn_subscribe_LG.gif"          alt="PayPal - The safer, easier way to pay online"/>&nbsp;
  </form>

  <form action="https://www.paypal.com/cgi-bin/webscr" method="post"> 
 <!-- Identify your business so that you can collect the payments. -->  
    <input type="hidden" name="business" value="alice@mystore.com"/>    
    <!-- Specify a Subscribe button. -->     
 <input type="hidden" name="cmd" value="_xclick-subscriptions"/>      
  <!-- Identify the subscription. -->    
<input type="hidden" name="item_name" value="Alice's Weekly Digest"/>  
<input type="hidden" name="item_number" value="DIG Weekly"/> 
<!-- Set the terms of the regular subscription. -->    
 <input type="hidden" name="currency_code" value="USD"/>  
<input type="hidden" name="a3" value="19.95"/>  
<input type="hidden" name="p3" value="1"/> 
<input type="hidden" name="t3" value="M"/>  
 <!-- Set recurring payments until canceled. -->   
<input type="hidden" name="src" value="1"/> 
 <!-- Have PayPal generate usernames and passwords. --> 
  <input type="hidden" name="usr_manage" value="1"/>   
 <!-- Display the payment button. -->  
 <input type="image" name="submit" border="0" src="https://www.paypal.com/en_US/i/btn/btn_subscribe_LG.gif" 
alt="PayPal - The safer, easier way to pay online"/>       
 </form> 


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
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!"/>&nbsp;
</form>

<br />


</center>


    <head>
      <title>My Great Web page</title>
    </head>
    <body>
       <iframe src="http://www.facebook.com/plugins/like.php?href=YOUR_URL"
        scrolling="no" frameborder="0"
        style="border:none; width:450px; height:80px"></iframe>
    </body>
 



</asp:Content>

