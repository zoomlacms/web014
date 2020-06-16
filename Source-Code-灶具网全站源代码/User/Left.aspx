<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("u_Left_funNav")%></title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery.js" type="text/javascript"></script>
<script src="../js/UserDefault.js" type="text/javascript"></script>
</head>
<body class="user_left">
<form id="form1" runat="server">
<div class="left_font"  onclick="usershow('#td1','#span1')">
<span id="span1" class="imgbgover img_icon" onclick=" usershow('#td1','#span1')" ></span>帐号信息</div>
<ul id="td1" class="tabtr">
<li><a href="Info/UserInfo.aspx" target="main_right"><%=lang.Get("u_Left_accoutinfo")%></a></li>
<li><a href="ConstPassen.aspx" target="main_right"><%=lang.Get("u_Left_fre")%></a></li>
<li><a href="info/UserRecei.aspx" target="main_right"><%=lang.Get("u_Left_address")%></a></li>
<li><a href="info/UserDay.aspx" target="main_right"><%=lang.Get("u_Left_remind")%></a></li>
<li><a href="ChangPSW.aspx" target="main_right">修改密码</a></li>
<li><a href="/User/PreViewOrder.aspx?menu=Orderinfo" target="main_right">我的订单</a></li>
</ul>

<div class="left_font" onclick="usershow('#td4','#span4')"> 
<span id="span4"  class="imgbgout img_icon"  onclick="usershow('#td4','#span4')"></span>财务管理<span style="display:none"><%=lang.Get("u_Left_subNav")%></span></div>
<ul id="td4"  class="tabtr">
<li><a href="/User/Info/UserBase.aspx" target="main_right">基本信息<span style="display:none"><%=lang.Get("u_Left_list")%></span></a></li>
<li> <a href="/User/Info/ExchangeDP.aspx" target="main_right">兑换金额<span style="display:none"><%=lang.Get("u_Left_activate")%></span></a></li>
<li><a href="/User/Info/ExchangeIntegral.aspx" target="main_right">兑换积分<span style="display:none"><%=lang.Get("u_Left_income")%></span></a></li>
<li><a href="/PayOnline/SelectPayPlat.aspx" target="main_right">充值金额<span style="display:none"><%=lang.Get("u_Left_pro")%></span></a></li>
<li><a href="/User/Info/MoneyInfo.aspx" target="main_right">金额明细<span style="display:none"><%=lang.Get("u_Left_plan")%></span></a></li>
<li> <a href="/User/Info/ExpHis.aspx" target="main_right">积分明细<span style="display:none"><%=lang.Get("u_Left_subs")%></span></a></li>
<li  style="display:none"><a href="BidList.aspx?type=myBid"target="main_right"><span><%=lang.Get("u_Left_bid")%></span></a></li>
<li style="display:none"><a href="BidList.aspx?type=myJoin"target="main_right"><span><%=lang.Get("u_Left_par")%></span></a></li>
<li style="display:none"><a href="BidList.aspx?type=settlement"target="main_right" ><span><%=lang.Get("u_Left_settle")%></span></a></li>
<li  style="display:none"><a href="../Questions/Default.aspx" target="main_right" ><span><%=lang.Get("u_Left_goup")%></span></a></li>
</ul>
 </form>
</body>
</html>