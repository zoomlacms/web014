﻿<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.zone.SnsModelField, App_Web_cygfxagp" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt;<span>SNS空间管理</span> &gt;&gt; <a href="SnsModelManage.aspx">学校会员模型管理</a> &gt;&gt; <span>模型字段列表</span>&nbsp;&nbsp;&nbsp;当前模型:
        <asp:Literal ID="LModelName" runat="server"></asp:Literal>
	</div>
    <div class="clearbox"></div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border" align="center">
        <tr class="bgleft">
            <td align="left" style="height: 20px">
                当前模型:[<asp:Literal ID="Literal1" runat="server"></asp:Literal>] &nbsp;
                &nbsp;&nbsp; <a href="SnsAddModelField.aspx?ModelID=<%=Request.QueryString["ModelID"] %>">添加字段</a>                
            </td>
        </tr>
    </table>
    <div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr class="gridtitle" align="center" style="height:25px;">
            <td width="10%" height="20">
                <strong>字段名</strong></td>
            <td width="10%">
                <strong>字段别名</strong></td>
            <td width="10%">
                <strong>字段类型</strong></td>
            <td width="10%">
                <strong>字段级别</strong></td>
            <td width="10%">
                <strong>是否必填</strong></td>
            <td width="20%">
                <strong>排序</strong></td>                        
            <td width="30%">
                <strong>操作</strong></td>
        </tr>
        <asp:Repeater ID="RepSystemModel" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td>
                            <%#Eval("FieldName")%>
                        </td>
                        <td align=center>
                            <%#Eval("FieldAlias")%>
                        </td>
                        <td align=center>
                            <%# Eval("FieldType", "{0}")%>
                        </td>
                        <td align=center>
                            <font color="#339900">系统</font></td>
                        <td align=center>
                            <%# GetStyleTrue(Eval("IsNotNull", "{0}"))%>
                        </td>
                        <td>
                        </td>
                        <td align="center">
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="RepModelField" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td>
                            <%#Eval("FieldName")%>
                        </td>
                        <td align=center>
                            <%#Eval("FieldAlias")%>
                        </td>
                        <td align=center>
                            <%# GetFieldType(Eval("FieldType", "{0}"))%>
                        </td>
                        <td align=center>自定义</td>
                        <td align=center>
                            <%# GetStyleTrue(Eval("IsNotNull", "{0}"))%>
                        </td>
                        <td align=center>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("FieldID") %>'>上移</asp:LinkButton> | <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("FieldID") %>'>下移</asp:LinkButton>
                        </td>
                        <td align="center"><a href="UpdateModelField.aspx?FieldID=<%# Eval("FieldID") %>">修改</a> | <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%# Eval("FieldID") %>' OnClientClick="return confirm('确定删除此字段吗?\r\n\r\n删除字段后需要重新生成静态Html代码')">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
    </table>
    <div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
        <tr class="tdbg">
			<td width="30%">
			<asp:TextBox ID="TxtTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
            <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)" class="btn"/>
            <asp:Button ID="Button1" runat="server" Text="设定模板" OnClick="SetTemplate" /></td>			
		</tr>
    </table>
</form>
</body>
</html>
