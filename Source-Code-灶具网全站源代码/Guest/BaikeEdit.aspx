<%@ page language="C#" autoeventwireup="true" inherits="Guestbook_BaikeEdit, App_Web_rffrteow" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>逐浪百科</title>

    <link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <link href="../App_Themes/Guest/editor.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/App_Themes/Guest/baike.css" type="text/css" media="screen"/>
    <script src="../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="../JS/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="../js/base.js"></script>
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
        function getImg() {          
        } 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="s_page">
<!--head-->
	<div id="s_header">
	<div id="s_search" class="wa_mode"  >
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
<div id="main" class="rg_inout" style="margin-top:20px; border:none;">  
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
        <div class="cleardiv" style="padding: 5px;">           
            <h1>
                您的位置：<a href="/">网站首页</a>>>&nbsp;<a href="Default.aspx">留言中心</a>>><a href="Baike.aspx">逐浪百科</a>>><a
                    href="#GuestBorder">创建词条</a></h1>
        </div>
        <div> <p>
                <h2>&nbsp;<asp:Label runat="server" ID="lblTittle" Font-Bold="True" Font-Size="Larger" ForeColor="#3171AF">百科</asp:Label></h2></p></div>
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
        </style>
       <script src="../JS/Bkpopup.js" type="text/javascript"></script>
        <script type="text/javascript">            wikiConflict.isEdit = 1;</script>
        <div id="inputShowSummaryDiv" style="padding: 0 0 10px; display: none;">
            <div id="canEditSummary" style="display: none">
            </div>
            <div id="cardSummary">
            </div>
        </div>
        <div id="inputShowMainInfoDiv" style="display: none;">
            <div id="canEditMainInfo">
            </div>
            <div id="inputMainInfoDivContent">
            </div>
        </div>
        <div style="position: relative">
            <div id="loading">
            </div>
            <!-- 工具栏 -->
            <div id="toolsHolder">
                <div id="tools">
                    <div id="toolbar">
                    </div>
                    <div class="bg">
                    </div>
                </div>
            </div>
            <div id="EditorHolder">
                <div class="tangram_editor_container" style="height: 390px">
                </div>
            </div>
            <asp:TextBox runat="server" TextMode="MultiLine" ID="code" name="message" Style="display: none;"></asp:TextBox>
            <span class="gray">
                <input type="hidden" id="partContentNum" name="partContentNum" value="11092">
                <input type="hidden" id="curPicNum" name="curPicNum" value="13">
                <script type='text/javascript'>
                    var g_pcNum = G("partContentNum").value;
                    function setPicNum() {
                        if (editor) { editor.maxPicNum = G("curPicNum").value; }
                    }
                    Fe.on(window, "load", setPicNum);
                </script>
            </span>
        </div>
        <input id="lemmaclass" name="lemmaclass" value="法国,政坛,总统,法兰西第五共和国" type="hidden">
        <script>            var templateGuide = templateGuide || {}; templateGuide.textEditType = 'part'</script>
        <div class="btn">
            <input type="hidden" value=" 提 交 " name="editlemma">
        </div>
        <div style="border-top: 2px solid #3171af; padding: 25px 0 10px 0;">
        <div style="width: 773px;">
            <span style="color: #3171af; height: 30px; padding: 5px 5px;">参考资料</span></div>
        <div>
            <asp:TextBox runat="server" ID="txtReference" CssClass="x_input" TextMode="MultiLine"
                Width="773" Height="80"></asp:TextBox></div>
        <div style="width: 773px;">
            <span style="color: #3171af; height: 30px; padding: 5px 5px;">开放分类</span></div>
        <div >
            <asp:TextBox runat="server" ID="txtBtype" CssClass="x_input" TextMode="MultiLine"
                Width="773" Height="80"></asp:TextBox></div>
        <div style="width: 773px;">
            <span style="color: #3171af; height: 30px; padding: 5px 5px;">扩展阅读</span></div>
        <div>
            <asp:TextBox runat="server" ID="txtExtend" CssClass="x_input" TextMode="MultiLine"
                Width="773" Height="80"></asp:TextBox></div>
        <div style="width: 500px;">
            <span style="float: right; padding-top: 20px;">
                <asp:Button runat="server" ID="btnSubmit" Text="提交" CssClass="C_input" OnClick="btnSubmit_Click"  OnClientClick="getCode()"/>&nbsp;&nbsp;&nbsp;<input type="button" id="btnshow" value="预览"  class="C_input"  onclick="show()" /></span></div>
        <div style="display: none;" id="divSupplyment">
            <asp:TextBox runat="server" ID="txtSupplyment" CssClass="x_input" TextMode="MultiLine"
                Width="500" Height="120"></asp:TextBox></div>
        <div class="clear">
        </div>        
    </div>
    </div>
    </div>
    <script type="text/javascript">
        function show() {
            getCode();
            var s = document.getElementById("code").value;
            var tittle = document.getElementById("lblTittle").innerHTML;
            var d = document.getElementById("txtReference").value;
            var f = document.getElementById("txtBtype").value;
            var g = document.getElementById("txtExtend").value;
            //alert(g);
            window.open("BkDetails.aspx?soure=show&tittle=" + tittle + "&codes=" + s + "&btype=" + f + "&extend=" + g + "&refer=" + d, 'newwindow', "");
        }
    </script>
    <!-- 版权信息 -->
   <%-- <div id="bottom">
        <a href="/">
            <img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>--%>
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
    
    </form>
    <%--<script src="../JS/Bkcommon.js" type="text/javascript"></script>
    <script src="../JS/Bkcore.js" type="text/javascript"></script>--%>
