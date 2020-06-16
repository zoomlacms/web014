﻿<%@ page language="C#" autoeventwireup="true" inherits="t_Fans, App_Web_o3rszhzq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>人气推荐</title>
<link href="../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<SCRIPT src="/js/jquery.js" type=text/javascript></SCRIPT>
<SCRIPT src="/js/artZoom.js" type=text/javascript></SCRIPT>
<script src="/JS/ajaxrequest.js"></script>
<script src="/JS/Microb.js"></script>
<style>
.addAttention{ float:right;}
</style>
</head>
<body>
  <form id="form1" runat="server">
    <div id="warp">
        <div id="warp_l">
            <div id="warp_write">
            </div>
            <!--顶部白色撑下来 -->
            <div id="warp_ltop">
            </div>
            <div class="warp_lbg">
                <div id="reg_l">
                    <div><asp:Image ID="userface" runat="server" /></div>
                    <div>
                        <font class="warp_d"><a href="UserInfo/info_Jiben.aspx">
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label></a></font><br />
                        <font class="font1">
                            <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></font>
                    </div>
                    <br />
                </div>
                <div class="gan_k">
                    <p class="p1">
                        <font class="gok"><a href="Attation.aspx?Type=0">
                            <asp:Literal ID="Attention" runat="server"></asp:Literal></a></font><br />
                        <a href="Attation.aspx?Type=0">关注</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="Attation.aspx?Type=1">
                            <asp:Literal ID="Fans" runat="server"></asp:Literal></a></font><br />
                        <a href="Attation.aspx?Type=1">粉丝</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="UserInfo/info_MyWeibo.aspx">
                            <asp:Literal ID="Allnum" runat="server"></asp:Literal></a></font><br />
                        <a href="UserInfo/info_MyWeibo.aspx">微博</a>
                    </p>
                </div>
                <div class="lin">
                </div>
                <div id="mobil" style="display:none">
                    <a href="">绑定手机上微博 随时随地看微博</a></div>
                <div class="nav">
                </div>
            </div>
            <div class="warp_lbot">
            </div>
            <div id="search">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" 
                        ImageUrl="../App_Themes/Microblog/images/s_b.jpg" 
                        onclick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
             <div class="wrap01_tit">
                <span>24小时活跃用户</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font><br />
                                    <%#GetRemark(Eval("Remark","{0}"))%><br />
                                    <%#GetLastMob(Eval("UserID","{0}")) %><br />
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="wrap02_bottom">
                </ul>
            </div>
            <div class="clear">
            </div>
            <div class="wrap01_tit">
                <span><a href="#">大家关注的主题</a></span></div>
            <div class="wrap02_content">
                <ul>
                <asp:Repeater ID="repTheme" runat="server">
                    <ItemTemplate>
                      <li><%#Eval("ThemeCon") %>(<%#Eval("TopicNum")%>)</li>
                    </ItemTemplate>
                </asp:Repeater>
                </ul>
                <span><a href="Topic.aspx">更多关注主题.....</a></span>
            </div>
            <div class="wrap02_bottom">
            </div>
             <div class="wrap01_tit">
                <span>人气推荐 top10</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                      <li><img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>"><%#Eval("UserName") %></a></font>
                                     <div style="margin-top:5px"><%#GetAttion(Eval("Userid","{0}")) %></div>
                                </span></li>
                    </ItemTemplate>
                </asp:Repeater>
                </ul>
                 <span style="float:right;margin-right:10px;"> <a href="/t/Fans.aspx">更多人气推荐...</a></span>
                <ul class="wrap02_bottom">
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="warp_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="Content.aspx">者吧首页</a></li>
                        <li><a href="Topic.aspx">主题者吧</a></li>
                        <li><a href="TongCheng.aspx">同城者吧</a></li>
                        <li><a href="blogLiving.aspx">直播室</a></li>
                        <li><a href="/t/MyMicrob.aspx">我的首页</a></li>
                        <li><a href="UserInfo/info_MyWeibo.aspx">我的者吧</a></li>
                        <li><asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                        <li style="float:right; margin-right:40px">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
            <div id="r_k_top">
            </div>
            <div id="r_k_main">
                <div class="top_tit01"><b>人气推荐</b></div>
                <div class="lin">
                </div>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="r_k_main_content01"> 
                        <img src="<%#GetUserFace(Eval("userid","{0}")) %>" width="50px" height="50px"/>
                            <ul>
                              <div class="userName"><strong><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userid")%>"><%#GetUserName(Eval("userid", "{0}"))%></a></strong></div>
                              <span>TA关注<%#GetAttioninfo(Eval("userid", "{0}"), "1")%>人,TA的粉丝<%#GetAttioninfo(Eval("userid", "{0}"), "0")%>人</a></span>
                              <div><%#GetLastMob(Eval("UserID","{0}")) %></div>
                              <div style="float:right"><%#GetAttion(Eval("Userid","{0}")) %></div>
                            </ul>
                        </div>
                        <div class="lin01">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
              <div id="PageList" runat="server"> </div>
            <div class="clear"></div>
                <div class="up">
                    <img src="../App_Themes/Microblog/images/up.jpg" /><a href="#">返回顶部</a>
                </div>
            </div>
            <div id="r_k_end">
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <!--右边结束 -->
        <div class="clear">
        </div>
    </div>
    <div id="warp_bottom">
    </div>
    <div id="copyright">
        <ul>
            <li><a href="">关于我们</a></li>
            <li>|</li>
            <li><a href="">网站地图</a></li>
            <li>|</li>
            <li><a href="">免责声明</a></li>
            <li>|</li>
            <li><a href="">版权申明</a></li>
            <li>|</li>
            <li><a href="">招贤纳士</a></li>
            <li>|</li>
            <li><a href="">广告服务</a></li>
            <li>|</li>
            <li><a href="">网站合作</a></li>
            <li>|</li>
            <li><a href="">帮助中心</a></li>
            <li>|</li>
            <li><a href="">投稿指南</a></li>
            <li>|</li>
            <li><a href="">联系我们</a></li>
            <li>|</li>
            <li><a href="">友情链接</a></li>
        </ul>
        <p>Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
    </div>
    </form>
</body>
</html>
