<%@ page language="C#" autoeventwireup="true" inherits="StoreCart, App_Web_tk3h02l1" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>加入购物车</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="/JS/ajaxrequest.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest();
    function keydo(ids,iid) {
        var num = document.getElementById("num" + ids).value;
        ajax.get(
        "/prompt/ShopCart/UpdateShopCar.aspx?cid=" + ids + "&num=" + num + "&menu=usercart",
        function (obj) {
            var pri = obj.responseText;
            var price = pri.split('|');
            if (price != null && price.length > 1) {
                document.getElementById("price" + ids).innerText = price[1];
                document.getElementById("allMoney").innerText = price[0];
            }
        }
        );

    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div id="main" class="rg_inout">
    <h1>第一步:加入购物车<span>[<asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>]</span><img src="/user/images/regl1.gif" width="242" height="14" /></h1>
   <asp:Repeater ID="product" runat="server" onitemdatabound="product_ItemDataBound" >
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
      <li class="i7">操作</li>
    </ul>
    </div>
    <asp:Repeater ID="cartinfo" runat="server" EnableViewState="True">
    <ItemTemplate>
    <div class="cart_con">
        <ul>
          <li class="i0"> <%#getproimg(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i1"><%#Eval("ProName")%></li>
          <li class="i2"><%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i3"><input onkeydown="if(event.keyCode==13){ keydo('<%#Eval("id") %>');return false;}" id='num<%#Eval("id") %>' value='<%#DataBinder.Eval(Container, "DataItem.pronum", "{0}")%>' style="width: 30px; height:20px" onblur="keydo('<%#Eval("id") %>')" /></li>
          <li class="i4"><%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i5"><%#shijia(DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%></li>
          <li class="i6"><span id='price<%#Eval("ID") %>'><%#getprojias(Eval("ID", "{0}"), DataBinder.Eval(Container, "DataItem.pronum", "{0}"))%></span></li>
          <li class="i7"><a href="StoreCart.aspx?menu=del&cid=<%#Eval("id")%>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
          <div class="clear"></div>
        </ul>
        </div>
      </ItemTemplate>
    </asp:Repeater> 
    <div class="jia">
  </div>
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
       <div style=" float:right;margin-right:10px;">
       
        商品积分：<asp:Label ID="allscore" runat="server"></asp:Label> <br />

       合计(不含邮费)：<Label id="allMoney" runat="server" style="color:Red;font-size:large"></Label>元</div>
          <div class="clear"></div>
      <div style=" float:right;margin-right:10px;"> <asp:Button ID="Button1"  CssClass="i_bottom" runat="server" Text="购买" onclick="Button1_Click" /></div>
  </div>
<div id="bottom"> <a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a></div>
<p> 
  <script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp;
  <%Call.Label("{$SiteName/}"); %>
  All rights reserved.</p>
</div>

</form>
</body>
</html>