</body>
<div class="bd-menu-inserttable" id="bdMenuInsertTable" role="menu">
    <div class="bd-dimension-picker" id="pickerHolder">
        <div id="pickerArea">
            <div class="bd-dimension-picker-unhighlighted" style="width: 10em; height: 10em;">
            </div>
            <div class="bd-dimension-picker-highlighted" style="width: 0em; height: 0em;" id="pickerHighlighted">
            </div>
        </div>
        <div class="bd-dimension-picker-status">
            <span style="float: left; font-size: 12px" id="pickerStatus"><span id="columnCount">
                0</span>列 x <span id="rowCount">0</span>行</span> <span style="float: right;"><a href="#"
                    onclick="setTablePanel.insertMoreTable();return false;" id="insertMoreTable"
                    style="text-decoration: none; font-size: 12px;">插入更多</a></span>
        </div>
    </div>
</div>
<form name="pre" method="post" action=" /preview/" target="_blank">
<input type="hidden" name="pretitle" value="" />
<input type="hidden" name="prelemma" value="" />
<input type="hidden" name="pretag" value="" />
<input type="hidden" name="prepic" value="" />
<input type="hidden" name="preref" value="" />
<input type="hidden" name="preview" value="preview">
<input type="hidden" name="preBeforeLemma" id="preBeforeLemma" value="">
<input type="hidden" name="preEndLemma" id="preEndLemma" value="">
<input type="hidden" name="preFlag" id="preFlag" value="">
<input type="hidden" value="" name="preExtData" />
<input type="hidden" value="" name="preSummaryImgId" />
<input type="hidden" value="" name="preSummaryImgInfo" />
<input type="hidden" name="preSummarySummary" value="" />
<input type="hidden" name="preExtDataType" value="" />
<div id="refData4Preview" style="display: none">
</div>
</form>
<br clear="all">
<script src="../JS/Bkcommon.js" type="text/javascript"></script>
    <script src="../JS/Bkcore.js" type="text/javascript"></script>
    <script type="text/javascript">
        function getCode() {
            //$(window.frames["tangram_editor_iframe_MZ__w"].document).find("#testId").html()
            //var catalog = "";
            var code = document.getElementById("code");
//            var arr = document.getElementById('tangram_editor_iframe_MZ__w').contentWindow.document.body.getElementsByTagName("h2");
//            //alert(arr);
//            var input_file = document.createElement("input")
//            input_file.setAttribute("type", "button");
//            input_file.setAttribute("size", "50");
//            input_file.setAttribute("name", "input1");

//            for (var i = 0; i < arr.length; i++) {
//                var aNew = document.createElement("a");
//                aNew.setAttribute("name", "a" + i);
//                aNew.setAttribute("id", "a" + i);
//                //                var alinks = arr[i].getElementsByTagName("a");
//                //                for (var j = 0; j < alinks.length; j++) {
//                //                    aNew.removeChild(alinks[0]);
//                //                }
//                arr[i].appendChild(aNew);
//                //catalog = catalog + "<li><a href=\"#a" + i + "\">" + arr[i].firstChild + "</a></li>";
//                catalog = catalog + "<a href=\"#a" + i + "\">" + arr[i].firstChild.data + "</a><br/>";
//            }
//            //alert(arr[0].getElementsByTagName("a"));
//            //alert(input_file);
//            //alert(arr[0].html());
//            //            for (var i = 0; i < arr.Length; i++) {
//            //                alert(arr[i].text());
//            //            }   
            var content = $(document.getElementById('tangram_editor_iframe_MZ__w').contentWindow.document.body).html();
            //            document.getElementById("code").value = "<div>目录<br/>" + catalog + "</div>" + content;
            document.getElementById("code").value = content;

        }
    </script>
</html>
