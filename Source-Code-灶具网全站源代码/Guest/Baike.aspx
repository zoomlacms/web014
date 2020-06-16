<%@ page language="C#" autoeventwireup="true" inherits="Guestbook_BkSearch, App_Web_rffrteow" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="save" content="history"/>
<meta baike="203"></meta>
<meta content="百科 逐浪 CMS Zoomla 首页" name="keywords"></meta>
<meta content="逐浪知识百科，提供百科服务/知识搜索服务。" name="description"></meta>
<title>逐浪百科</title> 
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
<script src="../JS/jquery.js" type="text/javascript"></script>
<!-- common css definition -->
<link rel="stylesheet" href="/App_Themes/Guest/baike.css" type="text/css" media="screen"/>
 <!-- common js definition -->
<script language="JavaScript" type="text/javascript">
    document.domain = 'soso.com';
</script>
 <script type="text/javascript" src="http://cache.zoomla.cn/wenwen/js/wenwen_201004081444.js"></script>
 
<link rel="Shortcut Icon" href="http://baike.zoomla.cn/favicon.ico"/>
<link rel="Bookmark" href="http://baike.zoomla.cn/favicon.ico"/>
<script type="text/javascript" src="http://wenwen.zoomla.cn/js/form/Form.js"></script>
</head> 
<body onload="if((typeof sbjl=='undefined')||!sbjl.hasNS('proto')) mark(document.body);">
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
<div class="L1">
    <!-- 特色词条 -->
    <span ch="bk1">
    <asp:Repeater ID="Repeater8" runat="server">
        <ItemTemplate>
        <div class="tod_int2">
        <div class="tod_int2_m">
        <a href="/v28762.htm" target="_blank"><img src="http://pic.baike.zoomla.cn/p/20120810/bki-20120810123653-802421712.jpg" border="0" /></a>
    <div class="r">
    <h2>特色词条： <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank" ><%#Eval("Tittle")%></a> </h2>
    <p class="wordbreak">
    <%#Eval("Contents","{0}").Substring(0,20)%>
    </p>
    <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>"  target="_blank">阅读全文&gt;&gt;</a>
    </div>
    </div>
    </div>
    </ItemTemplate></asp:Repeater>
    </span>
    
 <div class="entry4">
			<h3 class="entry_tit4"><span class="ft_l">词条分类</span><a href="#" target="_blank" class="ft_r">更多&gt;&gt;</a></h3>
		
         <asp:Repeater ID="Repeater1" runat="server"  OnItemDataBound="Repeater1_ItemDataBound">
          <ItemTemplate>
    <dl>  <dt><a href="BkSearch.aspx?Gtype=<%#Eval("GradeID") %>" title="<%#Eval("GradeName") %>"><%#Eval("GradeName") %></a></dt>
        <dd> 
        <asp:Repeater ID="Repeater2" runat="server">
        <ItemTemplate>
        <a href="BkSearch.aspx?Gtype=<%#Eval("GradeID") %>" title="<%#Eval("GradeName") %>"  onclick="clickTag(this); return false;"><%#Eval("GradeName") %></a>
        </ItemTemplate>
        </asp:Repeater> 
        </dd>
        </dl>
        </ItemTemplate>
        </asp:Repeater>        
		<div class="k"></div>
		</div>
		 <!-- 每日图片 -->
		<span ch="bk3"><div class="entry3 ft_l"><h3 class="entry_tit3">每日图片</h3>
        <div class="entry_con3">
        <asp:Repeater runat="server" ID="picture" >
        <ItemTemplate>
        <div class="entry_con3">
        <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank"><img src="http://pic.baike.zoomla.cn/p/20120810/bki-20120810125323-1670790846.jpg" border="0" /></a>
        <div class="r">
        <h4 ><a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank"><%#Eval("Tittle")%></a> </h4><br />
        <p class="wordbreak">
        <%#Eval("contents","{0}").Substring(0,8)%></p><br />
        <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank">查看全部&gt;&gt;</a>
        </div>
        </div>
        </ItemTemplate>
        </asp:Repeater>
        </div></div></span>
		
		<span ch="bk4"><div class="entry3 ft_r"><h3 class="entry_tit2"><span class="ft_1">你知道吗</span></h3>
        <ul class="entry_con9" ch="bk6">
        <asp:Repeater runat="server" ID="Youkown">
        <ItemTemplate>
          <li>
         <span style="float:right"><a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString())%>" target="_blank"> 详情</a></span>
          <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString())%>" target="_blank"><%#Eval("Tittle")%></a>:<%#Eval("Brief")%>
          </li>
        </ItemTemplate>
        </asp:Repeater>
        </ul></div></span>
		
		<div class="k"></div>
		<!-- 优质词条 -->
		<span ch="bk5"><div class="entry9 ft_l" ><h3 class="entry_tit8"><span class="ft_l">优质词条</span>
        <a href="#" class="ft_r">更多&gt;&gt;</a></h3>
        <asp:Repeater ID="Repeater4" runat="server">
        <ItemTemplate>
        <div class="entry_con3">
        <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank"><img src="http://pic.baike.zoomla.cn/p/20120810/bki-20120810125323-1670790846.jpg" border="0" /></a>
        <div class="r">
        <h4 ><a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank"><%#Eval("Tittle")%></a> </h4><br />
        <p class="wordbreak">
        <%#Eval("contents","{0}").Substring(0,3)%></p><br />
        <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank">查看全部&gt;&gt;</a>
        </div>
        </div>
        </ItemTemplate>
        </asp:Repeater>
        </div></span> 
		<div id="imperfect" class="entry9 ft_r">
	
    <span ch="bk5"><div class="entry_tit9">
		<ul>
			<li class="current">待完善词条</li>
			<li><a onclick="showToBeCreated_OnClick()">待创建词条</a></li>
		</ul>
		<a href="/InCompletes.htm?ch=bk6" class="more" target="_blank">更多&gt;&gt;</a>
	</div>
	<ul class="entry_con9" ch="bk6"> 
     <asp:Repeater ID="Repeater6" runat="server" >
        <ItemTemplate>
        	<li><span>10分钟前</span>  <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank" title="<%#Eval("Tittle")%>"><%#Eval("Tittle")%></a> 
			</li>
        </ItemTemplate>
        </asp:Repeater>   
	</ul>
