<%@ page language="C#" autoeventwireup="true" inherits="Guest_SearchList, App_Web_zrlcdh4i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>问题列表</title>
  <link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" /> 
    <link href="../App_Themes/Guest/editor.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/Guest/ask.css" rel="stylesheet" type="text/css" />
    <script src="../JS/jquery.js" type="text/javascript"></script>
    <%-- <script src="../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
      <script charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
  <script src="../JS/base.js" type="text/javascript"></script>
    <script src="../JS/Bkpopup.js" type="text/javascript"></script>
    --%>
    <%--<link href="/baike_editor/css/editor.css" rel="stylesheet" type="text/css">--%>
    <script type="text/javascript" src="/App_Themes/Guest/base.js"></script>
    <style type="text/css">
        .popb2
        {
            padding: 10px;
            line-height: 22px;
            font-size: 14px;
            width: 280px;
            height: 230px;
            margin: 0 auto;
        }
        #rempassItem
        {
            font-size: 12px;
            color: #F00;
            display: none;
        }
        .regButton
        {
            padding: 2px;
            height: 25px;
            width: 140px;
            margin: 10px 60px;
        }
        .f12
        {
            font-size: 12px;
        }
        #rgHandle
        {
            text-align: center;
            font-weight: bold;
        }
        .loginItem
        {
            width: 140px;
        }
        .abstract
        {
            font-size: 13px;
            font-family: Arial;
            line-height: 18px;
        }
        h2
        {
            font-size: 16px;
            font-weight: normal;
            line-height: 19px;
            margin: 0;
        }
        h2 a:link
        {
            color: #0000CC;
        }
        .fs
        {
            color: #008000;
            line-height: 18px;
            font-size: 13px;
            font-family: Arial;
        }
    </style>
    <style type="text/css">
        .f
        {
            line-height: 18px;
            padding-left: 0;
            width: auto;
        }
        .f
        {
            font-size: 100%;
            line-height: 120%;
            padding-left: 15px;
            width: 45em;
            word-wrap: break-word;
        }
        td
        {
            font-family: Arial;
            font-size: 9pt;
            line-height: 18px;
        }
        .mod-list .abstract
        {
            font-size: 13px;
        }
    </style>
    <style type="text/css">
        img.down-arrow
        {
            cursor: pointer;
            border: 1px solid #fff;
        }
        img.down-arrow-hover
        {
            cursor: pointer;
            border: 1px solid #999;
            background: #f7f7f7;
        }
        #nav_extra
        {
            width: 80px;
            font-size: 12px;
            text-align: left;
            padding-bottom: 2px;
            position: absolute;
            z-index: 65535;
        }
        #nav_extra a
        {
            font-size: 12px;
            color: #00c;
        }
        #nav_extra .top
        {
            width: 77px;
            height: 21px;
            font-size: 12px;
            line-height: 18px;
            text-indent: 5px;
            border: 1px solid #999;
            border-bottom: none;
            background: #fff;
            position: absolute;
            z-index: 65531;
        }
        #nav_extra .body
        {
            width: 77px;
            line-height: 18px;
            border: 1px solid #999;
            background: #fff;
            position: absolute;
            top: 20px;
            z-index: 65530;
        }
        #nav_extra .body a
        {
            width: 100%;
            height: 20px;
            display: block;
            line-height: 20px;
            text-indent: 5px;
        }
        #nav_extra .body a:hover
        {
            background: #e4e4e4;
        }
        #usrbar #my_home_container
        {
            padding: 0 7px 2px 5px;
        }
    </style>
<script type="text/javascript">
    function show() {
        var div = document.getElementById("show");
        if (div.style.display == "none") {
            div.style.display = "block";
        }
        // else {div.style.display = "none";}

    }
    function CheckDirty() {
        var oEditor = CKEDITOR.instances.TxtTContent;
        var value = oEditor.getData();
        var TxtTTitle = document.getElementById("TxtTTitle").value;
        var TxtValidateCode = document.getElementById("TxtValidateCode").value;

        if (value == "" || TxtTTitle == "" || TxtValidateCode == "") {
            if (value == "") {
                var obj = document.getElementById("RequiredFieldValidator1");
                obj.innerHTML = "<font color='red'>内容不能为空！</font>";
            }
            else {
                var obj = document.getElementById("RequiredFieldValidator1");
                obj.innerHTML = "";
            }
            if (TxtTTitle == "") {
                var obj2 = document.getElementById("RequiredFieldValidator2");
                obj2.innerHTML = "<font color='red'>留言标题不能为空！</font>";
            }
            else {
                var obj2 = document.getElementById("RequiredFieldValidator2");
                obj2.innerHTML = "";
            }
            if (TxtValidateCode == "") {
                var obj3 = document.getElementById("sp1");
                obj3.innerHTML = "<font color='red'>验证码不能为空！</font>";
            } else {
                var obj3 = document.getElementById("sp1");
                obj3.innerHTML = "";
            }
            return false;
        }
        else {
            var obj = document.getElementById("RequiredFieldValidator1");
            obj.innerHTML = "";
            var obj2 = document.getElementById("RequiredFieldValidator2");
            obj2.innerHTML = "";
            var obj3 = document.getElementById("sp1");
            obj3.innerHTML = "";
            document.getElementById("EBtnSubmit2").click();
        }
    }
    </script>
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
                <asp:TextBox runat="server" ID="txtAsk" onmouseover="this.focus()" 
                        autocomplete="off" class="searchinput" style="vertical-align:middle;"  
                        maxlength="100" tabindex="1"  value="" Width="243px"></asp:TextBox>
                         <asp:Button runat="server" ID="btnSearch" class="sub" Text=" "   
                        onclick="btnSearch_Click" /> 
                    <asp:Button runat="server" ID="btnAsk"  class="but" Text=" " 
                        onclick="btnAsk_Click" />  
                       <%-- <div style="display:none"><asp:Button  runat="server" ID="btnMyAsk" Text="我的提问" OnClick="btnMyAsk_Click"/></div>--%>
                    <asp:Button runat="server" ID="btnAnswer" class="answer" Text=""   
                        onclick="btnAnswer_Click" />
                    
                   
                    
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
<div id="main" class="rg_inout">
<h1>
<span style="float:left; width: 397px;" >您的位置：<a href="/">网站首页</a>>><a href="Default.aspx">留言中心</a>>><a href="Ask.aspx">问答</a>>><a href="SearchList.aspx?strwhere=">收索列表</a>&nbsp;&nbsp;</span>

