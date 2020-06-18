<%@ page language="C#" autoeventwireup="true" inherits="Store_ConfirmStoreCart, App_Web_tk3h02l1" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>确认所购物品</title>
    <link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/JS/ajaxrequest.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest();
    function keydo(iid) {
        var fprice = document.getElementById("product_ctl0" + iid + "_cost1").value;
        ajax.get(
        "/prompt/TrackProduct.aspx?sid=" + iid + "&fprice=" + fprice,
        function (obj) {
            var pri = obj.responseText;
            var price = pri.split('|');
            if (price != null && price.length > 1) {
                document.getElementById("product_ctl0" + iid + "_alljiage").innerText = price[0];
                document.getElementById("allMoney").innerText = price[1];

            }
        }
        );

    }
</script>
<script type="text/javascript" >
    function os() {
        lk = document.getElementById("YF").options[1].toString;
        alert(lk);
}
    function xs(){
    if(i==0)
    {
        document.getElementById("MF").style.display="";
    }
    else{
        document.getElementById("YF").style.display="";
    }
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main" class="rg_inout">
    <h1>第二步:确认所购物品<span><asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label></span><img src="/user/images/regl1.gif" width="242" height="14" /></h1>
   <asp:Repeater ID="product" runat="server" onitemdatabound="product_ItemDataBound" 
            onitemcommand="product_ItemCommand" >
   <ItemTemplate>
   店铺名称:<asp:Label runat="server" ID="L_Shop"></asp:Label>
    
    <div class="cart_lei">
    <ul>
      <li class="i0">图片</li>
      <li class="i1">商品名称</li>
      <li class="i2">单位</li>
      <li class="i3">数量</li>
      <li class="i4">市场价</li>
      <li class="i5">实价</li>
      <li class="i6">金额</li>
    </ul>
    </div>
    <asp:Repeater ID="cartinfo" runat="server" EnableViewState="True">
    <ItemTemplate>
    <div class="cart_con">
        <ul>
          <li class="i0"> <%#getproimg(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i1"><%#Eval("ProName")%></li>
          <li class="i2"><%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i3"><%#DataBinder.Eval(Container, "DataItem.pronum", "{0}")%></li>
          <li class="i4"><%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i5"><%#shijia(DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%></li>
          <li class="i6"><span id='price<%#Eval("ID") %>'><%#getprojias(Eval("ID", "{0}"), DataBinder.Eval(Container, "DataItem.pronum", "{0}"))%></span></li>
          <div class="clear"></div>
        </ul>
        </div>
      </ItemTemplate>
    </asp:Repeater> 
    <div class="jia">
    <ul>
        
      <li style="width:250px;text-align:left;">运费:
      <asp:DropDownList runat="server" ID="cost" onchange="selectFee(this)"></asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请选择送货方式" ControlToValidate="cost"></asp:RequiredFieldValidator>
    <%--  <asp:DropDownList ID="cost" runat="server" AutoPostBack="true"  >
      </asp:DropDownList>--%>
      </li><asp:HiddenField ID="alljiag" runat="server" />
           <asp:HiddenField ID="allm" runat="server" Value="0" />
      <li style="width:250px;text-align:left;">合计：<asp:Label ID="alljiage" runat="server" Text=""></asp:Label></li>
      <li style="width:250px;text-align:left;">
      </li>
      </ul>
  </div>
        <br />
        <br />
        <hr />
    </ItemTemplate> 
  </asp:Repeater> 
  <div>
       <ul>
      <li style="width:100%;text-align:center;">共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个商品
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />
        /
        <asp:Label ID="PageSize" runat="server" Text="" />
        页
        <asp:Label ID="pagess" runat="server" Text="" />
        个商品/页  转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>页</li>
        </ul>

        <div style=" float:right; margin-right:10px;">
        商品积分：<asp:Label ID="allscore" runat="server"></asp:Label> <br />
        实付款(含邮费)：<asp:HiddenField ID="allMone" runat="server" />
   
        <label id="allMoney" runat="server" style="color:Red;font-size:large"></label>元</div>
        <div class="clear"></div>
        <div style=" float:right;margin-right:10px;"> <asp:Button ID="Button1"  CssClass="i_bottom" runat="server" Text="确认购买" OnClientClick="return checkFare()" onclick="Button1_Click" /></div>
  </div>
<div id="bottom"> <a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a></div>
<p> 
<script type="text/javascript">
     function checkFare() {
  var obj= document.getElementsByTagName("select");
   for(var i=0; i<obj.length; i++)
   {
       if (obj[i].options[obj[i].selectedIndex].value == "" || obj[i].options[obj[i].selectedIndex].value=="0") {
           alert("请选择送货方式！");
           obj[i].options[obj[i].selectedIndex].value = 0;
           return false;
       }
        }
   }
    function selectFee(obj) {
        var val = obj.options[obj.selectedIndex].value;
        if (val == "") {
            val = 0; 
        }
        var str = obj.id;
        var strs = str.split("_");
        strs = strs[1];
        document.getElementById("product_" + strs + "_alljiage").innerHTML = parseInt(document.getElementById("product_" + strs + "_alljiag").value) + parseInt(val) + ".00"
        document.getElementById("allMoney").innerHTML = parseFloat(document.getElementById("allMoney").innerHTML) - parseFloat(document.getElementById("product_" + strs + "_allm").value) + parseFloat(val);
        document.getElementById("allMoney").innerHTML = document.getElementById("allMoney").innerHTML + ".00";
        document.getElementById("allMone").value = document.getElementById("allMoney").innerHTML;
        document.getElementById("product_" + strs + "_allm").value = parseInt(val);
     }
</script> 
<%--  <script  type="text/javascript"> 
  $(window).load(function () {
            ajax.get("/Common/ChangCity.aspx?province=sheng",
            function (obj) {
                var pri = obj.responseText;
                pri = "<select id=\"sheng\" style=\"width:55px;\" onchange=\"getCity()\" name=\"sheng\">" + pri + "</select>"
                document.getElementById("shengfen").innerHTML = pri;
            });
        });
        $(window).load(function () {
            ajax.get("/Common/ChangCity.aspx?province=sheng",
            function (obj) {
                var pri = obj.responseText;
                pri = "<select id=\"sheng\" style=\"width:55px;\" onchange=\"getCity()\" name=\"sheng\">" + pri + "</select>"
                document.getElementById("shengfen").innerHTML = pri;
            });
        });
        function getCity() {
            var pid = document.getElementById("sheng").selectedIndex;
            ajax.get("/Common/ChangCity.aspx?province=" + pid,
            function (obj) {
                var pri = obj.responseText;
                pri = "<select id=\"shi\" style=\"width:65px\" name=\"shi\">" + pri + "</select>"
                document.getElementById("chenshi").innerHTML = pri;
            });
        }

<!--
      var year = "";
      mydate = new Date();
      myyear = mydate.getYear();
      year = (myyear > 200) ? myyear : 1900 + myyear;
      document.write(year);
      function cost1_onclick() {

      }

--> 
  </script>--%>
  &copy;&nbsp;Copyright&nbsp;
  <%Call.Label("{$SiteName/}"); %>
  All rights reserved.</p>
</div>

</form>
</body>
</html>