</div></span>

<div id="toBeCreated" class="entry9 ft_r" style="display:none">
	<div class="entry_tit9">
		<ul>
			<li><a onclick="showImperfect_OnClick()">待完善词条</a></li>
			<li class="current">待创建词条</li>
		</ul>
		<a href="/ToBeCreated.htm?randomPageIdx=1&ch=bk6" class="more" target="_blank">更多&gt;&gt;</a>
	</div>
	<ul class="entry_con11" ch="bk6">
		<asp:Repeater ID="Repeater7" runat="server" >
        <ItemTemplate>
        	<li> <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank" ><%#Eval("Tittle")%></a> 
			</li>
        </ItemTemplate>
        </asp:Repeater>    		
	</ul>
</div>

<span>
<div id="showday" class="entry9 ft_l"><div class="entry_tit9"><ul><li><a href="#" onclick="showday()">人物百科</a></li></ul>
<a href="baiclassification.aspx?tittle=人物" class="more" target="_blank">更多&gt;&gt;</a></div>
<ul class="entry_con9" ch="bk6">
<asp:Repeater runat="server" ID="mans">
    <ItemTemplate>
     <li>
         <span style="float:right"><a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString())%>" target="_blank"> 详情</a></span>
          <a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString())%>" target="_blank"><%#Eval("Tittle")%></a>:<%#Eval("Brief")%>
          
      </li>
    </ItemTemplate>
</asp:Repeater>
</ul>
</div>    
</span>

<div id="Div1" class="entry9 ft_r"><div class="entry_tit9"><a href="#" onclick="showday()">历史上的今天</a></div>

</div>    

<script type="text/javascript">
    function showDiv(id) {
        var div = document.getElementById(id);
        if (div)
            div.style.display = 'block';
    }

    function hideDiv(id) {
        var div = document.getElementById(id);
        if (div)
            div.style.display = 'none';
    }

    function showToBeCreated_OnClick() {
        hideDiv('imperfect');
        showDiv('toBeCreated');
    }

    function showImperfect_OnClick() {
        hideDiv('toBeCreated');
        showDiv('imperfect');
    }

    function showday() {
        var m = new Date();
        var mon = m.getMonth()+1;
        var day = m.getDate()
        var today = mon + "月" + day + "日";
        window.open("BkDetails.aspx?soure=user&tittle=" + today, 'newwindow', "", "");
    }
