<%@ page language="C#" autoeventwireup="true" inherits="Guestbook_BkDetails, App_Web_zrlcdh4i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>逐浪百科</title> 
    <link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="/App_Themes/Guest/baike.css" type="text/css" media="screen"/>
    <script src="../JS/jquery.js" type="text/javascript"></script>
    <style type="text/css">
img.down-arrow{cursor:pointer;border:1px solid #fff;}
img.down-arrow-hover{cursor:pointer;border:1px solid #999;background:#f7f7f7;}
#nav_extra{width:80px;font-size:12px;text-align:left;padding-bottom:2px;position:absolute;z-index:65535;}
#nav_extra a{font-size:12px;color:#00c;}
#nav_extra .top{width:77px;height:21px;font-size:12px;line-height:18px;text-indent:5px;border:1px solid #999;border-bottom:none;background:#fff;position:absolute;z-index:65531;}
#nav_extra .body{width:77px;line-height:18px;border:1px solid #999;background:#fff;position:absolute;top:20px;z-index:65530;}#nav_extra .body a{width:100%;height:20px;display:block;line-height:20px;text-indent:5px;}
#nav_extra .body a:hover{background:#e4e4e4;}
#usrbar #my_home_container{padding:0 7px 2px 5px;}
table
{
    border:1px solid #3171af;   
    margin:5px;
    border-collapse: collapse;
    border-spacing: 0;
}
td
{
    border:1px solid #3171af;
    line-height: 18px;
    padding: 3px 10px;
    vertical-align: top;
}
</style>
<script type="text/javascript">
    var Fe = Fe || { version: "20080809", emptyFn: function () { } };
    Fe.G = function () {
        for (var A = [], B = arguments.length - 1; B > -1; B--) {
            var C = arguments[B]; A[B] = null;
            if (typeof C == "object" && C && C.dom) { A[B] = C.dom } else { if ((typeof C == "object" && C && C.tagName) || C == window || C == document) { A[B] = C } else { if (typeof C == "string" && (C = document.getElementById(C))) { A[B] = C } } }
        } return A.length < 2 ? A[0] : A
    }; Fe.on = function (C, B, A) {
        if (!(C = Fe.G(C))) { return C } B = B.replace(/^on/, "").toLowerCase();
        if (C.attachEvent) {
            C[B + A] = function () { A.call(C, window.event) };
            C.attachEvent("on" + B, C[B + A])
        } else { C.addEventListener(B, A, false) } return C
    };
    Fe.un = function (C, B, A) { if (!(C = Fe.G(C))) { return C } B = B.replace(/^on/, "").toLowerCase(); if (C.attachEvent) { C.detachEvent("on" + B, C[B + A]); C[B + A] = null } else { C.removeEventListener(B, A, false) } return C };
    var G_HIBAR = (function () {
        var H = document, F, E, C, B = 3; function A(K, I, J) {
            K.style.display = C ? "none" : "block";
            K.style.left = I + "px"; K.style.top = J + "px"
        }
        function G(I) { C && G_HIBAR(I) }
        function D() { F = null; E = null; Fe.un(window, "unload", D) } Fe.on(window, "resize", G);
        Fe.on(document, "click", G); Fe.on(window, "unload", D);
        return function (J) {
            (J || window.event).cancelBubble = true; F = F || H.getElementById("usrbar");
            E = E || H.getElementById("nav_extra");
            var K = H.getElementById("my_home"), L = F.scrollHeight, I = 0;
            do { I += K.offsetLeft } while (K = K.offsetParent);
            I = I - 6;
            A(E, I, B);
            Fe.G("usrbar").scrollWidth; C = !C
        }
    })();
    </script>
    
<script>    wikiConflict.isEdit = 1;</script>
<script>    var templateGuide = templateGuide || {}; templateGuide.textEditType = 'part'</script> 
      
<style type="text/css">
    .popb2{padding:10px;line-height:22px;font-size:14px;width:280px;height:230px;margin:0 auto;}
    #rempassItem{font-size:12px;color:#F00;display:none;}
    .regButton{padding:2px;height:25px;width:140px;margin:10px 60px;}
    .f12{font-size:12px;}#rgHandle{text-align:center;font-weight:bold;}
    .loginItem{width:140px;}
    .x_input
    {
        padding:10px;
    }
    .x_input a
    {
        text-decoration:underline;
        color:Blue;
    }
</style>
<script>    wikiConflict.isEdit = 1;</script>
    <script type="text/javascript">
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
    <div id="main" class="rg_inout"> 
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
        <div class="cleardiv" style="padding:5px;">
        
        <h1>
            您的位置：<a href="/">网站首页</a>>>&nbsp;<a href="Default.aspx">留言中心</a>>><a href="Baike.aspx">逐浪百科</a>>><a href="#GuestBorder">词条详情</a></h1>
        </div>
        <div style="width:800px; float:left">
      <p><div style="width: 773px;"><h2><span style=" float:right"><asp:LinkButton runat="server" ID="Edit" 
              Text="编辑本词条" onclick="Edit_Click" Font-Size="Medium"></asp:LinkButton></span>&nbsp;<asp:Label runat="server" ID="lblTittle" Font-Bold="True" 
                ForeColor="#3171AF"></asp:Label></h2> </div></p>
<div id="inputShowSummaryDiv" style="padding:0 0 10px;display:none;">
            <div id="canEditSummary" style="display:none"></div>
            <div id="cardSummary"></div>

        </div>
    
        <div id="inputShowMainInfoDiv" style="display:none;">
            <div id="canEditMainInfo"></div>
            <div id="inputMainInfoDivContent"></div>
        </div>
    
        <div style="position:relative">
            <div id="loading"></div>
            <div runat="server" id="code" class="x_input" style="width:773px;">
                </div>
            <%--<asp:TextBox runat="server" TextMode="MultiLine" id="code" name="message" style="display:none;"></asp:TextBox>

            --%>
        </div> 
        <div style="border-top: 2px solid #3171af; padding: 25px 0 10px 0;">
            <div style=" width: 773px;">
                <span style="color: #3171af; height: 30px; padding: 5px 5px;">参考资料</span></div>
            <div runat="server" id="txtReference" class="x_input" style="width:773px;">
                </div>
                    <div style="width: 773px;">
                <span style="color: #3171af; height: 30px; padding: 5px 5px;">开放分类</span></div>
            <div runat="server" id="txtBtype" class="x_input" style="width:773px;">
              </div>
                    <div style="width: 773px;">
                <span style="color: #3171af; height: 30px; padding: 5px 5px;">扩展阅读</span></div>
            <div runat="server" id="txtExtend" class="x_input" style="width:773px;">
               </div>
            <div id="editSpan" runat="server">  <span style="color: #3171af; height: 30px; padding: 5px 5px;">合作编辑</span>
            <div runat="server" id="editman" class="x_input" style="width:773px;">
               </div></div>
            <div style="display: none;" id="divSupplyment">
                <asp:TextBox runat="server" ID="txtSupplyment" CssClass="x_input" TextMode="MultiLine"
                    Width="500" Height="120"></asp:TextBox></div>
            
            <div class="clear">
            </div>
          </div> 
        </div>
         <div class="R1" style="width:170px">
    <div id="userinfo" runat="server" style="display:none">
    <asp:Label runat="server" ID="username"></asp:Label>----实习小编
    </div>
    <div style="height:30px"></div>
    <div>
    <div style="background-color:#E0EFFD;"> <strong style="color:Black;font-size:medium">词条统计</strong></div>
    浏览次数：<br />
    编辑次数：<asp:Label runat="server" ID="edittime"></asp:Label><br />
    最近更新：<asp:Label runat="server" ID="updatetimes"></asp:Label><br />
    创建者：<asp:Label runat="server" ID="creatbaike"></asp:Label><br />
    </div>
    <div style="height:30px"></div>
    <div>
    <strong>贡献光荣榜</strong>
    <hr />
    <asp:Repeater runat="server" ID="Contribution">
    <ItemTemplate>
     <div><span style="float:right"><a href="BkDetails.aspx?tittle=<%#Eval("Tittle")%>&username=<%#Eval("UserName")%>&soure=baikeedit">版本</a></span><%#Eval("UserName")%></div>
    </ItemTemplate>
    </asp:Repeater>
    </div>
    <div style="height:30px"></div>
    <div>
      <div style="background-color:#E0EFFD;"> <strong style="color:Black;font-size:medium">最新动态</strong></div>
      <asp:Repeater runat="server" ID="Latestnews">
      <ItemTemplate>
      </ItemTemplate>
      </asp:Repeater>
    </div>
    </div>
   
    <!-- 版权信息 -->
   <%-- <div id="bottom">
        <a href="/">
            <img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>--%>
        <p style="text-align:center;clear:both">
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
    
    </form>
    <script type="text/javascript">
        $(function () {
            getCode();
        });
        function getCode() {
            //$(window.frames["tangram_editor_iframe_MZ__w"].document).find("#testId").html()
            var catalog = "";
            var code = document.getElementById("code");
            //var content = $(document.getElementById('tangram_editor_iframe_MZ__w').contentWindow.document.body).html();
            //            var content = document.getElementById('code').html();
            //alert(content);
            var arr = document.getElementById('code').getElementsByTagName("h2");
            for (var i = 0; i < arr.length; i++) {
                var aNew = document.createElement("a");
                aNew.setAttribute("name", "a" + i);
                aNew.setAttribute("id", "a" + i);
                arr[i].appendChild(aNew);
                catalog = catalog + "<a href=\"#a" + i + "\">" + arr[i].firstChild.data + "</a><br/>";
            }
            var content = document.getElementById('code').innerHTML;
            document.getElementById("code").innerHTML = "<div>目录<br/>" + catalog + "</div>" + content;
        }
    </script>
</body>
</html>
