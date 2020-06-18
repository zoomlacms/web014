<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_login, App_Web_d1ldudxt" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户登陆-<%Call.Label("{$SiteName/}"); %></title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../JS/ajaxrequest.js"></script>
<script type="text/javascript">
if (self != top) { top.location = self.location; }
function onfocus() {
    try {
     document.getElementById('TxtUserName').focus();
    }catch(Error){}
}
var sts = 3;//登陆后跳转等待时间;单位：秒
function sucse(s, url) {
    if (s == 1) {//成功
        document.getElementById("main_l").style.display = "none";
        document.getElementById("main_s").style.display = "";
        document.getElementById("sec").innerHTML = sts;
        setInterval(loacationgoto, 1000);
    }
    else {
        document.getElementById("main_l").style.display = "";
        document.getElementById("main_s").style.display = "none";
    }
}
function BtnTj() {
    var username = document.getElementById("TxtUserName");
    var userpass = document.getElementById("TxtPassword"); TxtValidateCode
    var TxtValidateCode = document.getElementById("TxtValidateCode");

    if (username.value == "") {
        username.focus();
        return false;
    }
    if (userpass.value == "") {
        userpass.focus();
        return false;
    }
    if (TxtValidateCode.value == "") {
        TxtValidateCode.focus();
        return false;
    }
}
</script>
<style>#btnLogin{ float:left;}</style>
<link href="<%Call.Label("{$CssDir/}"); %>school.css" rel="stylesheet" type="text/css" />
 </head>
<body onload="onfocus();" onresize="resize()" class="u_body">
<div id="u_head_box">
<div id="u_head">
<div class="u_logo"><a href="/"><img src="<%Call.Label("{$CssDir/}"); %>images/logo.gif" alt="<%Call.Label("{$SiteName/}"); %>" /></a></div>
<span><a href="/">返回首页</a> <a href="/Item/131.aspx" target="_blank">帮助</a></span>
<div class="clear"></div>
</div>
</div>
<div class="center">
<div id="u_center">
<form id="form" runat="server">
<ul>
 <li><asp:Label ID="lblUser" runat="server" Text="用户名："></asp:Label>
<asp:TextBox ID="TxtUserName" runat="server" style="width:100px; border:#CCC solid 1px; background:#ccc;"  CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox><a href="Register.aspx">点此注册?</a></li>
<li>密　码：<asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" style="width:100px; margin-left:3px; border:#CCC solid 1px; background:#ccc;"  CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox><a href="/User/GetPassword.aspx">忘记密码？ </a></li>
<li style=" display:none">
    <div class="reg_put" id="trVcodeRegister" visible="false" runat="server" >
    验证码：<asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:140px; margin-left:20px ;border:#CCC solid 1px;" CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Text="sdfsdf"></asp:TextBox>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />                
 </div></li>
 <li><input type="checkbox" name="checkbox" checked="checked" id="checkbox" style="margin-left:18px" />记住登录
<asp:HyperLink ID="hlReg" runat="server"  NavigateUrl="~/User/login.aspx?RegID=1">Email登录</asp:HyperLink> </li>
<div class="clear"></div>
 
<li><asp:Button ID="btnLogin" CssClass="i_bottom" OnClientClick="return BtnTj();" runat="server" Text="" onclick="btnLogin_Click" /> <input type="reset" name="button" id="reset" value=" "></li>
<li style="margin-top:25px; padding-left:100px; display:none">如果您尚未在本站注册为用户，请先点击。</li>
</ul></div>
<div class="clear"></div>
</div><!-- center end -->

<div id="main_s" style="display:none">
<ul>
<li style="color:green; font-size:14px; font-weight:bold">欢迎您！登陆成功</li>
 <li style="margin-top:25px;">系统将在 <span id="sec">3</span> 秒后自动跳转到<a href="Default.aspx">会员首页</a></li>
</ul>
</div>

  <div  id="alipayDIV" style=" display:none">
<br /><label id="AppTitle" runat="server">第三方登录平台</label>
<br />        
                <asp:LinkButton ID="appSina" runat="server" Style="background-image: url('../App_Themes/AdminDefaultTheme/images/Sina.png');
                background-repeat: no-repeat;" OnClick="appSina_Click">　 新浪</asp:LinkButton>
                <asp:LinkButton ID="appQQ" runat="server" Style="background-image: url('../App_Themes/AdminDefaultTheme/images/QQ.png');
                background-repeat: no-repeat;" OnClick="appQQ_Click">　 QQ</asp:LinkButton>
                <asp:LinkButton ID="appBaidu" runat="server" style="background-image:url('../App_Themes/AdminDefaultTheme/images/Baidu.png');background-repeat:no-repeat;"  OnClick="appBaidu_Click">　 百度</asp:LinkButton>
                 <asp:LinkButton ID="appKaiXin" runat="server"  style="background-image:url('../App_Themes/AdminDefaultTheme/images/Kaixin.png');background-repeat:no-repeat;"
          onclick="appKaiXin_Click1" >　 开心</asp:LinkButton>
                 <asp:LinkButton ID="appRenRen" runat="server" style="background-image:url('../App_Themes/AdminDefaultTheme/images/Renren.png');background-repeat:no-repeat;"
          onclick="appRenRen_Click1" >　 人人</asp:LinkButton>
                <asp:LinkButton ID="appNetease" runat="server" style="background-image:url('../App_Themes/AdminDefaultTheme/images/Netease.png');background-repeat:no-repeat;"
          onclick="appNetease_Click1" >　 网易</asp:LinkButton>

</div>
</form>
<div id="main_r" style="display:none">
<h2>登陆会员中心您将获得：</h2>
<ul>
<li>自由发布信息</li>
<li>查看积分与管理空间</li>
<li>设定您的个性化空间</li>
<li>提交您的需求为您服务</li>
<li>购物支付多彩商务体验</li>
<li>专业的用户中心引领E时代！</li>
</ul>
</div><div class="clear"></div>
</div><!--main end -->

<div id="bottom" style="display:none">
<a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
<p>
<script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp; <%Call.Label("{$SiteName/}"); %> All rights reserved.</p>
</div>
</body>
</html>