﻿<%@ page language="C#" autoeventwireup="true" inherits="User_Main, App_Web_d1ldudxt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("u_Main_usernav")%></title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function Load(r1, r2) {
    parent.document.getElementById("left").src = r1;
    parent.document.getElementById("main_right").src = r2;
}

function goforum_program() {
    Load('Content/ContentLeft.aspx', '../manage/AddOn/ProjectsList.aspx')
    Showtib(1);
}

function goforum_myinifo0_2() {
    Load('/User/StationGuid.aspx', '/user/Content/MyContent.aspx?NodeID=272')
    Showtib(2);
}

function goforum_myinfo0_4() {
    Load('Left.aspx', 'Info/UserInfo.aspx')
    Showtib(0);
}

function goforum_contentmanage1_6() {
    Load('Content/ContentLeft.aspx', '/Class_6/NodeHot.aspx?pageid=1')
    Showtib(4);
}

function goforum_contentmanage1_15() {
    Load('Content/ContentLeft.aspx', '/user/iServer/FiServer.aspx')
    Showtib(1);
}

function goforum_contentmanage1_16() {
    Load('Content/ContentLeft.aspx', '../CN/nite/Content/ResumeManage.aspx')
    Showtib(1);
}

function goforum_shop2_1() {
    Load('/User/StationGuid.aspx', '/User/Pages/PageInfo.aspx?menu=modifile')
    Showtib(1);
}

function goforum_shop2_3() {
    Load('/User/StationGuid.aspx', '/Item/270.aspx')
    Showtib(7);
}
function goforum_interaction3_18() {
    Load('/User/StationGuid.aspx', '/User/Content/MyContent.aspx?NodeID=250')
    Showtib(5);
}
function goforum_shop2_7() {
    Load('Sera_shopLeft.aspx', 'Info/DredgeVip.aspx')
    Showtib(2);
}

function goforum_shop2_11() {
    Load('Sera_shopLeft.aspx', 'CashCoupon/ArriveManage.aspx')
    Showtib(2);
}

function goforum_shop2_12() {
    Load('Sera_shopLeft.aspx', 'Info/DredgeVip.aspx')
    Showtib(2);
}

function goforum_interaction3_13() {
    Load('Guild/CommunityLeft.aspx', 'UserZone/Default.aspx')
    Showtib(3);
}

function goforum_interaction3_17() {
    Load('Guild/CommunityLeft.aspx', 'Survey/SurveyAll.aspx')
    Showtib(3);
}

function goforum_mycollection4_10() {
    Load('UserShop/ShopLeft.aspx', '../Space/SpaceManage.aspx')
    Showtib(4);
}

function goforum_mycollection3_3() {
    Load('StationGuid.aspx', '/Class_273/default.aspx?pageid=1')
    Showtib(3);
}

function goforum_mycollection5_8() {
    Load('StationGuid.aspx', 'Pages/Default.aspx')
    Showtib(5);
}

function goForumFlex() {
    Load('Sera_shopLeft.aspx', 'PrintServer/ImageList.aspx');
}