</script>
	<div class="k"></div>
  </div>
  <div class="R1">
		<a  href="CreatBaike.aspx"><div class="bt2" title="创建词条"><div class="inner_bt2"><div class="icon23_1"></div>创建词条</div></div></a>
		<!-- 
		<span jwcid="@If" condition="prop:hasRecommendTag"><span jwcid="@Insert" value="prop:randomRecommendTag" raw="ognl:true"/></span>
		<span jwcid="@Else">
		<div class="entry10"><h3 class="entry_tit10">百科一直在进步</h3>
		<ul class="entry_con10">
			<li>&#8226;&nbsp;&nbsp;温家宝主持国务院会议&nbsp;<span class="gray">05-06</span></li>
			<li>&#8226;&nbsp;&nbsp;温家宝主持国务院会议&nbsp;<span class="gray">05-06</span></li>
			<li>&#8226;&nbsp;&nbsp;温家宝主持国务院会议&nbsp;<span class="gray">05-06</span></li>
			<li>&#8226;&nbsp;&nbsp;温家宝主持国务院会议&nbsp;<span class="gray">05-06</span></li>
			<li>&#8226;&nbsp;&nbsp;温家宝主持国务院会议&nbsp;<span class="gray">05-06</span></li>
		</ul>
		</div>
		</span>
		 -->
		 
		<%--<div class="bk_olympic">
        	<a href="http://2012.qq.com/baike/" target="_blank"><img src="http://cache.zoomla.cn/baike/i/bk_olympic.png" width="210" height="135" /></a>
        </div>--%>
        
		<span ch="bk7"><div class="entry6"><h3 class="entry_tit6">新闻动态</h3><ul class="entry_con6">
        <asp:Repeater runat="server" ID="Latestrnews">
        <ItemTemplate>
        <li>
           <span style="float:right"><%#Eval("CreateTime","{0:MM-dd}") %></span> <a href="#" onclick="shownews(<%#Eval("GeneralID") %>)"><%#Eval("Title") %></a>
        </li>
        </ItemTemplate>
        </asp:Repeater>
        </ul></div></span>
		
		<span ch="bk8"><div class="entry7"><h3 class="entry_tit7">关注事件</h3>
        <ul class="list6">
         <asp:Repeater ID="Repeater3" runat="server" >
        <ItemTemplate>
        <li><span class="l"><span class="strong"><%#Container.ItemIndex+1 %></span><a href="BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank"><%#Eval("Tittle")%></a></span><div class="icon18_1"></div></li>
        </ItemTemplate>
        </asp:Repeater>  
        </ul></div></span>
		
        <!--add by clare-->
         <div class="sideColumnWrap">
             <div class="titleWrap">
             	<%--<a class="ft_r" href="/ExpWeekList.htm">全部&gt;&gt;</a>--%>
               	<h3>上周经验飙升榜</h3>
              </div>
                    <div class="sideColumnList">
                    <asp:Repeater ID="Repeater5" runat="server" >
        <ItemTemplate>
        <div> <span class="rankNum top"><%#Container.ItemIndex+1 %></span>
                            <span class="userName"><span class="icoWrap"></span>
<a target="_blank" class="" href="/ShowList.aspx?id=<%#Eval("UserID") %>"><%#Eval("UserName") %></a>
</span>
                            <span class="expValue"><%#Eval("UserExp") %></span>
 						</div>
        </ItemTemplate>
        </asp:Repeater>  
                       
                    </div>
        </div>
  </div>
<div class="k"></div>
<script language="JavaScript">
    function shownews(obj) {
        var link = "/Item/" + obj + ".aspx";
        window.open(link,'newwindow',"","");
    }
    function clickTag(a) {
        var tagName = a.innerHTML;
        var link = "/ShowCategory.e?sp=S" + encodeURIComponent(tagName) + '&ch=bk2';
        window.open(link);
    }
</script>

			</div>
		
		<!--footer-->
		<div id="s_footer" class="wa_mode" wa_mode="soso.footer">
		    
			    <ul id="s_service">
					<li><a href="#" onclick="if(Zhishi.Browser.isIE){this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.zoomla.cn/');}">设逐浪为主页</a></li>
					<li><a href="#" >搜索推广</a></li>
					<li><a href="http://help.zoomla.cn/duty.html" target="_blank">免责声明</a></li>
					<li><a href="http://www.zoomla.cn/" target="_blank">关于逐浪</a></li>
					<li><a href="http://baike.zoomla.cn/v9657934.htm" target="_blank">帮助</a></li>
					<li><a href="http://support.qq.com/cgi-bin/beta2/titlelist_simple?pn=0&order=3&fid=373" target="_blank">提意见</a></li>
				</ul>
			 <!-- 版权信息 -->
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
	</div> 
	<script type="text/javascript" src="http://cache.zoomla.cn/baike/js/baike_201206060916.js"></script>
	<script type="text/javascript" src="http://cache.zoomla.cn/baike/js/base_201205120826.js"></script>
	<script type="text/javascript" src="http://cache.zoomla.cn/baike/js/sb_new_201205171546.js"></script>
	<script type="text/javascript" src="http://cache.zoomla.cn/baike/js/main_201001251219.js"></script>
	<script language="JavaScript" type="text/javascript" src="http://cache.zoomla.cn/js/an.js"></script>
	<script type="text/javascript">	    Zhishi.Login.init('s_user');</script>


<script language="JavaScript" type="text/javascript"><!--
    Tapestry.register_form('sf');
    Tapestry.onsubmit('sf', function (event) { Tapestry.require_field(event, 'searchText', '请输入内容！'); });
    Tapestry.set_focus('searchText');

// --></script> 
       
    </form>
</body>
</html>
