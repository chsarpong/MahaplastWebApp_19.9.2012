<%@ Page Title="" Language="C#" MasterPageFile="~/BuyerInfoSys/Buyer_Purchase.master" AutoEventWireup="true" CodeFile="JScriptTest.aspx.cs" Inherits="JScriptTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script type="">
    function myFunction() {
        var x = "";
        for (var i = 0; i < 5; i++) {
            x = x + "The number is " + i + "<br>";
        }
        document.getElementById("demo").innerHTML = x;
        document.getElementById("demo1").innerHTML = x;
    }
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<button onclick="myFunction()">Try it</button>
<%--<p id="demo"></p>--%>

 
                <div id="demo" class="metro3bg_greenLight" style="background-color: #008000">
                    <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                    <h3>Amazon</h3>
                    <asp:GridView ID="GridView5" runat="server" Width="303px"></asp:GridView>
                </div>
                
                <div id="demo1" class="metro3bg_greenLight" style="background-color: #008000">
                    <div class="imagemetroprofilepic"><img src="../olton-Metro-UI-CSS-a44861a/olton-Metro-UI-CSS-a44861a/new-demo/img/michael.jpg" alt="profilepic" class="imagemetroprofilepic"/></div>
                    <h3>Amazon</h3>
                    <asp:GridView ID="GridView1" runat="server" Width="303px"></asp:GridView>
                </div>

                <br />
       
</asp:Content>

