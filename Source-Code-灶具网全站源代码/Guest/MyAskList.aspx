<%@ page language="C#" autoeventwireup="true" inherits="Guest_MyAskList, App_Web_rffrteow" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE >

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>问题列表</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <link href="../App_Themes/Guest/ask.css" rel="stylesheet" type="text/css" />
<script src="../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
<script src="../JS/jquery.js" type="text/javascript"></script>
<script charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<style  type="">
 #divshap{ position:absolute; width:100%; height:100%; background:#ccc;  filter:alpha(opacity=50); -moz-opacity:0.5; -khtml-opacity: 0.5; opacity:0.5;margin:0 auto;text-align:center; line-height:200px;z-index:999px;}
  #divshap strong{ z-index:2; font-size:14px; color:#f00;}
</style>
<script type="text/javascript">
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
<span style="float:left; width: 397px;" >您的位置：<a href="Ask.aspx">网站首页</a>>><a href="Default.aspx">留言中心</a>>><a href="Ask.aspx">问答</a>>><a href="MyAskList.aspx?QueType=">我的问题列表</a>&nbsp;&nbsp;</span>
<%-- <span  style="float:right; font-size:20px">
<a href="Baike.aspx" >百科</a> 
<a href="Default.aspx">留言</a>
<a href="Ask.aspx">问答</a></span>--%>
</h1>
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
    <div class="cleardiv"></div>
    <asp:GridView ID="Gdv" DataKeyNames="ID"  
        runat="server" AutoGenerateColumns="False" PageSize="20"  Width="99%" >
      <Columns>
      <asp:BoundField DataField="ID" HeaderText="序号">
        <ItemStyle  CssClass="tdbg" />
        <HeaderStyle Width="5%" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="内容">
        <ItemTemplate> <a href="Interactive.aspx?ID=<%# Eval("ID")%>"><%# Eval("Qcontent")%></a> </ItemTemplate>
        <ItemStyle  CssClass="tdbg"/>
        <HeaderStyle Width="25%" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="类别">
        <ItemTemplate> <a href="MyAskList.aspx?QueType=<%# Eval("QueType")%>"><%#gettype(Eval("QueType","{0}"))%></a></ItemTemplate>
        <ItemStyle  CssClass="tdbg"  />
        <HeaderStyle Width="10%" />
      </asp:TemplateField>
      </Columns>
      <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle CssClass="tdbg" ForeColor="Black"  />
      <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#000" BorderStyle="None" Height="30px" Font-Overline="False" />
      <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <table Width="100%">
      <tr class="tdbg">
        <td height="22" colspan="9"  class="tdbgleft"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          条记录
          <asp:Label ID="Toppage" runat="server" Text="" />
          <asp:Label ID="Nextpage" runat="server" Text="" />
          <asp:Label ID="Downpage" runat="server" Text="" />
          <asp:Label ID="Endpage" runat="server" Text="" />
          页次：
          <asp:Label ID="Nowpage" runat="server" Text="" />
          /
          <asp:Label ID="PageSize" runat="server"
                        Text="" />
          页
          <asp:Label ID="pagess" runat="server" Text="" />
          条记录/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
          页 </td>
      </tr>
    </table>

  </div>
  <!-- 版权信息 -->

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
<script  type="text/javascript">
    function show() {
        var div = document.getElementById("show");
        if (div.style.display == "none") {
            div.style.display = "block";
        }
    }

</script>
