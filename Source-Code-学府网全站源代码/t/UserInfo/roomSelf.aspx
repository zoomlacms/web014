<%@ page language="C#" autoeventwireup="true" inherits="t_UserInfo_roomSelf, App_Web_ngneshp3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人直播室信息</title>
    <link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="../../App_Themes/Microblog/style.css" />

    <script type="text/javascript" src="/JS/ImagePreview.js"></script>
    <script src="../../JS/citylist.js" type="text/javascript"></script>
    <script type="text/javascript" src="/JS/CJL.0.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="warp">
        <div id="warp_l">
            <div id="zhu_ltop">
            </div>
            <div class="zhu_s">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" CausesValidation="false" ImageUrl="../../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="zhu_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="../Content.aspx">者吧首页</a></li>
                        <li><a href="../Topic.aspx">主题者吧</a></li>
                        <li><a href="../TongCheng.aspx">同城者吧</a></li>
                        <li><a href="../blogLiving.aspx">直播室</a></li>
                        <li><a href="../MyMicrob.aspx">我的首页</a></li>
                        <li><a href="info_MyWeibo.aspx">我的者吧</a></li>
                        <li>
                            <asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                        <li style="float: right; margin-right: 40px !important; margin-right: 30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
        </div>
        <!--右边结束 -->
        <div id="zhu_content">
            <div id="zhu_hang" style="height:auto">
                <b><a href="roomCreate.aspx">申请开通直播室&nbsp;&nbsp;&nbsp;</a></b>|&nbsp;&nbsp;&nbsp;我的直播室&nbsp;&nbsp;&nbsp;<div class="clear"></div>
               <div class="news_li">
             <ul id="myTab1">
                        <li class="active" onclick="nTabs(this,0);">已审核</li>
                        <li class="normal" onclick="nTabs(this,1);">未审核</li>
                        <li class="normal" onclick="nTabs(this,2);">已过期</li>
                    </ul></div>
                    <div class="clear"></div>
                     </div>
           <div id="sorry" runat="server"></div>
                    <div class="clear"></div>
            <%-- <div class="bitian">
               <span>*</span>为必填项</div>--%>
                 <div id="myTab1_Content0" style="height: 600px; overflow: auto;">
            <div id="form">
                <asp:Repeater ID="repHot" runat="server">
                    <ItemTemplate>
                        <div class="r_k_main_content01">
                            <%#GetImg(Eval("limgUrl","{0}"),Eval("lid","{0}"))%></p>
                            <ul>
                                <li><span><a href="../myRoom.aspx?id=<%#Eval("lid") %>"><font color="#1A74E2">
                                                <%#Eval("ltopic")%></font></a></span> </li>
                                
                                  <li>室主：<%#Eval("lperson")%></li>   
                                  <li>申请日期：<%#Eval("ldate", "{0:yyyy年MM月dd日}")%></li>   
                                  <li>审核日期：<%#Eval("lcheckDate","{0:yyyy年MM月dd日}")%></li>   
                                  <li>内容安排：<%#Eval("lstate")%></li>   
                                  <li>时间安排：<%#Eval("lArrange")%></li>   
                                  <li>特邀嘉宾：<%#Eval("lguest")%></li>   
                            </ul>
                        </div>
                        <div class="lin01">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            </div>
                     <div id="myTab1_Content1" style="height: 600px; overflow: auto; display:none">
                    <div class="form1">
                      <asp:Repeater ID="repUncheck" runat="server">
                    <ItemTemplate>
                    
                        <div class="r_k_main_content01">
                            <%#GetImg(Eval("limgUrl","{0}"),Eval("lid","{0}"))%></p>
                            <ul>
                                <li><span><font color="#1A74E2">
                                                <%#Eval("ltopic")%></font></span> <span>
                                                     [<a href="roomAlter.aspx?id=<%#Eval("lid","{0}") %>">修改</a>]</li>
                                
                                  <li>室主：<%#Eval("lperson")%></li>   
                                  <li>申请日期：<%#Eval("ldate", "{0:yyyy年MM月dd日}")%></li>   
                                  <li><font color="#1A74E2">请等待管理员审核...</font></li>
                                  <li><div>内容安排：<%#Eval("lstate")%></div></li>   
                                  <li>时间安排：<%#Eval("lArrange")%></li>   
                                  <li>特邀嘉宾：<%#Eval("lguest")%></li>   
                            </ul>
                        </div>
                        <div class="lin01">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                     </div>
                     </div>
                         <div id="myTab1_Content2" style="height: 600px; overflow: auto;display:none">
                         <div class="form1">
                         <asp:Repeater ID="repOut" runat="server">
                    <ItemTemplate>
                        <div class="r_k_main_content01">
                            <%#GetImg(Eval("limgUrl","{0}"),Eval("lid","{0}"))%></p>
                            <ul>
                                <li><span><font color="#1A74E2">
                                                <%#Eval("ltopic")%></font></span> </li>
                                
                                  <li>室主：<%#Eval("lperson")%></li>   
                                  <li>申请日期：<%#Eval("ldate", "{0:yyyy年MM月dd日}")%></li>   
                                  <li>审核日期：<%#Eval("lcheckDate","{0:yyyy年MM月dd日}")%>(审核后三天直播室就过期)</li>   
                                  <li>内容安排：<%#Eval("lstate")%></li>   
                                  <li>时间安排：<%#Eval("lArrange")%></li>   
                                  <li>特邀嘉宾：<%#Eval("lguest")%></li>   
                            </ul>
                        </div>
                        <div class="lin01">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                         </div>
                         </div>
            <div id="PageList" runat="server">
        </div>
        
        
        <div class="clear">
        </div>
        <div class="up">
            <img src="../../App_Themes/Microblog/images/up.jpg" alt="" /><a href="#">返回顶部</a></div>
    </div>
    <div id="zhu_bottom">
    </div>
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
        <p>
            Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
    </div>
    </form>
    <script>function nTabs(thisObj, Num) {
            if (thisObj.className == "active") return;
            var tabObj = thisObj.parentNode.id;
            var tabList = document.getElementById(tabObj).getElementsByTagName("li");
            for (i = 0; i < tabList.length; i++) {
                if (i == Num) {
                    thisObj.className = "active";
                    document.getElementById(tabObj + "_Content" + i).style.display = "block";
                } else {
                    tabList[i].className = "normal";
                    document.getElementById(tabObj + "_Content" + i).style.display = "none";
                }
            }
        }</script>
</body>
</html>
