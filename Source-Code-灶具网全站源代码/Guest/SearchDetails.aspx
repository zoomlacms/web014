<%@ page language="C#" autoeventwireup="true" inherits="Guest_SearchDetails, App_Web_rffrteow" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE >

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>搜索详情</title>
    <link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <link href="../App_Themes/Guest/ask.css" rel="stylesheet" type="text/css" />
    <script src="../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="../JS/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
    <script type="text/javascript">
        function supplyment() {

            var div = document.getElementById("divSupplyment");
            if (div.style.display == "none") {
                div.style.display = "block";
            }
            else {
                div.style.display = "none";
            }
        }
        function reply() {

            var div = document.getElementById("styreply");


            if (div.style.display == "none") {
                div.style.display = "block";
            }
            else {
                div.style.display = "none";
            }
            //alert(div.style.display);
        }
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
            <span style="float: left; width: 397px;">您的位置：<a href="/">网站首页</a>>>&nbsp;<a href="Default.aspx">留言中心</a>>><a
                href="Ask.aspx">问答</a>>>&nbsp;<a href='SearchList.aspx?strwhere='>收索列表</a>>><a href="SearchDetails.aspx?ID=<%=Request["ID"]%>">收索详情</a>&nbsp;&nbsp;</span>
                <%-- <span style="float: right;
                    font-size: 20px"> <a href="Baike.aspx">百科</a> <a href="Default.aspx">留言</a> <a href="Ask.aspx">
                        问答</a></span>--%>
        </h1>
        <%--<div class="cart_lei" style="height: 70px">
            <ul style="color: #FFF; font-size: 20px; line-height: 40px; padding: 10px 0 0 16px;">
                <li style="float: left;"><b>逐浪问答</b></li>
                <li style="float: left">
                    <asp:TextBox runat="server" ID="txtAsk" Height="25" Width="300"></asp:TextBox>
                    <br />
                    <asp:Button runat="server" ID="btnSearch" Text="搜索答案" OnClick="btnSearch_Click" />&nbsp;
                    <asp:Button runat="server" ID="btnAsk" Text="我要提问" OnClick="btnAsk_Click" />&nbsp;
                    <asp:Button runat="server" ID="btnMyAsk" Text="我的提问" OnClick="btnMyAsk_Click" />&nbsp
                    <asp:Button runat="server" ID="btnAnswer" Text="我要回答" OnClick="btnAnswer_Click" />
                </li>
            </ul>
        </div>--%>
        <div class="cleardiv" style="height: 40px">
        </div>
        <div style="border-top: 2px solid #3171af; padding: 25px 0 10px 16px;">
            <div style="background: #8EC1EE; width: 965px;">
                <h1>
                    <span style="color: #fff; height: 30px; padding: 0 5px; float: right">提问者：<asp:Label
                        Style="color: #fff;" ID="username" runat="server"></asp:Label></span> <span style="color: #fff;
                            height: 30px; padding: 0 5px; float: right">提问日期：<asp:Label Style="color: #fff;"
                                ID="addtime" runat="server"></asp:Label></span></h1>
                <span style="color: #fff; height: 30px; padding: 0 5px;">问题：</span><br />
                <asp:Label ID="question" runat="server"></asp:Label><br />
                <span style="color: #fff; height: 30px; padding: 0 5px;">问题补充：</span><br />
                <asp:Label ID="supment" runat="server"></asp:Label>
            </div>
            <div id="g_show">
                <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
        <ItemTemplate>
          <h1><span>[回答者：<%#Eval("UserName")%>]<span style="float:right">回答日期：<%# Eval("AddTime")%></span></h1>
          <div class="g_show_txt"><%# Eval("Content")%> <div style=" float:right;color:red" id="Div1"><%#getstatus(Eval("Status","{0}"))%></div>
            <asp:Repeater runat="server" ID="Repeater2"  OnItemDataBound="Repeater2_ItemDataBound">
                            <ItemTemplate>  
                                <%--  <h1>
                                   <span style="float: right">追问时间:<%#Eval("Submitdate")%></span></h1>--%>
                                <div class="g_show_txt" id="content">
                                <div> &nbsp;&nbsp;&nbsp;追问：<%#Eval("Content")%></div>
                                <asp:Repeater runat="server" ID="Repeater3">
                                        <ItemTemplate> 
                                            <%--  <h1>
                                               <span style="float: right">追问时间:<%#Eval("Submitdate")%></span></h1>--%>
                                            <div class="g_show_txt" id="content">
                                              &nbsp;&nbsp;  回答：<%# Eval("Content")%></div>
                                           <%--  <h1>
                                                <span style="float: right">回答日期:<%#Eval("Answerdate")%></span></h1>--%> 
                         
                      </ItemTemplate>
                                    </asp:Repeater>  
                                 </div>
                               <%--  <h1>
                                    <span style="float: right">回答日期:<%#Eval("Answerdate")%></span></h1>--%>
                            </ItemTemplate>
                        </asp:Repeater>
                           
          </div> 
        </ItemTemplate>
      </asp:Repeater>
                
                 
        
             
                </div>
       <%--  <div style="display: none;" id="divSupplyment">
            <asp:TextBox runat="server" ID="txtSupplyment" CssClass="x_input" TextMode="MultiLine"
                Width="500" Height="120"></asp:TextBox></div>--%>
               <%--  <div style="width: 500px;">
        <span style="float: right; padding-top: 20px;">
           
    </div>--%>
            </div>
        </div>
      

    
    <!-- 版权信息 -->
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
    <asp:HiddenField runat="server" ID="hfsid" />
    </form>
</body>
</html>
