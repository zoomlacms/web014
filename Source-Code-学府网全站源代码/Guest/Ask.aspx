<%@ page language="C#" autoeventwireup="true" inherits="Guestbook_Ask, App_Web_rffrteow" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>问答中心</title> 
    <link href="../App_Themes/Guest/ask.css" rel="stylesheet" type="text/css" />
    <script src="../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="../JS/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
    
<meta name="description" content="Zoomla问答系统交流平台" />
<meta name="keywords" content="问答系统 aspx问答系统 Zoomla问答系统 " />
<meta name="generator" content="Zoomla 6.1" />
<meta name="author" content="Zoomla Team" />
<meta name="copyright" content="2012 Zoomla.cn." />
<meta name="robots" content="index, follow">
<meta name="googlebot" content="index, follow" />
<link href="/App_Themes/Guest/images/ask.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    g_site_url = 'http://help.Zoomla.cn/'; g_prefix = ''; g_suffix = '.html'; editor_options = { toolbars: [['FullScreen', 'Source', 'Undo', 'Redo', 'Bold', 'HighlightCode', 'InsertTable', 'InsertImage', 'attachment', 'InsertVideo', 'Map', 'Emotion']], wordCount: false, elementPathEnabled: false }; messcode = '1';</script>
<script src="http://help.Zoomla.cn/js/jquery.js" type="text/javascript"></script>
<script src="http://help.Zoomla.cn/js/dialog.js" type="text/javascript"></script>
<script src="http://help.Zoomla.cn/js/common.js" type="text/javascript"></script>
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
       /* function show() {
            var div = document.getElementById("show");
            if (div.style.display == "none") {
                div.style.display = "block";
            }
           // else {div.style.display = "none";}
        
        }*/
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
    <form id="form2" runat="server">
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
<!--加载广告--><div class="content">
<!--左边分类开始-->
<div class="left">
    <!--问题分类开始-->
    <div class="wtfl">
        <div class="wtfl_t"></div>
        <div class="wtfl_m">
            <div class="wtfl_m_t">
                <div class="wt_l">&nbsp;问题分类
                </div>
                <div class="clr"></div>
                <div id="rmc"></div>
            </div>
            <div id="siderbar">
                <div id="secNav">
                    <ul id="secNavList">
                                  <asp:Repeater ID="Repeater1" runat="server"  OnItemDataBound="Repeater1_ItemDataBound">
                                  <ItemTemplate>
                                  <li>
                            <div class="iconBg"><a href="<%#Eval("GradeID") %>" title="<%#Eval("GradeName") %>"><%#Eval("GradeName") %></a></div>
                            <div class="listcon">
                                <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                <a href="<%#Eval("GradeID") %>" title="<%#Eval("GradeName") %>"><%#Eval("GradeName") %></a>
                                </ItemTemplate>
                                </asp:Repeater> 
                            </div>
                        </li>
                                  </ItemTemplate>
                                  </asp:Repeater>                  
                       
                        
                    </ul>
                </div>
                <div class="more"><a ttarget="_top" title="查看更多分类" href="http://help.Zoomla.cn/c-all.html">查看更多分类&gt;&gt;</a></div>
            </div>          
        </div>
        <div class="wtfl_b"></div>
    </div>
    <!--问题分类结束-->

    <div class="topscore">
        <div class="l_b_t"></div>
        <div class="l_b_m">
            <div class="l_b_m_t">
                <div class="mc"><div class="ivote"></div>积分排行榜</div>
                <div class="phb">
                    <ul>
                        <li onclick="showtop('week')" id="weektab" class="on">本周排行</li>
                        <li onclick="showtop('all')" id="alltab" class="">总排行</li>
                    </ul>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="clr"></div>
            <div class="l_b_m_m">
                <div id="weektop" class="yshy" style="display: block;">
                    <ul>
                      <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num1.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-21910.html">gbdksf</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">30                            </li>
                        
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num2.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-21907.html">test134679</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">25                            </li>
                        
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num3.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-21909.html">jinguanyu</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">25                            </li>
                        
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num4.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-21911.html">alltosun</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">25                            </li>
                        
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num5.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-21904.html">zz1234</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">20                            </li>
                        
                    </ul>
                </div>
                <div id="alltop" class="yshy" style="display:none;">
                    <ul>
                                                    
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num1.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-14171.html">lizon001</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">2155                            </li>
                        
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num2.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-12629.html">mm2212</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">2010                            </li>
                        
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num3.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-14172.html">yangzon001</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">1740                            </li>
                        
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num4.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-8052.html">feidu12</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">981                            </li>
                        
                                                    <li>
                            <span class="hyname"><img align="absmiddle" src="/App_Themes/Guest/images/num5.gif"> <a target="_blank" href="http://help.Zoomla.cn/u-26.html">sdf_sky</a></span>
                            <img align="absmiddle" src="/App_Themes/Guest/images/up.gif">845                            </li>
                        
                    </ul>
                </div>
                <div class="listcon"></div>
                <div class="more"><a ttarget="_top" title="查看更多排行榜" href="http://help.Zoomla.cn/us-1.html">查看更多排行榜&gt;&gt;</a></div>
                <div class="clr"></div>

            </div>
        </div>
        <div class="l_b_b"></div>
    </div>

    <!--知道小贴士开始-->
    <div class="cjjb">
        <div class="l_b_t"></div>
        <div class="l_b_m">
            <div class="l_b_m_t1">
                <div class="mc"><div class="irelate"></div>知道小贴士</div>
            </div>
            <div class="clr"></div>
            <div class="l_b_m_m">
                <div class="xts">
                    <ul>
                        <li><a target="_blank" title="如何提问" href="http://help.Zoomla.cn/?index/help.html#如何提问">如何提问</a></li>
                        <li><a target="_blank" title="如何回答" href="http://help.Zoomla.cn/?index/help.html#如何回答">如何回答</a></li>
                        <li><a target="_blank" title="如何获得积分" href="http://help.Zoomla.cn/?index/help.html#如何获得积分">如何获得积分</a></li>
                        <li><a target="_blank" title="如何处理问题" href="http://help.Zoomla.cn/?index/help.html#如何处理问题">如何处理问题</a></li>
                    </ul>
                </div>
                <div class="tsyjy"> 如要投诉或提出意见，请点击<br><a title="投诉与建议" href="mailto:Zoomla@qq.com"><input type="button" class="button1" value="建议反馈" /></a></div>
            </div>
        </div>
        <div class="l_b_b"></div>
    </div>
    <!--知道小贴士结束-->