</h1>
<%--<div class="cart_lei" style="height: 70px">
            <ul style="color: #FFF; font-size: 20px; line-height: 40px; padding: 10px 0 0 16px;">
                <li style="float: left;"><b>逐浪问答</b></li>
                <li style="float: left">
                    <asp:TextBox runat="server" ID="txtAsk" Height="25" Width="300"></asp:TextBox>
                    <br />
                    <asp:Button runat="server" ID="btnSearch" Text="搜索答案" 
                        onclick="btnSearch_Click" />&nbsp;
                    <asp:Button runat="server" ID="btnAsk" Text="我要提问" onclick="btnAsk_Click" />&nbsp;
                    <asp:Button  runat="server" ID="btnMyAsk" Text="我的提问" OnClick="btnMyAsk_Click"/>&nbsp
                    <asp:Button runat="server" ID="btnAnswer" Text="我要回答" 
                        onclick="btnAnswer_Click" />
                </li>
            </ul>
        </div>--%>
<%--<div class="cart_lei">
<ul style=" color:#FFF; padding-left:16px;">
<asp:Literal ID="LitCate" runat="server"></asp:Literal>分类查询：</b> <a href="Default.aspx">所有分类</a><asp:Repeater ID="Repeater1" runat="server"><ItemTemplate> <font color="red"> <%#GetDataItem()%>| </font> </ItemTemplate></asp:Repeater>
</ul>
</div>--%>
  <%--<table>
    <tr>
      <td><b>问题ID:</b>
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
      <td><b>问题内容:</b>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
      <td><asp:Button ID="Button1" runat="server"  Text="搜索" CausesValidation="False" onclick="Button1_Click" /></td>
    </tr>
  </table>--%>
  <div style="border-top: 2px solid #3171af; padding: 25px 0 10px 0;">
            <asp:Repeater runat="server" ID="repSearch">
                <ItemTemplate>
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tbody>
                            <tr>
                                <td class="f">
                                    <h2>
                                        <a target="_self" href="SearchDetails.aspx?ID=<%#Eval("ID")%>">
                                            <%#Eval("Qcontent")%></a>
                                    </h2>
                                    <div class="abstract">
                                        <%#getanswer(Eval("ID","{0}"))%>
                                    </div>
                                    <div class="fs">
                                        <%#Eval("AddTime", "{0:yyyy-MM-dd}")%>
                                        
                                            <%#Eval("UserName")%>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                </ItemTemplate>
            </asp:Repeater>
            <div style="text-align:center">共<asp:Label ID="AllNum" runat="server" Text=""></asp:Label>条记录
            <asp:Label runat="server" ID="Toppage"></asp:Label>
            <asp:Label runat="server" ID="Nextpage"></asp:Label>
            <asp:Label runat="server" ID="Downpage"></asp:Label>
            <asp:Label runat="server" ID="Endpage"></asp:Label>
            页次：<asp:Label ID="Nowpage" runat="server"></asp:Label>/<asp:Label ID="PageSize" runat="server" ></asp:Label>页<asp:Label ID="Lable1" runat="server"></asp:Label>条记录/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>页
             </div>
        </div>
    
  <!-- 版权信息 -->
  </div>

<div id="bottom">
<a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
<p>
<script language="javascript" type="text/javascript"> 
<!--
    var year = "";
    mydate = new Date();
    myyear = mydate.getYear();
    year = (myyear > 200) ? myyear : 1900 + myyear;
    document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp; <%Call.Label("{$SiteName/}"); %> All rights reserved.</p>
</div>

</form>
</body>
</html>
