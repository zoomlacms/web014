﻿<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.UserShopManage.ShopNodeTree, App_Web_4wjlx4vs" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head id="Head1" runat="server">
    <title><%=lang.Get("m_StoreStyleTree_nav")%></title>
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
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
    <div id="Guide_back">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext">
                <%=lang.Get("m_ShopNodeTree_usermall")%></div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <asp:TreeView ID="tvNav" runat="server" ExpandDepth="0" ShowLines="True" 
                    EnableViewState="False" NodeIndent="10" height="800px" 
                    style="margin-right: 0px">
                    <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
                    <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
                    <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                    <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                </asp:TreeView>
            </div>
        </li>
     </ul>
    </div>
</form>
</body>
</html>