</div>
<div class="b_right">
    <div class="middle">
                                <div class="rdtj">
            <div class="rdtj_t"></div>
            <div class="rdtj_m" >
                <div id="slides">
                    <div class="slides_container">
                                                    
                        <div>
                            <div class="hdp"><img src="http://help.Zoomla.cn//data/attach/topic/topic6HrvCp.jpg" width="270px" height="222px"/></div>
                            <div class="hdpr">
                                <strong style="color:#9C9A9A">推荐专题</strong>
                                <h1><a href="http://help.Zoomla.cn/?category/recommend.html#1">Zoomla的安装使</a></h1>
                                <p>如果你对Zoomla的安装使用不太熟悉的话，过来瞧瞧</p>
                                <ul>
                                    
                                    <li><a class="hotTitscontlia" title="Zoomla在nginx下伪静态化rewrite规则如何写" target="_blank" href="http://help.Zoomla.cn/q-153.html">Zoomla在nginx下伪静态化rew</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="Zoomla系统如何安装使用" target="_blank" href="http://help.Zoomla.cn/q-208.html">Zoomla系统如何安装使用</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="Zoomla1.3的kindeditor跟Zoomla1.2的版本一样吗？" target="_blank" href="http://help.Zoomla.cn/q-440.html">Zoomla1.3的kindeditor跟tip</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="Zoomla 1.4beta  为什么无法上传头像？" target="_blank" href="http://help.Zoomla.cn/q-2034.html">Zoomla 1.4beta  为什么无法</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="Zoomla系统允许用户上传图片吗？存储在哪里？" target="_blank" href="http://help.Zoomla.cn/q-2092.html">Zoomla系统允许用户上传图片</a> </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                        <div>
                            <div class="hdp"><img src="http://help.Zoomla.cn//data/attach/topic/topice0gKiM.jpg" width="270px" height="222px"/></div>
                            <div class="hdpr">
                                <strong style="color:#9C9A9A">推荐专题</strong>
                                <h1><a href="http://help.Zoomla.cn/?category/recommend.html#2">Zoomla升级相关</a></h1>
                                <p>关于Zoomla升级相关的问题可以看这里</p>
                                <ul>
                                    
                                    <li><a class="hotTitscontlia" title="升级到1.2版后网页报错，请问如何解决？" target="_blank" href="http://help.Zoomla.cn/q-291.html">升级到1.2版后网页报错，请</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="升级到1.3正式版后出错" target="_blank" href="http://help.Zoomla.cn/q-675.html">升级到1.3正式版后出错</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="升级到1.4正式版后，界面怎么还显示 1.4beta呀" target="_blank" href="http://help.Zoomla.cn/q-2046.html">升级到1.4正式版后，界面怎</a> </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                        <div>
                            <div class="hdp"><img src="http://help.Zoomla.cn//data/attach/topic/topictUXWxM.jpg" width="270px" height="222px"/></div>
                            <div class="hdpr">
                                <strong style="color:#9C9A9A">推荐专题</strong>
                                <h1><a href="http://help.Zoomla.cn/?category/recommend.html#3">专题测试相关</a></h1>
                                <p>专题测试相关的问题都在这里</p>
                                <ul>
                                    
                                    <li><a class="hotTitscontlia" title="测试一下" target="_blank" href="http://help.Zoomla.cn/q-1068.html">测试一下</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="测试问题" target="_blank" href="http://help.Zoomla.cn/q-1130.html">测试问题</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="测试提交！" target="_blank" href="http://help.Zoomla.cn/q-1413.html">测试提交！</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="测试回答审核功能是否bug" target="_blank" href="http://help.Zoomla.cn/q-2385.html">测试回答审核功能是否bug</a> </li>
                                    
                                    <li><a class="hotTitscontlia" title="测试是否出现乱码" target="_blank" href="http://help.Zoomla.cn/q-2468.html">测试是否出现乱码</a> </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="clr"></div>
            </div>
            <div class="rdtj_b"></div>
        </div>
                    <!--精彩推荐开始-->
        <div class="m_wt">
            <div class="m_wtt">
                <ul>
                    <li class="a1"></li>
                    <li class="a2">
                        <div class="a2t">精彩推荐的问题</div>
                        <div class="more"><a target="_top" title="更多问题" href="MoreProblems.aspx?type=0">更多问题</a> </div>
                    </li>
                    <li class="a3"></li>
                </ul>
                <div class="clr"></div>
            </div>
            <div class="m_wtm">
                <div id="weijieList2">
                    <ul>
                            <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                            <li>&nbsp;<td> <a target="_self" href="SearchDetails.aspx?ID=<%#Eval("ID")%>"><%#Eval("Qcontent")%></a></td><span class="lei">[<td><a target="_self" href="AskList.aspx?QueType=<%#Eval("QueType")%>&strwhere="><%#gettype(Eval("QueType","{0}"))%></a></td>]</span><span class="qanswers"><%#getcount(Eval("ID", "{0}"))%>回答</span></li>
                            </ItemTemplate>
                            </asp:Repeater>                        
                                                    
                    </ul>

                </div>
            </div>
            <div class="m_wtb"></div>
        </div>
        <!--精彩推荐结束-->
        <!--广告位1-->
                    <!--待解决问题开始-->
        <div class="m_wt">
            <div class="m_wtt">
                <ul>
                    <li class="a1"></li>
                    <li class="a2">
                        <div class="a2t">大家都在问什么</div>
                        <div class="more"><a target="_top" title="更多问题" href="MoreProblems.aspx?type=1">更多问题</a> </div>
                    </li>
                    <li class="a3"></li>
                </ul>
                <div class="clr"></div>
            </div>
            <div class="m_wtm">
                <div id="weijieList1">
                    <ul>
                      <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                            <li> <a target="_self" href="SearchDetails.aspx?ID=<%#Eval("ID")%>"><%#Eval("Qcontent") %></a>&nbsp;<span class="lei">[<a target="_self" href="AskList.aspx?QueType=<%#Eval("QueType")%>&strwhere="><%#gettype(Eval("QueType","{0}"))%></a>]</span><span class="qanswers"><td><%#getcount(Eval("ID", "{0}"))%></td>回答</span></li>
                            </ItemTemplate>
                            </asp:Repeater>                       
                    </ul>

                </div>
            </div>
            <div class="m_wtb"></div>
        </div>
        <!--待解决问题结束-->
        <!--广告位2-->
                    <!--悬赏问题开始-->
        <div class="m_wt">
            <div class="m_wtt">
                <ul>
               
                    <li class="a1"></li>
                    <li class="a2">
                        <div class="a2t">悬赏求答案的问题</div>
                        <div class="more"><a target="_top" target="_blank" title="更多问题" href="MoreProblems.aspx?type=2">更多问题</a> </div>
                    </li>
                    <li class="a3"></li>
                   
                </ul>
                <div class="clr"></div>
            </div>
            <div class="m_wtm">
                <div id="weijieList">
                    <ul> <asp:Repeater runat="server" ID="Repeater5"> <ItemTemplate>
                                                    
                                                    <li><img  alt=" " src="/App_Themes/Guest/images/TB2.gif" /><td><%#Eval("Score")%></td><td><a target="_self"  href="SearchDetails.aspx?ID=<%#Eval("ID")%>"><%#Eval("Qcontent")%>&nbsp;</a></td><span class="lei">[<a target="_self" href="AskList.aspx?QueType=<%#Eval("QueType")%>&strwhere="><%#gettype(Eval("QueType","{0}"))%>]</a></span><span class="qanswers"><td><%#getcount(Eval("ID", "{0}"))%></td>回答</span></li>
                        
                     </ItemTemplate></asp:Repeater></ul>

                </div>
            </div>
            <div class="m_wtb"></div>
        </div>
        <!--悬赏问题结束-->
        <!--广告位3-->
                    <!--已解决问题开始-->
        <div class="m_wt">
            <div class="m_wtt">
                <ul>
                    <li class="a1"></li>
                    <li class="a2">
                        <div class="a2t">最新已解决的问题</div>
                        <div class="more"><a target="_top" title="更多问题" href="MoreProblems.aspx?type=3">更多问题</a></div>
                    </li>
                    <li class="a3"></li>
                </ul>
                <div class="clr"></div>
            </div>
            <div id="jieList" class="m_wtm">
                <ul>
                <asp:Repeater runat="server" ID="Repeater6"><ItemTemplate>
                                            
                                            <li><td><a target="_self" href="SearchDetails.aspx?ID=<%#Eval("ID")%>"><%#Eval("Qcontent").ToString()%></a></td>&nbsp;<span class="lei">[<td><a target="_self" href="AskList.aspx?QueType=<%#Eval("QueType")%>&strwhere="><%#gettype(Eval("QueType","{0}"))%></a></td>]</span><span class="qanswers"><td><%#getcount(Eval("ID", "{0}"))%></td>回答</span></li>
                    
                  </ItemTemplate></asp:Repeater>                       
                </ul>

            </div>
            <div class="m_wtb"></div>
        </div>
        <!--已解决问题结束-->
    </div>
    <div class="right">
        <div class="ty">
            <div class="tyt"></div>
            <div class="tym">
                <div class="tym_t">
                    <div class="mc">
                        <img src="/App_Themes/Guest/images/note.gif" class="noteicon"/>
                        站內公告
                    </div>
                </div>
                <div class="tym_m">
                    <ul>
                                                    
                        <li><a  href="http://help.Zoomla.cn/?note/view/17.html"  title="Zoomla1.4beta版本悄然上线测试">Zoomla1.4beta版本悄然 ...</a></li>
                        
                        <li><a  href="http://bbs.Zoomla.cn/thread-4070-1-1.html"  title="Zoomla1.3Beta发布！">Zoomla1.3Beta发布！</a></li>
                        
                        <li><a  href="http://help.Zoomla.cn/?note/view/15.html"  title="Zoomla1.3测试版上线！">Zoomla1.3测试版上线！ ...</a></li>
                        
                        <li><a  href="http://bbs.Zoomla.cn/thread-1734-1-1.html"  title="10月14日Zoomla1.2版发布！">10月14日Zoomla1.2版发 ...</a></li>
                        
                        <li><a  href="http://bbs.Zoomla.cn/viewthread.php?tid=337&extra=page%3D1"  title="8月2日Zoomla1.1发布！">8月2日Zoomla1.1发布！ ...</a></li>
                        
                        <li><a  href="http://bbs.Zoomla.cn/viewthread.php?tid=140&extra=page%3D1"  title="7月7日 Zoomla1.0正式版发布！">7月7日 Zoomla1.0正式版 ...</a></li>
                        
                    </ul>
                    <div class="more1"><a href="http://help.Zoomla.cn/?note/list.html" target="_blank" title="查看全部公告">查看全部公告</a></div>
                </div>
            </div>
            <div class="tyb"></div>
        </div>
        <div class="zjzt">
            <div class="zjztt">
                <ul>
                    <li class="a1"></li>
                    <li class="a2">热点关键词</li>
                    <li class="a3"></li>
                </ul>
            </div>
            <div class="zjztm">
                
                <a href="http://help.Zoomla.cn/?question/search/3/Zoomla
