﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Iplook_IplookGuide, App_Web_4dj34gd0" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>文件系统管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script type="text/javascript">
function Switch(obj) {
    obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
    var nextDiv;
    if (obj.nextSibling) {
        if (obj.nextSibling.nodeName == "DIV") {
            nextDiv = obj.nextSibling;
        }
        else {
            if (obj.nextSibling.nextSibling) {
                if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                    nextDiv = obj.nextSibling.nextSibling;
                }
            }
        }
        if (nextDiv) {
            nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
        }
    }
}
function OpenLink(lefturl, righturl) {
    if (lefturl != "") {
        parent.frames["left"].location = lefturl;
    }
    try {
            parent.MDIOpen(righturl); return false;
        } catch (Error) {
            parent.frames["main_right"].location = righturl;
        }
    }

    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
</script>

</head>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
    <form id="formGuide" runat="server">
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">
                    IP地址识别
                </div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)">
                        IP地址识别
                    </div>
                </div>
                <div class="guide">
                    <ul>
                     <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                            <a href="../Iplook/IPManage.aspx" target="main_right">分类管理</a>
                        </li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                            <a href="../Iplook/LookIp.aspx" target="main_right">IP地址管理</a>
                        </li>
                        <%--<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                            <a href="javascript:gotourl('Iplook/DownServer.aspx');">添加下载服务器</a>
                        </li>--%>
                       
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
