<%@ page language="C#" autoeventwireup="true" inherits="Guest_baiclassification, App_Web_rffrteow" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >

<html >
<head runat="server">
    <title>百科词条分类</title>
    <link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
    <link rel="stylesheet" href="/App_Themes/Guest/baike.css" type="text/css" media="screen"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="s_page">
		<!--head-->
		<div id="s_header">
			 
		<div id="s_search" class="wa_mode" wa_mode="top.search">
	<h1 id="s_logo">
		<a href="/Guest/Baike.aspx" title="到<%Call.Label("{$SiteName/}"); %>百科首页"><img width="150" src="<%Call.Label("{$LogoUrl/}"); %>" alt="到<%Call.Label("{$SiteName/}"); %>百科首页" /> </a>
	</h1> 
<div style="display:none;"><input type="hidden" name="formids" value="searchText,enterLemma,searchLemma"/>
<input type="hidden" name="submitmode" value=""/>
<input type="hidden" name="submitname" value=""/>
</div>
<div class="s_search_form">
<asp:TextBox ID="txtAsk" Height="25" Width="300" showHelp="true" maxlength="100" class="search_input" autocomplete="off" runat="server"></asp:TextBox>
<asp:Button runat="server" ID="btnEnter" Text="进入词条" onclick="btnEnter_Click"  class="search_bt" /> 
<asp:Button runat="server" ID="btnSearch" Text="搜索词条"   onclick="btnSearch_Click" class="ask_bt" /> 
</div> 
<div id="divc" class="smartbox"  style="visibility: hidden;"></div>
</div>
</div>
<!--main--> 
<div id="container"> 
<div id="nav"><ul class="tittleul"><li><a href="Baike.aspx">首页</a></li>
     <li><a href="baiclassification.aspx?tittle=自然">自然</a></li>
    <li><a href="baiclassification.aspx?tittle=文化">文化</a></li>
    <li><a href="baiclassification.aspx?tittle=地理">地理</a></li>
    <li><a href="baiclassification.aspx?tittle=历史">历史</a></li>
    <li><a href="baiclassification.aspx?tittle=生活">生活</a></li>
    <li><a href="baiclassification.aspx?tittle=社会">社会</a></li>
    <li><a href="baiclassification.aspx?tittle=艺术">艺术</a></li>
    <li><a href="baiclassification.aspx?tittle=人物">人物</a></li>
    <li><a href="baiclassification.aspx?tittle=经济">经济</a></li>
    <li><a href="baiclassification.aspx?tittle=科技">科技</a></li>
    <li><a href="baiclassification.aspx?tittle=体育">体育</a></li>
    </ul>
    </div>
   <div><asp:Repeater runat="server" ID="Classification">
   <ItemTemplate> 
  <table cellspacing="0" cellpadding="0" border="0">
    <tbody>
    <tr ><td><h2><a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank"><%#Eval("Tittle")%></a></h2>
    <div><%#NoHTML(Eval("Contents").ToString()) %>...</div>
    <div><%#Eval("AddTime","{0:yyyy-MM-dd}") %><%#Eval("UserName") %></div>
    </td>
    </tr>
    </tbody>
  </table>
   </ItemTemplate>
   </asp:Repeater></div>
   <asp:Literal runat="server" ID="createbaike" Visible="false"></asp:Literal>
  </div>
  
   <div style="text-align:center;">共<asp:Label ID="AllNum" runat="server" Text=""></asp:Label>条记录
            <asp:Label runat="server" ID="Toppage"></asp:Label>
            <asp:Label runat="server" ID="Nextpage"></asp:Label>
            <asp:Label runat="server" ID="Downpage"></asp:Label>
            <asp:Label runat="server" ID="Endpage"></asp:Label>
            页次：<asp:Label ID="Nowpage" runat="server"></asp:Label>/<asp:Label ID="PageSize" runat="server" ></asp:Label>页<asp:Label ID="Lable1" runat="server"></asp:Label>条记录/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"></asp:DropDownList>页
           </div>
           <div id="main" class="rg_inout"> 
            <p style="text-align:center">
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
    </form>
</body>
</html>
