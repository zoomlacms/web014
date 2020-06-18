<%@ page language="C#" autoeventwireup="true" inherits="Guest_AskSuccess, App_Web_zrlcdh4i" enableEventValidation="false" viewStateEncryptionMode="Never" %> 
<!DOCTYPE > 
<html >
<head runat="server">
    <title>逐浪知道——成功提示</title>
    <script src="../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <link href="../App_Themes/Guest/ask.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <div class="top">
        <div class="topnav" id="toptab">
            <div class="topleft">
                <a href="javascript:void(0)" onclick="SetHomepage()">设为首页</a>
                <a href="javascript:void(0)" onclick="addfavorite()">收藏本站</a>
            </div>
        </div>
    </div>
    <div class="header">
        <div class="h_top">
            <div class="logo" >
                <a href="/guest/Ask.aspx" title="问答系统" target="_top"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>问答系统" /> </a>
            </div>
            <div class="userbar">
 <div class='hyn'  style="<%=getstyle()%>"> 
  您好！<font style="text-decoration: underline"><asp:Label runat="server"  ID="user"></asp:Label></font><a href="MyAskList.aspx?QueType=">我的提问</a> <a href="MyAnswerlist.aspx">我的回答</a>[<a href="<%=ResolveUrl("~/User/logout.aspx") %>?url=/Guest/Ask.aspx">退出登陆</a>]</div>
  <hr /><div  class="hyn" style="<%=getstyles()%>">欢迎来Zoomla问答系统！[<a  href='/User/Login.aspx?ReturnUrl=/Guest/Ask.aspx'>请登录</a>] [<a  href="/user/register.aspx">免费注册</a>]</div>
                        
                                   

            </div>
            <div class="clr"></div>
        </div>
        <div class="h_mid">
            <div class="h_mid_l"> </div>
<div id="tdh" class="h_mid_m">
<span id="Mlist" >
<a href="Baike.aspx" >百科</a> | 
<a href="Default.aspx">留言</a> | 
<a href="Ask.aspx">问答</a></span>
<ul> 
<li class="on" > <a title="问答首页" href="/Guest/Ask.aspx"  >问答首页</a>  </li>  
<li  > <a title="知识专题" href="http://help.Zoomla.cn/?category/recommend.html"  >知识专题</a> </li> 
<li  > <a title="问答之星" href="http://help.Zoomla.cn/?user/famouslist.html"  >问答之星</a> </li> 
<li  > <a title="问答专家" href="http://help.Zoomla.cn/?expert/default.html"  >问答专家</a> </li> 
<li  > <a title="分类大全" href="http://help.Zoomla.cn/c-all.html"  >分类大全</a></li> 
<li  ><a title="标签大全" href="http://help.Zoomla.cn/?index/taglist.html"  >标签大全</a></li>    
</ul>
</div>
<div class="h_mid_r"></div>
</div>
<div class="clr"></div>
<div class="h_b">
<div class="h_b_l"></div>
<div class="h_b_m">
            <div class="question_count">
                                    <span class="count">最佳回答采纳率:</span><span class="adopt">67.53%</span><br/>
                <span class="count">已解决问题数:</span><span class="countques">156</span><br/>
                <span class="count">待解决问题数:</span><span class="countques">75</span>
            </div>
                <div class="h_b_input">   
                <asp:TextBox runat="server" ID="txtAsk" onmouseover="this.focus()"  autocomplete="off" class="searchinput" style="vertical-align:middle;"  maxlength="100" tabindex="1"  value="" Width="243px"></asp:TextBox>
                         <asp:Button runat="server" ID="btnSearch" class="sub" Text=" " onclick="btnSearch_Click" /> 
                    <asp:Button runat="server" ID="btnAsk"  class="but" Text=" " onclick="btnAsk_Click"   />  
                       <%-- <div style="display:none"><asp:Button  runat="server" ID="btnMyAsk" Text="我的提问" OnClick="btnMyAsk_Click"/></div>--%>
                    <asp:Button runat="server" ID="btnAnswer" class="answer" Text="" onclick="btnAnswer_Click"  /> 
                    
                </div>
            <div class="sybz"><a href="http://help.Zoomla.cn/?index/help.html" title="帮助" target="_blank">使用<br/>帮助</a></div>
            <div class="tongji">
                <div id="move">
                                            <span class="count">当前在线:</span>17人<br/>
                                            <span class="count">注册用户:</span>9150人<br/>
                </div>
            </div>
            <div class="clr"></div>
    </div>
        <div class="h_b_r"></div>

    </div>
    <div class="clr"></div>
</div>
<div ID="mysite"> <a href="Ask.aspx">知道首页</a> >><a href="AskSuccess.aspx?ID=<%=Request["ID"]%>"> 成功提示</a></div>

  <div class="rg_inout msg" id="main">
 
<h2 class="f-yahei">
您的问题我们已经收到！请耐心等待网友的回答：）</h2>
<div class="submit-fallback"><h3 class="f-yahei">知恩图报，别忘了及时推荐为满意回答哦~</h3><a   href="MyAskList.aspx?ID=<%=Request["ID"]%>&QueType=" title="查看问题">好，一定</a> </div>
 
</div>
<div id="bottom">
        <a href="/">
            <img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
        <p>
            <script language="javascript" type="text/javascript"> 
<!--
                var year = "";
                mydate = new Date();
                myyear = mydate.getYear();
                year = (myyear > 200) ? myyear : 1900 + myyear;
                document.write(year); 
--> 
            </script>
            &copy;&nbsp;Copyright&nbsp;
            <%Call.Label("{$SiteName/}"); %>
            All rights reserved.</p>
    </div>
 <!-- 版权信息 -->
    
</form>
</body>
</html>
<script type="text/javascript">
    function show() {
        var div = document.getElementById("show");
        if (div.style.display == "none") {
            div.style.display = "block";
        }
    }

</script>
    