<%@ page language="C#" autoeventwireup="true" inherits="manage_GuestBook_BkAlter, App_Web_wxbncm4g" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>逐浪百科-修改</title>
    <link href="/App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <link href="/App_Themes/Guest/editor.css" rel="stylesheet" type="text/css" />
    <script src="/JS/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/base.js"></script>
    <style type="text/css">
       
    </style>
</head>
<body style=" background:none">
    <form id="form1" runat="server">
    <div class="r_navigation"><%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('97')" title="帮助"></a></div>
  <%} %>
<%=lang.Get("M_SpecContent_manage")%> &gt;&gt;<%=lang.Get("M_Guest_BaikeMana")%> &gt;&gt;<a href="BkCheck.aspx"><%=lang.Get("M_Guest_BaikeClass")%></a>&gt;&gt;词条修改
</div>
        <div  style="padding: 5px;">
           <p><h2> <asp:Label runat="server" ID="lblTittle" Font-Bold="True" Font-Size="Larger" ForeColor="#3171AF">百科</asp:Label></h2></p>
        </div>
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
        <script src="/JS/Bkpopup.js" type="text/javascript"></script>
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
        <div >
        <div style="width: 773px;">
            <span style="color: #3171af; height: 30px; padding: 5px 5px;">参考资料</span></div>
        <div>
            <asp:TextBox runat="server" ID="txtReference" CssClass="x_input" TextMode="MultiLine"
                Width="773" Height="80"></asp:TextBox></div>
        <div style="width: 773px;">
            <span style="color: #3171af; height: 30px; padding: 5px 5px;">开放分类</span></div>
        <div>
            <asp:TextBox runat="server" ID="txtBtype" CssClass="x_input" TextMode="MultiLine"
                Width="773" Height="80"></asp:TextBox></div>
        <div style="width: 773px;">
            <span style="color: #3171af; height: 30px; padding: 5px 5px;">扩展阅读</span></div>
        <div>
            <asp:TextBox runat="server" ID="txtExtend" CssClass="x_input" TextMode="MultiLine"
                Width="773" Height="80"></asp:TextBox></div>
        <div style="display: none;" id="divSupplyment">
            <asp:TextBox runat="server" ID="txtSupplyment" CssClass="x_input" TextMode="MultiLine"
                Width="500" Height="120"></asp:TextBox></div>
        <div class="clear">
        </div>
        <div style="width: 500px;">
            <span style="float: right; padding-top: 20px;">
                <asp:Button runat="server" ID="btnSubmit" Text="提交" CssClass="C_input" OnClick="btnSubmit_Click"  OnClientClick="getCode()"/>&nbsp;&nbsp;&nbsp; 
            <asp:Button runat="server" ID="back" Text="返回" CssClass="C_input" 
                onclick="back_Click" /></span></div>
    </div>
    </div>
    <!-- 版权信息 -->
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
<script src="/JS/Bkcommon.js" type="text/javascript"></script>
    <script src="/JS/Bkcore.js" type="text/javascript"></script>
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
