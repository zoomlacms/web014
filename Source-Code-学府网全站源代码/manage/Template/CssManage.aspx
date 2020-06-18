﻿<%@ page language="C#" autoeventwireup="true" enableviewstatemac="false" inherits="ZoomLa.WebSite.Manage.Template.CssManage, App_Web_4ohnmn4w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>风格管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Popup.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('22')" title="帮助"></a></div>
  <%} %> 后台管理&gt;&gt;系统设置 &gt;&gt;<a href="CssManage.aspx">风格管理</a></div>
<table width="100%">
    <tr>
        <td align="left">
            当前目录：<asp:Label ID="lblDir" runat="server" Text="Label"></asp:Label>
        </td>
        <td align="right">
            <asp:Literal ID="LitParentDirLink" runat="server"></asp:Literal>
        </td>
    </tr>
</table>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr class="gridtitle" align="center" style="height: 25px;">
            <td width="45%">
                名称
            </td>
            <td width="10%">
                大小
            </td>
            <td width="10%">
                类型
            </td>
            <td >
                修改时间
            </td>
            <td>
                操作
            </td>
        </tr>
        <asp:Repeater ID="repFile" runat="server" OnItemCommand="repFileReName_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="left">
                        <img alt="" src=' <%# System.Convert.ToInt32(Eval("type")) == 1 ? "/App_Themes/AdminDefaultTheme/Images/Node/closefolder.gif" :"/App_Themes/AdminDefaultTheme/Images/Node/singlepage.gif" %>' />
                        <%# System.Convert.ToInt32(Eval("type")) != 1&&(Eval("content_type").ToString()=="jpg"||Eval("content_type").ToString()=="gif"||Eval("content_type").ToString()=="jpge"||Eval("content_type").ToString()=="png")?"<span onmouseover=\"ShowADPreview('" + GetFileContent(Eval("Name").ToString(), Eval("content_type").ToString()) + "')\" onmouseout=\"hideTooltip('dHTMLADPreview')\">":"<span>"%>
                        <a href="<%#isvideo(Eval("content_type").ToString())?""+DirPath+"/"+Eval("Name")+"\" rel=\"vidbox":(isimg(Eval("content_type").ToString())?"javascript:void(0);": (System.Convert.ToInt32(Eval("type")) == 1 ?  "CssManage.aspx?Dir=" + Server.UrlEncode(Request.QueryString["Dir"] +"/"+ Eval("Name").ToString()):"CssEdit.aspx?filepath="+ Server.UrlEncode(Request.QueryString["Dir"] +"/"+ Eval("Name").ToString()))) %>">
                            <%# Eval("Name") %></a></span>
                    </td>
                    <td align="center">
                        <%# GetSize(Eval("size").ToString()) %>
                    </td>
                    <td align="center">
                        <asp:HiddenField ID="HdnFileType" Value='<%#Eval("type") %>' runat="server" />
                        <%# System.Convert.ToInt32(Eval("type")) == 1 ? "文件夹" : Eval("content_type").ToString() + "文件" %>
                    </td>
                    <td align="center">
                        <%#Eval("lastWriteTime")%>
                    </td>
                    <td align="center">
                        &nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Name").ToString()%>'
                            CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "":"DownFiles" %>'
                            Enabled='<%# System.Convert.ToInt32(Eval("type")) == 1 ? false:true %>'>下载</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "CopyDir":"CopyFiles" %>'
                            CommandArgument='<%# Eval("Name").ToString()%>'>复制</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Name").ToString()%>'
                            CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "DelDir":"DelFiles" %>'
                            OnClientClick="return confirm('你确认要删除该文件夹或文件吗？')">删除</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div id="dHTMLADPreview" style="z-index: 1000; left: 0px; visibility: hidden; width: 10px; position: absolute; top: 0px; height: 10px">
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
        <tr class="tdbg">
            <td width="10%" align="center">
                <asp:Button ID="Button1" class="C_input" runat="server" Text="新建风格" OnClick="Button1_Click" />
            </td>
            <td width="10%" align="left">
                目录名称：
            </td>
            <td align="left" width="25%">
                <asp:TextBox ID="txtForderName" class="l_input" runat="server" Width="200"></asp:TextBox>
            </td>
            <td align="left" width="15%">
                <asp:Button ID="btnCreateFolder" class="C_input" runat="server" Text="创建目录" OnClick="btnCreateFolder_Click" />
                <asp:HiddenField ID="HdnPath" runat="server" />
            </td>
            <td width="30%">
                <asp:FileUpload ID="fileUploadTemplate" runat="server" CssClass="btn" />
            </td>
            <td width="10%">
                <asp:Button ID="btnTemplateUpLoad" class="C_input" runat="server" Text="上传风格" OnClientClick="return confirm('即将覆盖同名风格，是否继续？');" OnClick="btnTemplateUpLoad_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>