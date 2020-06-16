﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_PubRecycler, App_Web_bufxqd3e" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>互动模块管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/calendar.js"></script>
<style>
.atCenter
{
	    top:12px;
        left:expression(document.body.offsetWidth-this.offsetWidth-100)px;
        position: absolute;
        text-align: right;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
     </div>
    <div class="clearbox">
    </div>
    <div class="column">
            <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
                <tr class="tdbg">
                    <td align="center" class="title" colspan="7" height="24" width="100%">
                        <b><a href="PubRecycler.aspx">互动模块管理</a></b></td>
                </tr>
                <tr class="tdbg" runat="server" id="PubNames">
                    <td align="center" height="24" width="5%">
                        <b>ID</b></td>
                        <td align="center" height="24" width="20%">
                        <b>模块名称</b>
                        </td>
                        <td align="center" height="24" width="10%">
                        <b>模块类型</b>
                        </td>
                        <td align="center" height="24" width="10%">
                        <b>信息类别</b>
                        </td>
                        <td align="center" height="24" width="10%">
                        <b>模型表名</b>
                        </td>
                        <td align="center" height="24" width="20%">
                        <b>调用标签</b>
                        </td>
                        <td align="center" height="24" width="25%">
                       <b>操作</b>
                        </td>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <tr class="tdbg" runat="server" id="Tr1">
                    <td align="center" height="24" width="5%">
                        <b><%#Eval("Pubid") %></b></td>
                        <td align="center" height="24" width="20%">
                        <%#Eval("Pubname") %>
                        </td>
                        <td align="center" height="24" width="10%">
                        <%#PubtypeName(Eval("Pubtype", "{0}"))%>
                        </td>
                        <td align="center" height="24" width="10%">
                        <%#GetClassName(Eval("PubClass", "{0}"))%>
                        </td>
                         <td align="center" height="24" width="10%">
                        <%#Eval("PubTableName")%>
                        </td>
                         <td align="center" height="24" width="20%">
                         <%#Eval("PubLoadstr")%>
                        </td>
                        <td align="center" height="24" width="25%">
                        <a href="pubinfo.aspx?menu=revert&id=<%#Eval("Pubid")%>&nid=<%=Request.QueryString["nid"] %>">还原</a> <a href="">管理信息</a> <a href="pubinfo.aspx?menu=edit&id=<%#Eval("Pubid")%>">修改</a> <a href="pubinfo.aspx?menu=Truedelete&id=<%#Eval("Pubid")%>&nid=<%=Request.QueryString["nid"] %>" onclick="return confirm('确实要彻底删除吗？');">彻底删除</a>
                        </td>
                </tr>
                </ItemTemplate>
                </asp:Repeater>
                <tr class="tdbg">
                <td class="tdbgleft" colspan="7" align="center">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
                </td>
            </tr>
       
            </table>
            </div>
    </form>
</body>
</html>