function Showtib(num) {
    for (var i = 0; i < 6; i++) {
        if (i == num) {
            parent.document.getElementById("_Menu_" + num).className = "liOver";
         }
         else {
            parent.document.getElementById("_Menu_" + i).className = "liOut";
        }
    }
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div id="wrap">
<ul>
<li>
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_shop2_1();">
<img src="/App_Themes/UserThem/Images/ub1.gif" alt="学校信息" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_shop2_1();">学校信息<span style="display:none"><%=lang.Get("u_Main_order")%></span></p>
</li>

<li>
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_myinifo0_2();">
<img src="/App_Themes/UserThem/Images/ub2.gif" alt="认证申请" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_myinifo0_2();">认证申请<span style="display:none"><%=lang.Get("u_Main_subscribe")%></span></p>
</li>

<li>
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_shop2_3();">
<img src="/App_Themes/UserThem/Images/ub3.gif" alt="学府通" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_shop2_3();">学府通<span style="display:none"><%=lang.Get("u_Main_property")%></span></p>
</li>

<li>
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_myinfo0_4();">
<img src="/App_Themes/UserThem/Images/ub4.gif" alt="我的信息" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_myinfo0_4();"><%=lang.Get("u_info")%></p>
</li>

<li>
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_mycollection3_3();">
<img src="/App_Themes/UserThem/Images/ub5.gif" alt="互动问答" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_mycollection3_3();">互动问答<span style="display:none"><%=lang.Get("u_Main_sersupport")%></span></p>
</li>

<li>
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_contentmanage1_6();">
<img src="/App_Themes/UserThem/Images/ub6.gif" alt="报名管理" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_contentmanage1_6();">报名管理<span style="display:none"><%=lang.Get("u_Content")%></span></p>
</li>

<li style="display:none">
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_shop2_7();">
<img src="/App_Themes/UserThem/Images/ub7.gif" alt="全景展示" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_shop2_7();"><%=lang.Get("u_shop")%></p>
</li>

<li style="display:none">
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_mycollection5_8();">
<img src="/App_Themes/UserThem/Images/ub8.gif" alt="黄页管理" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_mycollection5_8();"><%=lang.Get("u_Main_yellow")%></p>
</li>

<li>
<span><a href="../User/Message/Message.aspx"><img src="/App_Themes/UserThem/Images/ub9.gif" alt="我的短信" /></a></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'"><a  style="color:#1C5F85;" href="../User/Message/Message.aspx"><%=lang.Get("u_Main_sms")%></a></p>
</li>

<li  style="display:none">
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_mycollection4_10();">
<img src="/App_Themes/UserThem/Images/ub10.gif" alt="个人聚合" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_mycollection4_10();"><%=lang.Get("u_Main_aggregate")%></p>
</li>

<li  style="display:none">
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_shop2_11();">
<img src="/App_Themes/UserThem/Images/ub11.gif" alt="抵用券" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_shop2_11();"><%=lang.Get("u_Main_voucher")%></p>
</li>

<li  style="display:none">
<span onmouseover="this.className='Span2'"   onmouseout="this.className='Span1'" onclick="goforum_shop2_12();">
<img src="/App_Themes/UserThem/Images/ub12.gif" alt="VIP卡" /></span>
<p onmouseover="this.className='Span2'"  onmouseout="this.className='Span1'" onclick="goforum_shop2_12();"><%=lang.Get("u_Main_vip")%></p>
</li>

<li  style="display:none">
<span onmouseover="this.className='Span2'"   onmouseout="this.className='Span1'" onclick="goforum_interaction3_13();">
<img src="/App_Themes/UserThem/Images/ub13.gif" alt="社区互动" /></span>
<p onmouseover="this.className='Span2'"  onmouseout="this.className='Span1'" onclick="goforum_interaction3_13();"><%=lang.Get("u_interactive")%></p>
</li>

<li  style="display:none">
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goForumFlex();" >
<img src="/App_Themes/UserThem/Images/ub14.gif" alt="FLEX涂鸦" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goForumFlex();" ><%=lang.Get("u_Main_flex")%></p>
</li>

<li>
<span onmouseover="this.className='Span2'"  onmouseout="this.className='Span1'" onclick="goforum_contentmanage1_15();">
<img src="/App_Themes/UserThem/Images/ub15.gif" alt="有问必答" /></span>
<p onmouseover="this.className='Span2'"   onmouseout="this.className='Span1'" onclick="goforum_contentmanage1_15();"><%=lang.Get("u_Main_insider")%></p>
</li>

<li  style="display:none">
<span onmouseover="this.className='Span2'"  onmouseout="this.className='Span1'" onclick="goforum_contentmanage1_16();">
<img src="/App_Themes/UserThem/Images/ub16.gif" alt="招聘简历" /></span>
<p onmouseover="this.className='Span2'"  onmouseout="this.className='Span1'" onclick="goforum_contentmanage1_16();"><%=lang.Get("u_Main_recruit")%></p>
</li>

<li  style="display:none">
<span onmouseover="this.className='Span2'"  onmouseout="this.className='Span1'" onclick="goforum_program()">
<img src="/App_Themes/UserThem/Images/ub17.gif" alt="项目管理" /></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'"><%=lang.Get("u_Main_project")%></p>
</li>

<li>
<span onmouseover="this.className='Span2'"  onmouseout="this.className='Span1'" onclick="goforum_interaction3_17();">
<img src="/App_Themes/UserThem/Images/ub18.gif" alt="云端存储" /></span>
<p onmouseover="this.className='Span2'"  onmouseout="this.className='Span1'" onclick="goforum_interaction3_17();">云端存储<span style="display:none"><%=lang.Get("u_Main_question")%></span></p>
</li>

<li>
<span onmouseover="this.className='Span2'" onmouseout="this.className='Span1'" onclick="goforum_interaction3_18();">
<a href="/User/Content/MyContent.aspx?NodeID=250" target="main_right" ><img src="/App_Themes/UserThem/Images/ub19.gif" alt="全景展示" /></a></span>
<p onmouseover="this.className='Span2'" onmouseout="this.className='Span1'"  onclick="goforum_interaction3_18();"><a style="color:#1C5F85;" href="/User/Content/MyContent.aspx?NodeID=250" target="main_right">全景展示<span style="display:none"><%=lang.Get("u_Main_try")%></span></a></p>
</li>
<asp:Label ID="lblexp" runat='server' Visible="false"></asp:Label>  <!-- 博客论坛积分 -->
</ul>
</div>
<div id="leftMenu">
 <img src="Images/qu.png" style="vertical-align:middle"><font style="font:20px arial,sans-serif; font-family:华文新魏"><%=lang.Get("u_Main_insider")%></font><br />
<div id="divReplay" runat="server" style="padding-top:5px;"></div>
<a href="/user/iServer/FiServer.aspx"><img src="Images/QAb_14.gif" /></a><a href="/user/iServer/AddQuestion.aspx"><img src="Images/QAb_16.gif" /></a>
</div>
</form>
</body>
</html>