.html">Zoomla
</a>
                
                <a href="http://help.Zoomla.cn/?question/search/3/Ucenter
.html">Ucenter
</a>
                
                <a href="http://help.Zoomla.cn/?question/search/3/问答系统
.html">问答系统
</a>
                
                <a href="http://help.Zoomla.cn/?question/search/3/圣诞节
.html">圣诞节
</a>
                
                <a href="http://help.Zoomla.cn/?question/search/3/春节放假
.html">春节放假
</a>
                
                <a href="http://help.Zoomla.cn/?question/search/3/.html"></a>
                
                
            </div>
            <div class="zjztb"></div>
        </div>
                    <div class="rb_zj">
            <div class="rb_zj_t"></div>
            <div class="rb_zj_m">
                <div class="rb_zj_mt"><div class="istar"></div>推荐之星</div>
               <asp:Repeater runat="server" ID="Repeater7" OnItemDataBound="Repeater7_ItemDataBound"><ItemTemplate> 
               <div class="rb_zj_mm">
                                            
                                                <div class="rb_zj_mmc">
                                                            <div class='zjimg'>
                                <a href="#" target='_blank'><img src="/App_Themes/Guest/images/avatar.gif" width='50px' height='50px' /></a>
                            </div>
                            <div class='jbzl'>
                                <a href="#" target='_blank'><%#Eval("UserName")%></a><br/>
                                回答数:<%#getanswer(Eval("UserID","{0}"))%><br />
                                提问数:<%#getask(Eval("UserID","{0}"))%>                               </div>
                            <div class='clr'></div>
                                                            精选解答:<input type="button" class="button1" value="向TA提问" onclick="javascript:document.location='#'"/>
                                   <asp:Repeater runat="server" ID="Repeater8"><ItemTemplate>                         <ul>
                                <li><a href="#" target='_blank' title=" "><%#Eval("Qcontent")%></a></li>
                                
                                <li><a href="#" target='_blank' title=" "><%#Eval("Supplyment")%></a></li>
                                
                            </ul></ItemTemplate></asp:Repeater>
                  </div>
                    
                        <div class="clr"></div>
                        
                        <div class="more2"><a href="#" target="_blank" title="历届知道之星">历届知道之星>> </a></div>
              </div>
              </ItemTemplate></asp:Repeater>
                </div>
                <div class="rb_zj_b"></div>
            </div>
            <div class="rb_zj">
                <div class="rb_zj_t"></div>
                <div class="rb_zj_m">
                    <div class="rb_zj_mt1"><img src="/App_Themes/Guest/images/user.png" class="noteicon" alt="知道专家" />知道专家</div>
                    <div class="rb_zj_mm">
                                                    
                        <div class="rb_zj_mmc1">
                            <ul>
                                <li>
                                    <div class="zjimg1">
                                        <a href="http://help.Zoomla.cn/u-26.html">
                                            <img src="/App_Themes/Guest/images/avatar.gif"  height="50px" width="50px"/>
                                        </a>
                                    </div>
                                    <div class="jbzl1">
                                        <h3><a href="http://help.Zoomla.cn/u-26.html" ></a></h3>
                                        擅长分类：<a href='index.php?category/view/108.html' target='_blank'>Zoomla问答系统</a>                                            <a href="http://help.Zoomla.cn/?question/add/26.html">
                                            <img src="/App_Themes/Guest/images/wytw.gif" height="20px" width="60px"/>
                                        </a>
                                    </div>
                                    <div class="clr"></div>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="rb_zj_mmc1">
                            <ul>
                                <li>
                                    <div class="zjimg1">
                                        <a href="http://help.Zoomla.cn/u-1.html">
                                            <img src="/App_Themes/Guest/images/avatar.gif"  height="50px" width="50px"/>
                                        </a>
                                    </div>
                                    <div class="jbzl1">
                                        <h3><a href="http://help.Zoomla.cn/u-1.html" ></a></h3>
                                        擅长分类：<a href='index.php?category/view/108.html' target='_blank'>Zoomla问答系统</a>,<a href='index.php?category/view/138.html' target='_blank'>日常生活</a>                                            <a href="http://help.Zoomla.cn/?question/add/1.html">
                                            <img src="/App_Themes/Guest/images/wytw.gif" height="20px" width="60px"/>
                                        </a>
                                    </div>
                                    <div class="clr"></div>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="more2"><a href="http://help.Zoomla.cn/?expert/default.html" target="_blank" title="查看更多">查看更多专家</a></div>
                    </div>
                </div>
                <div class="rb_zj_b"></div>
            </div>
    </div>
        <div class="clr"></div>
  </div>
