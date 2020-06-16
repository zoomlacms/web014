﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_ModelGuide, App_Web_32dystoa" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>企业黄页管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">    
function Switch(obj)
{
    obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
    var nextDiv;
    if (obj.nextSibling)
    {
        if(obj.nextSibling.nodeName=="DIV")
        {
            nextDiv = obj.nextSibling;
        }
        else
        {
            if(obj.nextSibling.nextSibling)
            {
                if(obj.nextSibling.nextSibling.nodeName=="DIV")
                {
                    nextDiv = obj.nextSibling.nextSibling;
                }
            }
        }
        if(nextDiv)
        {
            nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none"; 
        }
    }
}
function OpenLink(lefturl,righturl)
{
    if(lefturl!="")
    {
        parent.frames["left"].location =lefturl;
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
<body id="Guidebody" style="margin: 0px; margin-top:1px; ">
<form id="formGuide" runat="server">
<div id="Div1">
<ul>
    <li id="Guide_top"><div id="Guide_toptext">企业黄页</div></li>
    <li id="Guide_main"><div id="Guide_box"><div class="guideexpand" onclick="Switch(this)">管理黄页</div></div>
        <div class="guide">
            <ul>                        
            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">  <a href="../Content/ModelManage.aspx?ModelType=4" target="main_right">黄页模型管理</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">  <a href="../Page/AddPageModel.aspx" target="main_right">添加黄页模型</a></li>
            </ul>
       </div>
    </li>
 </ul>
</div>
</form>
</body>
</html>
