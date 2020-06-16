<%@ page language="C#" autoeventwireup="true" inherits="t_UserInfo_roomCreate, App_Web_ngneshp3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人直播室信息</title>
    <link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
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
            <div id="zhu_hang">
                申请开通直播室&nbsp;&nbsp;&nbsp;|<b> <a href="roomSelf.aspx">我的直播室</a></b>&nbsp;&nbsp;&nbsp;
            </div>
          <div id="lblName" runat="server" style="font-size:large;padding:30px 200px 0px 200px;"></div>
            <div id="form" runat="server">
             <div class="bitian">
                <span>*</span>为必填项</div>
                <br />
                <br />
                <b><span>*</span>直播室主题：</b>
                <asp:TextBox ID="txtltopic" runat="server" CssClass="yonghu" Text=""></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="请输入主题"
                    ControlToValidate="txtltopic" />
                <br />
                <br />
                <br />
                <br />
                <div class="content">
                    <b>直播室描述：&nbsp; </b>&nbsp;<div class="content_L">
                        <asp:TextBox ID="txtlstate" runat="server" TextMode="MultiLine" CssClass="text"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />
                <b><span>*</span>时间安排：&nbsp; </b>&nbsp;<asp:TextBox ID="txtlArrange" runat="server" CssClass="yonghu" onblur="checkTime()"></asp:TextBox>&nbsp;(时间格式样例:00:00-23:59) 
                <br />
                <br />
                <br />
                <br />
                <b><span>*</span>特邀嘉宾：&nbsp; </b>&nbsp;<asp:TextBox ID="txtlguest" runat="server" CssClass="yonghu" />&nbsp;(填入用户名并用英文状态下的逗号(,)隔开，例:用户名1,用户名2)
                <br />
                <br />
                <br />
                <br />
                
                 <b><span>*</span>直播室图片：</b>   
              <asp:TextBox ID="txtlpic" runat="server" CssClass="yonghu"></asp:TextBox>
                <asp:Label ID="lblMessage" runat="server" ForeColor="red" Text=""></asp:Label>
                <br /> 
                <br />
                <br />
                <asp:Button ID="btnSave" runat="server" Text="保存" CssClass="baoc" OnClick="btnSave_Click">
                </asp:Button>(提交申请后，自审核之日起三日内生效)
                <br />
                <br />
                <br />
                <br />
            </div>
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
     <script>
    function checkTime() 
{ 
        var val=document.getElementById("txtlArrange").value;
        var a = val.match(/^(\d{1,2}):(\d{1,2})(-|\/)(\d{1,2}):(\d{1,2})$/);  
        if (a == null) {alert("请输入正确的时间格式！");document.getElementById("txtlArrange").value = ""; return false;} 
        }
    </script>
</body>
</html>