</div>
<div class="clr"></div>
<!--友情链接-->
<div class="jklm">
    <div class="jklmm">
        <h3>友情链接</h3>
        <div class="lm">
            
            <a target="_blank" href="http://www.yunyubaike.com" title="孕育百科问答,孕妇的营养饮食,怀孕症状,注意事项,孕妇吃什么好">
                                    孕育百科问答                                    </a>
            
            <a target="_blank" href="http://www.yanjiao.in" title="燕郊人的网上问答平台">
                                    燕郊问答系统                                    </a>
            
            <a target="_blank" href="http://www.daifu8.com " title="在线医生">
                                    在线医生                                    </a>
            
            <a target="_blank" href="http://www.poshaguo.com" title="购物有问题，上破砂锅问到底">
                                    破砂锅购物问答                                    </a>
            
        </div>
    </div>
</div>
<div class="clr"></div>
<script src="http://help.Zoomla.cn/js/slides.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        $('#slides').slides({
            preload: true,
            generateNextPrev: false,
            play: 5000,
            container: 'slides_container'

        });
    });
    function showtop(type) {
        if (type == 'week') {
            $("#weektab").attr('class', 'on');
            $("#alltab").attr('class', '');
            $("#alltop").hide();
            $("#weektop").show();
        } else {
            $("#alltab").attr('class', 'on');
            $("#weektab").attr('class', '');
            $("#weektop").hide();
            $("#alltop").show();
        }
    }
</script>
  
    <asp:HiddenField runat="server" ID="hfid" />
    </form>
    
    <!-- 版权信息 -->
    <div id="bottom" class="footer"> 
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
</body>
</html>
